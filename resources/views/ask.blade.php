@extends('layouts.app')

@php
    $isEdit = isset($question) && $question->exists;
@endphp

@section('content')
    <div class="container py-4 my-2" dir="rtl">
        <div class="row justify-content-center">
            <div class="col-12 col-md-11 col-lg-10 col-xl-9">

                <!-- Header -->
                <div class="text-center mb-4">
                    <h2 class="fw-bold text-primary mb-2">
                        {{ $isEdit ? 'تعديل السؤال' : 'طرح سؤال جديد' }}
                    </h2>
                    <p class="text-muted fs-6">
                        {{ $isEdit ? 'تحديث تفاصيل سؤالك والوسوم الخاصة به' : 'شارك مشكلتك البرمجية مع مجتمع كود كويست (CodeQuest) واحصل على إجابات دقيقة' }}
                    </p>
                </div>

                <!-- Form Card -->
                <div class="card shadow-sm border-0 rounded-4 mb-5">
                    <div class="card-body p-3 p-sm-4 p-md-5">
                        <form id="questionForm"
                            action="{{ $isEdit ? route('question.update', $question->question_id) : route('ask.store') }}"
                            method="POST" enctype="multipart/form-data">
                            @csrf
                            @if ($isEdit)
                                @method('PUT')
                            @endif

                            <!-- Question Title -->
                            <div class="form-floating mb-4">
                                <input type="text" class="form-control rounded-3" id="titleInput" name="title"
                                    placeholder="عنوان السؤال" required maxlength="100"
                                    value="{{ old('title', $question->title ?? '') }}">
                                <label for="titleInput">عنوان السؤال</label>
                            </div>

                            <!-- Main Category -->
                            <div class="form-floating mb-4">
                                <select class="form-select rounded-3" id="categorySelect" name="cat_id" required>
                                    <option value="" disabled
                                        {{ !old('cat_id', $question->category_id ?? null) ? 'selected' : '' }}>-- اختر
                                        التصنيف الرئيسي --</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}"
                                            {{ old('cat_id', $question->category_id ?? '') == $category->id ? 'selected' : '' }}>
                                            {{ $category->name }}
                                        </option>
                                    @endforeach
                                </select>
                                <label for="categorySelect">التصنيف الرئيسي</label>
                            </div>

                            <!-- Tags Input -->
                            <div class="mb-4">
                                <label for="tagsInput" class="form-label fw-bold">الوسوم (Tags) *</label>
                                <input name="tags[]" id="tagsInput" class="form-control" value="">
                                <div class="form-text text-muted">أضف حتى 5 وسوم لتوصيف سؤالك بشكل أفضل.</div>
                            </div>

                            <!-- Editor Container -->
                            <div class="mb-4">
                                <label class="form-label fw-bold">تفاصيل السؤال</label>
                                <div id="question-editor" dir="ltr"></div>
                                <input type="hidden" name="description" id="questionInput"
                                    value="{{ old('description', $question->description ?? '') }}">
                            </div>

                            <!-- Action Buttons Container (Flexbox) -->
                            <div
                                class="d-flex flex-column-reverse flex-sm-row align-items-stretch align-items-sm-center justify-content-between gap-3 pt-3 border-top mt-4">
                                @if ($isEdit)
                                    <button type="button" class="btn btn-outline-danger btn-lg px-4 rounded-3 fw-bold"
                                        data-bs-toggle="modal" data-bs-target="#delete">
                                        <i class="bi bi-trash me-1"></i> حذف السؤال
                                    </button>
                                @else
                                    <div></div>
                                @endif

                                <button type="submit"
                                    class="btn btn-{{ $isEdit ? 'warning' : 'primary' }} btn-lg px-5 rounded-3 fw-bold shadow-sm">
                                    {{ $isEdit ? 'تحديث السؤال' : 'نشر السؤال' }}
                                </button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    @if ($isEdit)
        {{-- 🔴 موديل تحقق قبل الحذف --}}
        <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content border-0 shadow">
                    <div class="modal-header bg-light">
                        <h5 class="modal-title fw-bold text-danger" id="deleteLabel">
                            <i class="bi bi-exclamation-triangle-fill me-1"></i> تأكيد الحذف
                        </h5>
                        <button type="button" class="btn-close ms-0 me-auto" data-bs-dismiss="modal"
                            title="إغلاق"></button>
                    </div>
                    <div class="modal-body">
                        <p class="text-muted mb-0">هل أنت متأكد من رغبتك في حذف هذا السؤال نهائياً؟ لا يمكن التراجع عن هذا
                            الإجراء.</p>
                    </div>
                    <div class="modal-footer bg-light d-flex justify-content-end gap-2">
                        <button type="button" class="btn btn-secondary btn-sm px-3" data-bs-dismiss="modal">إلغاء</button>
                        <form action="{{ route('question.destroy', $question->question_id) }}" method="POST"
                            class="m-0">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm px-3 fw-bold">نعم، احذف</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection

@push('css')
    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.snow.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />

    <style>
        .tagify {
            border-radius: 0.5rem;
        }

        /* تحسينات صندوق Quill لمنع الاقتصاص ومط ارتفاع المحرر */
        .ql-toolbar.ql-snow {
            border-top-left-radius: 0.5rem;
            border-top-right-radius: 0.5rem;
            background-color: #fafafa;
        }

        .ql-container.ql-snow {
            border-bottom-left-radius: 0.5rem;
            border-bottom-right-radius: 0.5rem;
            font-size: 1rem;
        }

        /* تحديد ارتفاع حقيقي لمنطقة الكتابة حتى يظهر المحرر والأزرار تحته مباشرة */
        #question-editor .ql-editor {
            min-height: 180px;
            max-height: 350px;
            overflow-y: auto;
        }
    </style>
@endpush

@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/@yaireo/tagify"></script>
    <script src="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.js"></script>
    <script src="{{ asset('js/quill-uploader.js') }}"></script>

    <script>
        // 1. Tagify Setup
        const input = document.querySelector('#tagsInput');
        const selectedTags = @json($isEdit ? $question->tags->map(fn($tag) => ['id' => $tag->tag_id, 'value' => $tag->name]) : []);

        const tagify = new Tagify(input, {
            maxTags: 5,
            placeholder: "اكتب للبحث عن الوسوم...",
            tagTextProp: 'value',
            valueField: 'id',
            whitelist: @json($tags->map(fn($tag) => ['id' => $tag->tag_id, 'value' => $tag->name])),
            dropdown: {
                maxItems: 10,
                enabled: 1,
                closeOnSelect: false
            }
        });

        if (selectedTags.length > 0) {
            tagify.addTags(selectedTags);
        }

        // 2. Quill Setup
        document.addEventListener("DOMContentLoaded", function() {
            const editor = initQuillEditor(
                'question-editor',
                'questionInput',
                "{{ route('upload.editor.image') }}"
            );

            const existingContent = {!! json_encode(old('description', $question->description ?? '')) !!};

            if (existingContent && editor && !editor.root.innerHTML.trim()) {
                editor.root.innerHTML = existingContent;
            }

            // ضمان بقاء الصفحة في الأعلى عند الفتح
            window.scrollTo({
                top: 0,
                behavior: 'instant'
            });
        });
    </script>
@endpush
