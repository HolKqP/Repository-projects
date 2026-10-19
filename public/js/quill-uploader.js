/**
 * دالة لتهيئة Quill Editor مع رفع الصور عبر AJAX ومزامنة الحقل المخفي
 */
function initQuillEditor(editorContainerId, hiddenInputId, uploadUrl = '/upload-editor-image') {
    const container = document.getElementById(editorContainerId);
    const hiddenInput = document.getElementById(hiddenInputId);

    if (!container || !hiddenInput) return;

    // 1. تهيئة المحرر (تم التعديل لتمرير container مباشرة بدلاً من المسمى الثابت)

    const quill = new Quill(container, {
        theme: 'snow',
        modules: {
            syntax: false, // قم بتغييرها إلى false لإلغاء الاعتماد على highlight.js
            toolbar: [
                [{ 'header': [1, 2, 3, false] }],
                ['bold', 'italic', 'strike'],
                [{ 'align': [] }],
                [{ 'direction': 'rtl' }],
                ['blockquote', 'code-block'],
                [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                ['link', 'image']
            ]
        }
    });

    // ❌ احذف أو عطّل هذا السطر لأنه يقوم بعمل Focus قسري يسحب الصفحة للأسفل:
    // quill.format('direction', 'rtl');

    // ✔️ البديل الصحيح: ضبط اتجاه المحرر والمحاذاة عبر خصائص الـ DOM دون نقل المؤشر:
    quill.root.setAttribute('dir', 'rtl');
    quill.root.style.textAlign = 'right';

    // تحميل البيانات المسبقة إن وجدت (خاص بحالات التعديل Edit)
    if (hiddenInput.value.trim() !== '') {
        quill.root.innerHTML = hiddenInput.value;
    }

    // 2. تخصيص رفع الصور عبر AJAX
    quill.getModule('toolbar').addHandler('image', () => {
        const range = quill.getSelection(true);

        const input = document.createElement('input');
        input.setAttribute('type', 'file');
        input.setAttribute('accept', 'image/*');
        input.click();

        input.onchange = async () => {
            const file = input.files[0];
            if (file) {
                const formData = new FormData();
                formData.append('image', file);

                const csrfToken = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content');

                try {
                    const response = await fetch(uploadUrl, {
                        method: 'POST',
                        headers: {
                            'X-CSRF-TOKEN': csrfToken || '',
                            'Accept': 'application/json'
                        },
                        body: formData
                    });

                    if (!response.ok) {
                        const errorData = await response.json().catch(() => null);
                        console.error('تفاصيل خطأ السيرفر:', errorData || response.statusText);
                        alert('حدث خطأ أثناء رفع الصورة، تأكد من صيغة وحجم الملف.');
                        return;
                    }

                    const data = await response.json();

                    if (data.url) {
                        const insertIndex = (range && typeof range.index === 'number') ? range.index : quill.getLength();
                        quill.insertEmbed(insertIndex, 'image', data.url);
                        quill.setSelection(insertIndex + 1);
                    } else {
                        console.error('الاستجابة القادمة من السيرفر لا تحتوي على المفتاح "url":', data);
                    }
                } catch (error) {
                    console.error('فشل في الاتصال أثناء رفع الصورة:', error);
                }
            }
        };
    });

    // 3. ربط التحديث مع الـ Form الحاوي للمحرر
    const form = container.closest('form');
    if (form) {
        form.addEventListener('submit', function () {
            const content = quill.root.innerHTML;
            hiddenInput.value = (content === '<p><br></p>') ? '' : content;
        });
    }

    return quill;
}