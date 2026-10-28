SET FOREIGN_KEY_CHECKS = 0;
-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20260814.7ff5dd5b7e
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2026 at 11:28 AM
-- Server version: 8.4.6
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codequest`
--

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `answer_text`, `question_id`, `user_id`, `is_accepted`, `created_at`, `updated_at`) VALUES
(53, 'يمكنك استخدام with() في الاستعلام مثل: Question::with([\"answers.user\"]) لتجنب الاستعلامات المكررة.', 25, 12, 1, '2026-08-18 10:18:56', '2026-08-18 10:18:56'),
(54, 'الفرق الرئيسي أن var متغيرة على مستوى الدالة (Function-scoped) بينما let متغيرة على مستوى الكتلة (Block-scoped).', 26, 12, 1, '2026-08-18 10:18:56', '2026-08-18 10:18:56'),
(55, 'قم بإضافة التوجيه csrf@ داخل توجيهات Form في ملف الـ Blade لضمان إرسال رمز الحماية مع Request.', 27, 12, 1, '2026-08-18 10:18:56', '2026-08-18 10:18:56'),
(56, 'يُفضل إعداد Index للأعمدة التي تُستخدم بكثرة في شروط WHERE أو في عمليات الربط JOIN وعمليات الترتيب ORDER BY.', 28, 12, 1, '2026-08-18 10:18:56', '2026-08-18 10:18:56'),
(57, 'يفضل استخدام API Resources لتنسيق البيانات وتوحيد مخرجات JSON واستخدام الاستجابات المعيارية مثل 200 OK و 404 Not Found.', 29, 12, 1, '2026-08-18 10:18:56', '2026-08-18 10:18:56'),
(58, '<p>لحل مشكلة <strong>N+1 Query</strong> عند جلب الأسئلة مع إجاباتها والمستخدمين المرتبطين بهما، يجب استخدام التحيمل المسبق (<strong>Eager Loading</strong>) باستخدام الدالة <code>with()</code>، مع تحديد العلاقات متداخلة (Nested Relations) دفعة واحدة بدلاً من استدعائها داخل الحلقات التكرارية (<code>foreach</code>).</p><h3>الحل البرمجي الصحيح</h3><p>بفرض أن لديك نموذج <code>Question</code> يرتبط بـ <code>Answer</code> (علاقة <code>hasMany</code>)، وكلا النموذجين يرتبطان بـ <code>User</code> (علاقة <code>belongsTo</code>):</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">use App\\Models\\Question;</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">// جلب الأسئلة مع إجاباتها والمستخدمين بكفاءة (3 استعلامات فقط)</div><div class=\"ql-code-block\">$questions = Question::with([</div><div class=\"ql-code-block\">    \'user\',          // صاحب السؤال</div><div class=\"ql-code-block\">    \'answers.user\'   // الإجابات وصاحب كل إجابة</div><div class=\"ql-code-block\">])-&gt;get();</div></div>', 25, 12, 0, '2026-08-20 18:08:04', '2026-08-20 18:08:04'),
(59, '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">public class Main {</div><div class=\"ql-code-block\">    public static void main(String[] args) {</div><div class=\"ql-code-block\">        String name = \"CodeQuest\";</div><div class=\"ql-code-block\">        int totalAnswers = 42;</div><div class=\"ql-code-block\">        System.out.println(\"مرحباً بك في \" + name);</div><div class=\"ql-code-block\">        System.out.println(\"عدد الإجابات: \" + totalAnswers);</div><div class=\"ql-code-block\">    }</div><div class=\"ql-code-block\">}</div></div>', 25, 12, 0, '2026-08-21 05:23:58', '2026-08-21 05:23:58'),
(60, '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">const user = { name: \"عمر\", role: \"Developer\" };</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">function getGreeting(person) {</div><div class=\"ql-code-block\">    return `أهلاً بك ${person.name}، بصفتك ${person.role}!`;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">console.log(getGreeting(user));</div></div>', 25, 12, 0, '2026-08-21 05:25:08', '2026-08-21 05:25:08'),
(62, '<p><br></p>', 31, 12, 1, '2026-08-21 17:39:50', '2026-08-24 03:44:35'),
(63, '<p>اتنملارنغؤت<img src=\"http://localhost/codequest/public/storage/editor/5QNE87qCrLXJxZQaBWl1h2Zk7g0cRK7FzrJGufOB.png\"></p>', 31, 12, 0, '2026-08-21 17:40:12', '2026-08-24 03:44:35'),
(80, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;</p>\n', 23, 13, 1, '2026-09-01 07:44:46', '2026-09-02 00:28:37'),
(81, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;&#1588;&#1587;&#1610;</p>\n', 23, 13, 0, '2026-09-01 07:45:02', '2026-09-01 07:45:02'),
(84, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;</p>\n', 36, 12, 0, '2026-09-02 05:32:43', '2026-09-02 05:32:43'),
(85, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;</p>\n', 36, 12, 0, '2026-09-02 05:39:52', '2026-09-02 05:39:52'),
(86, '<?xml encoding=\"utf-8\" ?><p>asdas</p>\n', 36, 12, 0, '2026-09-02 05:44:30', '2026-09-02 05:44:30'),
(87, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;</p>\n', 36, 12, 0, '2026-09-02 05:59:56', '2026-09-02 05:59:56'),
(88, '<?xml encoding=\"utf-8\" ?><p>&#1605;&#1605;</p>\n', 36, 12, 0, '2026-09-02 06:00:46', '2026-09-02 06:00:46'),
(89, '<?xml encoding=\"utf-8\" ?><p>&#1588;&#1587;&#1610;</p>\n', 36, 12, 0, '2026-09-02 06:10:17', '2026-09-02 06:10:17'),
(95, '<p>sdfsadf</p>', 36, 12, 0, '2026-09-10 08:36:28', '2026-09-10 08:36:28'),
(96, '<p><br /></p>', 36, 12, 1, '2026-09-10 08:36:42', '2026-09-25 16:57:06'),
(99, '<h2>حل هذه المشكلة في بيئة <strong>Laragon</strong> مع <strong>Laravel</strong> غالباً ما يعود إلى أحد الأسباب التالية، يمكنك اتباع الخطوات بالترتيب لحلها:</h2><ol><li data-list=\"ordered\"><span></span> التأكد من حالة خدمة MySQL والمنفذ (Port)</li></ol><p>افتح واجهة <strong>Laragon</strong> وتأكد من أن خدمة MySQL تعمل ولونها أخضر بجانب زر \"Stop\".</p><p>انتبه لرقم المنفذ بجانب MySQL؛ في حال كان لديك برنامج آخر مثل (XAMPP أو MySQL Workbench) قد يتغير المنفذ تلقائياً من <code>3306</code> إلى <code>3307</code> أو غيره لتفادي التعارض.</p><p>إذا كان المنفذ مختلفاً، قم بتعديله في ملف <code>.env</code>:</p><div class=\"ql-code-block-container\"><div class=\"ql-code-block\">DB_PORT=3307 # أو الرقم الظاهر في واجهة Laragon</div></div><p>2. التبديل بين <code>127.0.0.1</code> و <code>localhost</code></p><p>في بعض أنظمة التشغيل، يفشل الاتصال عبر الـ IP المحلي أو يواجه مشاكل في التوجيه عبر IPv6، جرب تعديل السطر التالي في <code>.env</code>:</p><div class=\"ql-code-block-container\"><div class=\"ql-code-block ql-align-right\">DB_HOST=localhost</div></div><p>أو العكس (إذا كان <code>localhost</code>، اجعله <code>127.0.0.1</code>).</p><h3>3. التحقق من وجود قاعدة البيانات</h3><ol><li data-list=\"bullet\"><span></span>افتح أداة إدارة القواعد المرفقة مع لاراغون بالضغط على <strong>Database</strong> (تفتح افتراضياً برنامج HeidiSQL).</li><li data-list=\"bullet\"><span></span>سجل الدخول:</li><li data-list=\"bullet\"><span></span><strong>المستخدم:</strong> <code>root</code></li><li data-list=\"bullet\"><span></span><strong>كلمة المرور:</strong> (اتركها فارغة)</li><li data-list=\"bullet\"><span></span><strong>المنفذ:</strong> <code>3306</code></li><li data-list=\"bullet\"><span></span>تأكد من أن اسم قاعدة البيانات المكتوب في خانة <code>DB_DATABASE</code> تم إنشاؤه بالفعل، لأن لارافيل لن ينشئه تلقائياً إذا لم يكن موجوداً.</li></ol><h3>4. التحقق من تفعيل إضافة PDO في PHP</h3><ol><li data-list=\"bullet\"><span></span>اضغط بزر الفأرة الأيمن في أي مكان داخل واجهة <strong>Laragon</strong>.</li><li data-list=\"bullet\"><span></span>اذهب إلى: <strong>PHP</strong> &gt; <strong>Extensions</strong>.</li><li data-list=\"bullet\"><span></span>تأكد من وجود علامة صح بجانب:</li><li data-list=\"bullet\"><span></span><code>pdo_mysql</code></li><li data-list=\"bullet\"><span></span><code>mysqli</code></li></ol><p><br /></p>', 38, 12, 0, '2026-10-18 00:21:41', '2026-10-18 00:21:41');

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('codequest-cache-viewed_question_32_by_ip_::1', 'b:1;', 1787556368);

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Software & Web Development', 'كل ما يتعلق بتطوير البرمجيات وتطبيقات الويب والمواقع.', '2026-08-10 11:27:36', '2026-09-18 09:28:47'),
(2, 'Mobile App Development', 'تطوير تطبيقات الهواتف الذكية للأنظمة المختلفة مثل Android و iOS.', '2026-08-10 11:27:36', '2026-09-18 07:35:26'),
(4, 'DevOps & Cloud Systems', 'إدارة الحوسبة السحابية، الخوادم، ودورات نشر البرمجيات.', '2026-08-10 11:27:36', '2026-08-10 11:27:36'),
(5, 'Cybersecurity & Networking', 'الأمن السيبراني، حماية الأنظمة، وإدارة شبكات الحاسوب.', '2026-08-10 11:27:36', '2026-08-10 11:27:36'),
(6, 'CodeQuest Community & Lounge', 'مساحة النقاشات العامة، الفعاليات، ومجتمع منصة CodeQuest.', '2026-08-10 11:27:36', '2026-08-10 11:27:36'),
(53, 'علم وتحليل البيانات', 'علم وتحليل البيانات', '2026-09-17 05:23:12', '2026-09-17 08:46:59'),
(54, 'Data Science', 'علم وتحليل البيانات', '2026-09-18 04:04:22', '2026-09-18 04:04:22');

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `user_id`, `commentable_type`, `commentable_id`, `created_at`) VALUES
(1, 'dhkdpfhk', 12, 'App\\Models\\Answer', 62, '2026-08-23 06:23:14'),
(2, 'هات', 12, 'App\\Models\\Answer', 62, '2026-08-23 06:23:33'),
(3, 'سؤال جيد', 12, 'App\\Models\\Question', 32, '2026-08-23 07:43:36'),
(4, 'اجابتك بيض', 13, 'App\\Models\\Answer', 72, '2026-08-29 09:16:09'),
(5, 'اجابتك بيض', 13, 'App\\Models\\Answer', 72, '2026-08-29 09:17:52'),
(6, 'اجا', 13, 'App\\Models\\Answer', 72, '2026-08-29 09:25:25'),
(7, 'اجا', 13, 'App\\Models\\Answer', 73, '2026-08-29 09:25:37'),
(8, 'سبياب', 13, 'App\\Models\\Answer', 68, '2026-08-29 09:26:32'),
(9, 'هرق', 13, 'App\\Models\\Answer', 54, '2026-08-29 09:27:15'),
(10, 'كل هوا', 13, 'App\\Models\\Answer', 72, '2026-08-29 17:38:46'),
(11, 'كل', 13, 'App\\Models\\Answer', 72, '2026-08-29 17:39:24'),
(12, 'شسي', 13, 'App\\Models\\Answer', 74, '2026-08-29 17:40:41'),
(13, 'hg.', 13, 'App\\Models\\Question', 32, '2026-08-31 05:27:28'),
(14, 'hg.', 13, 'App\\Models\\Question', 32, '2026-08-31 05:27:28'),
(15, 'asdasd', 13, 'App\\Models\\Answer', 65, '2026-08-31 05:48:11'),
(16, 'شسي', 12, 'App\\Models\\Answer', 72, '2026-08-31 08:33:24'),
(17, 'سس', 12, 'App\\Models\\Answer', 67, '2026-08-31 08:34:48'),
(19, 'بب', 12, 'App\\Models\\Answer', 80, '2026-09-02 00:28:04'),
(21, 'شمبانزي', 12, 'App\\Models\\Question', 36, '2026-09-02 08:06:32'),
(22, 'h', 12, 'App\\Models\\Question', 36, '2026-09-02 08:39:08'),
(23, 'سسس', 13, 'App\\Models\\Answer', 75, '2026-09-04 03:39:41'),
(24, 'سشي', 13, 'App\\Models\\Question', 32, '2026-09-04 03:51:07'),
(25, 'سيشسي', 13, 'App\\Models\\Answer', 64, '2026-09-04 03:53:32'),
(26, 'شسي', 13, 'App\\Models\\Question', 32, '2026-09-04 04:04:23'),
(27, 'شسي', 13, 'App\\Models\\Answer', 90, '2026-09-04 04:04:36'),
(28, 'شسي', 13, 'App\\Models\\Question', 32, '2026-09-04 04:06:41'),
(29, 'شسي', 13, 'App\\Models\\Question', 32, '2026-09-04 04:06:45'),
(30, 'hasdasd', 12, 'App\\Models\\Answer', 85, '2026-09-05 06:49:47'),
(32, 'ghghj', 12, 'App\\Models\\Answer', 96, '2026-09-10 08:36:56'),
(33, 'fghfdg', 12, 'App\\Models\\Answer', 66, '2026-09-10 19:50:02'),
(34, 'fgh', 12, 'App\\Models\\Question', 33, '2026-09-10 19:52:16'),
(37, 'شسي', 12, 'App\\Models\\Answer', 84, '2026-09-30 04:36:24'),
(38, 'حدد المشكلة', 12, 'App\\Models\\Question', 38, '2026-09-30 07:54:08');

--
-- Dumping data for table `migrations`
--



--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `type`, `message`, `notifiable_id`, `notifiable_type`, `is_read`, `created_at`) VALUES
(37, 12, 'info', 'قام holk alOmari بالإعجاب بـ سؤالك.', NULL, NULL, 1, '2026-08-29 09:10:24'),
(38, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 35, 'App\\Models\\Question', 1, '2026-08-29 09:26:50'),
(39, 12, 'comment', 'قام holk alOmari بالتعليق على إجابتك.', 54, 'App\\Models\\Answer', 1, '2026-08-29 09:27:15'),
(40, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 35, 'App\\Models\\Question', 1, '2026-08-29 17:37:48'),
(41, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 35, 'App\\Models\\Question', 0, '2026-08-29 17:38:12'),
(42, 16, 'comment', 'قام holk alOmari بالتعليق على إجابتك.', 74, 'App\\Models\\Answer', 0, '2026-08-29 17:40:41'),
(43, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-08-31 05:27:28'),
(44, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-08-31 05:27:28'),
(45, 12, 'comment', 'قام holk alOmari بالتعليق على إجابتك.', 65, 'App\\Models\\Answer', 0, '2026-08-31 05:48:11'),
(46, 12, 'answer', 'قام holk alOmari بالإجابة على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-08-31 05:48:22'),
(47, 13, 'comment', 'قام عمر العمري بالتعليق على إجابتك.', 72, 'App\\Models\\Answer', 1, '2026-08-31 08:33:24'),
(48, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 68, 'App\\Models\\Answer', 1, '2026-08-31 08:34:20'),
(49, 13, 'comment', 'قام عمر العمري بالتعليق على إجابتك.', 67, 'App\\Models\\Answer', 1, '2026-08-31 08:34:48'),
(50, 13, 'vote', 'قام عمر العمري بالإعجاب بـ سؤالك.', 36, 'App\\Models\\Question', 1, '2026-08-31 08:47:47'),
(51, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ سؤالك.', 36, 'App\\Models\\Question', 1, '2026-08-31 08:47:50'),
(52, 13, 'vote', 'قام عمر العمري بالإعجاب بـ سؤالك.', 36, 'App\\Models\\Question', 1, '2026-08-31 08:47:51'),
(53, 13, 'comment', 'قام عمر العمري بالتعليق على سؤالك.', 36, 'App\\Models\\Question', 1, '2026-08-31 08:47:54'),
(54, 12, 'answer', 'قام holk alOmari بالإجابة على سؤالك.', 23, 'App\\Models\\Question', 0, '2026-09-01 07:44:46'),
(55, 12, 'answer', 'قام holk alOmari بالإجابة على سؤالك.', 23, 'App\\Models\\Question', 1, '2026-09-01 07:45:02'),
(56, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 1, '2026-09-01 08:30:50'),
(57, 13, 'comment', 'قام عمر العمري بالتعليق على إجابتك.', 80, 'App\\Models\\Answer', 1, '2026-09-02 00:28:04'),
(58, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"sdtrnudbrtbsedt\".', 80, 'App\\Models\\Answer', 1, '2026-09-02 00:28:37'),
(59, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 1, '2026-09-02 05:27:30'),
(60, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 05:32:43'),
(61, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 05:39:52'),
(62, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 05:44:30'),
(63, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 05:59:56'),
(64, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 06:00:46'),
(65, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 06:10:17'),
(66, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 07:29:39'),
(67, 13, 'comment', 'قام عمر العمري بالتعليق على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 08:03:49'),
(68, 13, 'comment', 'قام عمر العمري بالتعليق على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 08:06:32'),
(69, 13, 'comment', 'قام عمر العمري بالتعليق على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-02 08:39:08'),
(70, 12, 'answer', 'قام holk alOmari بالإجابة على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 02:07:06'),
(71, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:23'),
(72, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:25'),
(73, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:25'),
(74, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:26'),
(75, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:27'),
(76, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:29'),
(77, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:31'),
(78, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:39'),
(79, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:11:46'),
(80, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:16:11'),
(81, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:16:12'),
(82, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:16:23'),
(83, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:16:25'),
(84, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:17:15'),
(85, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:17:25'),
(86, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:19:30'),
(87, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:19:31'),
(88, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:19:32'),
(89, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:19:43'),
(90, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:24:59'),
(91, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:25:06'),
(92, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:38:28'),
(93, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:38:42'),
(94, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:38:47'),
(95, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:39:03'),
(96, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:39:47'),
(97, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:42:35'),
(98, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:42:40'),
(99, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:50:28'),
(100, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:50:49'),
(101, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 03:51:07'),
(102, 12, 'comment', 'قام holk alOmari بالتعليق على إجابتك.', 64, 'App\\Models\\Answer', 0, '2026-09-04 03:53:32'),
(103, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:03:48'),
(104, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:03:55'),
(105, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:03:59'),
(106, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:04:24'),
(107, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:06:41'),
(108, 12, 'comment', 'قام holk alOmari بالتعليق على سؤالك.', 32, 'App\\Models\\Question', 0, '2026-09-04 04:06:45'),
(109, 13, 'vote', 'قام عمر العمري بالإعجاب بـ سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-05 04:40:20'),
(110, 12, 'vote', 'قام holk alOmari بالإعجاب بـ إجابتك.', 89, 'App\\Models\\Answer', 1, '2026-09-05 05:46:17'),
(111, 12, 'vote', 'قام holk alOmari بالإعجاب بـ إجابتك.', 88, 'App\\Models\\Answer', 1, '2026-09-05 05:46:18'),
(112, 12, 'vote', 'قام holk alOmari بالإعجاب بـ إجابتك.', 87, 'App\\Models\\Answer', 1, '2026-09-05 05:46:20'),
(113, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ إجابتك.', 87, 'App\\Models\\Answer', 1, '2026-09-05 05:46:27'),
(114, 12, 'vote', 'قام holk alOmari بالإعجاب بـ إجابتك.', 87, 'App\\Models\\Answer', 1, '2026-09-05 05:46:28'),
(115, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 73, 'App\\Models\\Answer', 0, '2026-09-10 04:51:44'),
(116, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 70, 'App\\Models\\Answer', 0, '2026-09-10 05:04:02'),
(117, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:24:23'),
(118, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:24:50'),
(119, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:25:24'),
(120, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:31:48'),
(121, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:31:50'),
(122, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:03'),
(123, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:07'),
(124, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:09'),
(125, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:09'),
(126, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:11'),
(127, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:13'),
(128, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:49:16'),
(129, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:37'),
(130, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:38'),
(131, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:38'),
(132, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:39'),
(133, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:39'),
(134, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:41'),
(135, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:41'),
(136, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:50:41'),
(137, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:52:53'),
(138, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:52:58'),
(139, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:52:59'),
(140, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:52:59'),
(141, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:52:59'),
(142, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:53:00'),
(143, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:53:00'),
(144, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:53:00'),
(145, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:53:00'),
(146, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:39'),
(147, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:40'),
(148, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:41'),
(149, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:41'),
(150, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:42'),
(151, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:42'),
(152, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:43'),
(153, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:43'),
(154, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:43'),
(155, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:54:44'),
(156, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:58:29'),
(157, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:58:30'),
(158, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:58:31'),
(159, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:35'),
(160, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:36'),
(161, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:37'),
(162, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:37'),
(163, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:38'),
(164, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:39'),
(165, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:40'),
(166, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:40'),
(167, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:41'),
(168, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 05:59:42'),
(169, 13, 'comment', 'قام عمر العمري بالتعليق على إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:00:44'),
(170, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:00:46'),
(171, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:00'),
(172, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:01'),
(173, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:01'),
(174, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:02'),
(175, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:03'),
(176, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:03'),
(177, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:04'),
(178, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:01:05'),
(179, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:31'),
(180, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:36'),
(181, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:39'),
(182, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:40'),
(183, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:41'),
(184, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:42'),
(185, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:42'),
(186, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:43'),
(187, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:44'),
(188, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:07:44'),
(189, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:08:43'),
(190, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:08:46'),
(191, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:08:55'),
(192, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:08:58'),
(193, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:08:59'),
(194, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:09:01'),
(195, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:09:03'),
(196, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:09:05'),
(197, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:09:06'),
(198, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 06:09:08'),
(199, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:11:03'),
(200, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:11:09'),
(201, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:26'),
(202, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:29'),
(203, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:34'),
(204, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:36'),
(205, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:49'),
(206, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:51'),
(207, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:14:59'),
(208, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:15:02'),
(209, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:15:04'),
(210, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:15:06'),
(211, 13, 'answer_status', 'تم رفض إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:50'),
(212, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:53'),
(213, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:54'),
(214, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:54'),
(215, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:55'),
(216, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:55'),
(217, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:55'),
(218, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:56'),
(219, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:56'),
(220, 13, 'answer_status', 'تم قبول إجابتك على السؤال: \"asfaweq\".', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:16:59'),
(221, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:41'),
(222, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:42'),
(223, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:43'),
(224, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:43'),
(225, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:43'),
(226, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:44'),
(227, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:20:44'),
(228, 13, 'vote', 'قام عمر العمري بالإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 07:29:52'),
(229, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-10 08:36:28'),
(230, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 36, 'App\\Models\\Question', 0, '2026-09-10 08:36:42'),
(231, 13, 'comment', 'قام عمر العمري بالتعليق على إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 19:50:02'),
(232, 13, 'vote', 'قام عمر العمري بعدم الإعجاب بـ إجابتك.', 66, 'App\\Models\\Answer', 0, '2026-09-10 19:52:42'),
(233, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 37, 'App\\Models\\Question', 0, '2026-09-11 04:14:54'),
(234, 13, 'answer', 'قام عمر العمري بالإجابة على سؤالك.', 37, 'App\\Models\\Question', 0, '2026-09-11 04:16:56'),
(235, 12, 'comment', ' قام المشرف holk alOmari بتعديل تعليقك.', NULL, 'App\\Models\\Comment', 0, '2026-09-11 05:08:23'),
(236, 12, 'update_question', ' قام المشرف holk alOmari بتحديث سؤالك.', 33, 'App\\Models\\Question', 1, '2026-09-11 05:16:22'),
(237, 12, 'update_question', ' قام المشرف holk alOmari بحذف سؤالك.', 30, 'App\\Models\\Question', 1, '2026-09-11 05:17:34'),
(238, 12, 'answer', 'قام المشرف CodeQuest بتعديل إجابتك على السؤال: \"sad\".', 82, 'App\\Models\\Answer', 1, '2026-09-25 16:40:50'),
(239, 12, 'comment', 'قام CodeQuest بالتعليق على إجابتك.', 82, 'App\\Models\\Answer', 1, '2026-09-25 16:41:03'),
(240, 12, 'answer_deleted', 'قام المشرف CodeQuest بحذف إجابتك على السؤال: \"sad\".', 83, 'App\\Models\\Answer', 1, '2026-09-25 16:42:55'),
(241, 12, 'answer_status', 'تم قبول إجابتك على السؤال: \"sad\".', 96, 'App\\Models\\Answer', 1, '2026-09-25 16:57:06'),
(242, 12, 'comment', ' قام المشرف holk alOmari بحذف  تعليقك.', NULL, 'App\\Models\\Comment', 0, '2026-09-25 16:57:23'),
(243, 12, 'comment', ' قام المشرف holk alOmari بحذف  تعليقك.', NULL, 'App\\Models\\Comment', 1, '2026-09-25 16:57:29'),
(244, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 38, 'App\\Models\\Question', 0, '2026-10-18 00:23:08'),
(245, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ إجابتك.', 99, 'App\\Models\\Answer', 0, '2026-10-18 00:23:10'),
(246, 12, 'vote', 'قام holk alOmari بالإعجاب بـ إجابتك.', 57, 'App\\Models\\Answer', 0, '2026-10-18 00:27:11'),
(247, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 29, 'App\\Models\\Question', 0, '2026-10-18 00:27:13'),
(248, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 38, 'App\\Models\\Question', 0, '2026-10-25 17:25:25'),
(249, 12, 'vote', 'قام holk alOmari بالإعجاب بـ سؤالك.', 38, 'App\\Models\\Question', 0, '2026-10-25 17:25:46'),
(250, 12, 'vote', 'قام holk alOmari بعدم الإعجاب بـ سؤالك.', 38, 'App\\Models\\Question', 0, '2026-10-25 17:25:55');

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('holk.max.qp.12345@gmail.com', '$2y$12$c1UR3UgOPxgdiLeNv/XDn.Ieyl9qdlwaO91sxdfv6ymbroBqtOKOW', '2026-09-29 05:58:56'),
('omar.alOmari.12345.o.i@gmail.com', '$2y$12$pFCHlYS67nL022xTZe03ZeCHWheG.bEAHWeALHiuZe9oJEkejvTTm', '2026-09-06 07:17:11');

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `title`, `description`, `user_id`, `category_id`, `views_count`, `created_at`, `updated_at`, `is_answered`, `is_faq`) VALUES
(21, 'sdtrnudbrtbsedt', '<p>sayhbwrtu<img src=\"http://localhost/codequest/public/storage/editor/JDbGqmSD9Bpi1XUULoGYmJxwgqsjvtiU6isRX2zM.png\"></p>', 12, 1, 1, '2026-08-10 09:15:18', '2026-09-05 05:42:04', 0, 0),
(22, 'sdtrnudbrtbsedt', '<p>sayhbwrtu<img src=\"http://localhost/codequest/public/storage/editor/JDbGqmSD9Bpi1XUULoGYmJxwgqsjvtiU6isRX2zM.png\"></p>', 12, 1, 0, '2026-08-10 09:29:38', '2026-08-10 09:29:38', 0, 0),
(23, 'sdtrnudbrtbsedt', '<p>sayhbwrtu<img src=\"http://localhost/codequest/public/storage/editor/JDbGqmSD9Bpi1XUULoGYmJxwgqsjvtiU6isRX2zM.png\"></p>', 12, 1, 15, '2026-08-10 09:31:01', '2026-09-04 07:09:54', 0, 0),
(24, 'How to fix \"Target class [PostController] does not exist\" in Laravel 10?', '<h2>I\'m migrating my project to Laravel 10 and facing an issue with my web routes. When I try to access the route <code>http://localhost/posts</code>, I get the following error:</h2><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Illuminate\\Contracts\\Container\\BindingResolutionException: Target class [PostController] does not exist.</div><div class=\"ql-code-block\"><br></div></div><h2>Here is my <code>routes/web.php</code> configuration:</h2><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">PHP</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\" data-language=\"true\">Route::get(\'/posts\', \'PostController@index\');</div></div><p>My controller is located at <code>app/Http/Controllers/PostController.php</code> and the namespace inside the file is:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">PHP</div><div class=\"ql-code-block\">namespace App\\Http\\Controllers;</div></div><h2><strong>What I\'ve tried:</strong></h2><h2>Ran <code>php artisan route:clear</code> and <code>php artisan config:clear</code>.</h2><h2>Checked for typos in the controller name and namespace.</h2><h2>How can I properly register this route in Laravel 10 without getting this error?</h2><p><br></p>', 12, 1, 7, '2026-08-14 15:58:28', '2026-09-25 16:48:20', 0, 0),
(25, 'كيف يمكن إيقاف التكرار في استعلامات Eager Loading في لارافل؟', 'أواجه مشكلة N+1 Query أثناء جلب الأسئلة مع الإجابات وربطها بالمستخدمين، ما هي الطريقة الصحيحة لمنعها؟', 12, 1, 19, '2026-08-18 10:18:44', '2026-10-18 00:26:32', 1, 0),
(26, 'ما الفرق بين استخدام let و var في لغة JavaScript؟', 'أريد فهم الفرق من ناحية Scope والـ Hoisting وتأثيرهما على الأداء أثناء كتابة السكربتات.', 12, 1, 15, '2026-08-18 10:18:44', '2026-10-18 00:26:42', 1, 0),
(27, 'ما هي خطوات إعداد الحماية باستخدام CSRF Token في Laravel؟', 'عند إرسال نموذج HTML يظهر لي خطأ 419 Page Expired، كيف يمكن حل هذه المشكلة بالكامل؟', 12, 5, 23, '2026-08-18 10:18:44', '2026-08-25 06:00:44', 1, 0),
(28, 'كيف يمكن تحسين استعلامات قواعد البيانات في MySQL باستخدام Indexes؟', 'لدي جدول يحتوي على آلاف السجلات والاستعلام أصبح بطيئاً جداً، كيف أختار الأعمدة المناسبة للـ Indexing؟', 12, 1, 31, '2026-08-18 10:18:44', '2026-10-01 06:04:04', 1, 0),
(29, 'ما هي أفضل الممارسات لتصميم RESTful APIs باستخدام Laravel؟', 'أقوم بإنشاء API لتطبيق جوال وأريد معرفة الطريقة القياسية لتنسيق الـ Responses والـ Status Codes.', 12, 2, 13, '2026-08-18 10:18:44', '2026-10-18 00:27:05', 1, 0),
(31, 'how to print in py', '<?xml encoding=\"utf-8\" ?><p><br></p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">print(\'php welcome domain)</div></div><p><br></p><p><img src=\"http://localhost/codequest/public/storage/editor/QXYIeIvogw64MHQKJgvJUZBTAD5UDK9HlDN75325.png\"></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>sadwaew</p><p>\r\n</p><p>ss</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>\n', 12, 1, 44, '2026-08-21 11:40:59', '2026-10-25 17:23:45', 0, 0),
(34, 'حل مشكلة اتصال قاعدة البيانات', '<?xml encoding=\"utf-8\" ?><p><br></p><p><br></p><p>1.&#1581;&#1604; &#1605;&#1588;&#1603;&#1604;&#1577; </p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">            // &#1580;&#1604;&#1576; &#1589;&#1575;&#1581;&#1576; &#1575;&#1604;&#1605;&#1581;&#1578;&#1608;&#1609;</div><div class=\"ql-code-block\">            $author = $item-&gt;user ?? User::find($item-&gt;user_id);</div></div><p>\r\n</p><p>\r\n</p>\n', 12, 1, 14, '2026-08-27 08:17:23', '2026-10-25 17:23:30', 0, 0),
(36, 'sad', '<p><br /></p><p>asd</p><p>\r\n</p>', 13, 4, 67, '2026-08-31 05:55:23', '2026-10-01 05:56:42', 0, 0),
(37, 'س', '<p>\r\n</p>', 13, 1, 15, '2026-09-08 04:30:52', '2026-09-30 04:09:58', 0, 0),
(38, 'مشكلة عدم القدرة على الاتصال بقاعدة البيانات MySQL في سيرفر Laragon مع مشروع Laravel', '<h2>السلام عليكم ورحمة الله،</h2><h2>أواجه مشكلة في مشروعي المبني على إطار العمل Laravel عند محاولة الاتصال بقاعدة البيانات عبر بيئة التطوير المحلية <strong>Laragon</strong>، حيث تظهر لي رسالة خطأ تفيد بفشل الاتصال (Database Connection Error / Connection Refused).</h2><h2><strong>الخطوات التي قمت بها:</strong></h2><ol><li data-list=\"ordered\"><span></span>التأكد من تشغيل خادم MySQL داخل برنامج Laragon والضغط على \"Start All\".</li><li data-list=\"ordered\"><span></span>محاولة ضبط إعدادات ملف البيئة <code>.env</code> كالتالي:</li></ol><div class=\"ql-code-block-container\"><div class=\"ql-code-block\">DB_CONNECTION=mysql</div><div class=\"ql-code-block\">DB_HOST=127.0.0.1</div><div class=\"ql-code-block\">DB_PORT=3306</div><div class=\"ql-code-block\">DB_DATABASE=اسم_قاعدة_البيانات</div><div class=\"ql-code-block\">DB_USERNAME=root</div><div class=\"ql-code-block ql-align-right\">DB_PASSWORD=</div></div><ol><li data-list=\"ordered\"><span></span>تشغيل أمر مسح التخزين المؤقت للإعدادات: <code>php artisan config:clear</code>.</li></ol><h2><strong>المشكلة:</strong> على الرغم من ذلك، لا يزال المشروع غير قادر على الوصول إلى قاعدة البيانات.</h2><h2>هل المشكلة تتعلق برقم المنفذ (Port) أو بصلاحيات المستخدم <code>root</code>، أم هناك إعداد إضافي يجب تفعيله في Laragon؟</h2><h2>أرجو المساعدة في توضيح سبب المشكلة وكيفية حلها. وشكرًا لكم.</h2>', 12, 1, 5, '2026-09-30 07:53:28', '2026-10-25 17:23:56', 0, 0);

--
-- Dumping data for table `question_tag`
--

INSERT INTO `question_tag` (`question_id`, `tag_id`) VALUES
(24, 1),
(25, 1),
(31, 1),
(34, 1),
(38, 1),
(24, 2),
(25, 2),
(27, 2),
(29, 2),
(34, 2),
(38, 2),
(23, 3),
(24, 3),
(26, 3),
(31, 3),
(36, 3),
(24, 4),
(28, 4),
(34, 4),
(37, 4),
(38, 4),
(27, 5),
(23, 7),
(24, 7),
(29, 7),
(36, 7),
(23, 9),
(28, 9),
(36, 9),
(38, 9),
(27, 10);

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `user_id`, `reportable_type`, `reportable_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 'App\\Models\\Question', 36, 'spam - التفاصيل: ffb', 'resolved', '2026-09-01 08:42:18', '2026-09-20 17:51:59'),
(2, 12, 'App\\Models\\Question', 36, 'spam - التفاصيل: asd', 'pending', '2026-09-03 05:19:05', '2026-09-03 05:19:05'),
(3, 13, 'App\\Models\\Question', 32, 'abuse - التفاصيل: س', 'pending', '2026-09-04 03:07:51', '2026-09-04 03:07:51'),
(4, 13, 'App\\Models\\Question', 32, 'spam - التفاصيل: سس', 'pending', '2026-09-04 03:11:20', '2026-09-04 03:11:20'),
(5, 13, 'App\\Models\\Question', 32, 'spam - التفاصيل: س', 'pending', '2026-09-04 03:19:39', '2026-09-04 03:19:39'),
(6, 13, 'App\\Models\\Question', 32, 'abuse - التفاصيل: سي', 'resolved', '2026-09-04 04:04:10', '2026-09-20 17:51:19'),
(7, 12, 'App\\Models\\Question', 38, 'other - التفاصيل: غير دقيق', 'pending', '2026-09-30 07:54:25', '2026-09-30 07:54:25');

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('60Web5InLljIBSCUyIGPK4CMR3QDcguyRKP0RSFb', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0', 'eyJfdG9rZW4iOiIzeTBrVXRaQzBENmpOV1lXV296cTZUQUUyd3VDcUNnVGtZbzA5TnEzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvY29kZXF1ZXN0XC9wdWJsaWNcL2Rhc2hib2FyZFwvbW9kZXJhdG9yXC91c2VycyIsInJvdXRlIjoidXNlcnMuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTN9', 1792959966),
('sOV94bcanJ9Ihp4gpvFHDaViLIBTKC1nKnGecRiD', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36 Edg/155.0.0.0', 'eyJfdG9rZW4iOiJrOG05bk1FM3Blb3JkV0w3QkNQV1VTZm5pd3RHRVVqcGtGdTVyZkdHIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9jb2RlcXVlc3RcL3B1YmxpY1wvcXVlc3Rpb25zXC8yOSIsInJvdXRlIjoicXVlc3Rpb25zLnNob3cifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEzfQ==', 1792294033),
('ZsGXTRQscUr2CjTKLMiksPPIVCb9SoUFfHMOMtJU', 13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0', 'eyJfdG9rZW4iOiJDdUFnSnJ4MGMwQXdtUGtFWHZ1UUVvMHVKTkFJTGdVOXlRaGY0RmtkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvY29kZXF1ZXN0XC9wdWJsaWMiLCJyb3V0ZSI6ImhvbWUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MTN9', 1793095551);

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'CodeQuest', '2026-09-20 09:22:51', '2026-09-29 05:36:22'),
(2, 'support_email', 'codequest123321@gmail.com', '2026-09-20 09:22:51', '2026-09-25 16:24:49'),
(3, 'maintenance_mode', '0', '2026-09-20 09:22:51', '2026-09-25 17:00:08'),
(4, 'n8n_webhook_url', 'http://localhost:5678/webhook/1b49b54c-e8db-4acc-a4c3-d4d228df3eeb', '2026-09-20 11:57:38', '2026-09-20 16:48:08'),
(5, 'system_prompt', 'You are a helpful assisأنت مساعد برمجي ذكي لمنصة CodeQuest.\r\nأجب على أسئلة المستخدم وأخطاء الكود بأسلوب محادثة طبيعي ومرتب باللغة العربية.\r\n\r\nشروط التنسيق:\r\n- يمنع منعاً باتاً إرجاع ردود بصيغة JSON.\r\n- اكتب الشرح أولاً بأسلوب واضح وبسيط.\r\n- أدرج الأكواد البرمجية المصححة دائماً داخل بلوك كود منسق (Code Block) مع تحديد اللغة، مثل:\r\n```php\r\n// الكود هناtant', '2026-09-20 11:57:38', '2026-09-20 16:27:38');

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'لغة برمجة نصية مخصصة لتطوير تطبيقات الويب Backend.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(2, 'Laravel', 'إطار عمل محبوب ومبني بلغة PHP لتطوير الويب السريع.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(3, 'JavaScript', 'لغة البرمجة الأساسية لتطوير واجهات الويب والتفاعلية.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(4, 'MySQL', 'نظام إدارة قواعد البيانات العلائقية الأكثر استخداماً.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(5, 'HTML/CSS', 'لغاتي الهيكلة والتنسيق الأساسيتين لبناء صفحات الويب.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(6, 'Vue.js', 'إطار عمل واجهات أملس ومناسب لبناء واجهات المستخدم.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(7, 'API', 'واجهات برمجة التطبيقات لربط الأنظمة والخدمات ببعضها.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(8, 'Git', 'نظام تتبع وإدارة النسخ البرمجية وسجل التغييرات.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(9, 'Database', 'كل ما يتعلق بتصميم واستعلامات وتحسين قواعد البيانات.', '2026-08-10 11:18:47', '2026-08-10 11:18:47'),
(10, 'Security', 'المواضيع المتعلقة بأمن المعلومات وحماية التطبيقات من الثغرات.', '2026-08-10 11:18:47', '2026-08-10 11:18:47');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `provider_name`, `provider_id`, `role`, `reputation_points`, `avatar`, `about_me`, `location`, `remember_token`, `created_at`, `updated_at`, `title`, `email_notifications`, `is_active`) VALUES
(1, 'Test User', 'test@example.com', '2026-08-03 09:31:24', '$2y$12$.t0ts/pS2gZFMIVhdYZdieFj3yDTaNyml5K0UDIa9XV4yqlgKCs.S', NULL, NULL, 'admin', 100, 'avatars/Ufuoj8YEh5IoHvb4q7l8UnRZPEi5hq4E4KcRIS1E.png', 'انا انسان طبيعي\r\nانا انسان طبيعي\r\nانا انسان طبيعي\r\nانا انسان طبيعيانا انسان طبيعي\r\nانا انسان طبيعيانا انسان طبيعي\r\nانا انسان طبيعيانا انسان طبيعيانا انسان طبيعيانا انسان طبيعي\r\nانا انسان طبيعيانا انسان طبيعيانا انسان طبيعي\r\nانا انسان طبيعي', 'عدن\\كريتر', '5cuUgY9xOY357I8MSJQpxqtQmhSIDZe8NLTiFjzjnR1HCZ4a6PXTHNTVbr6B', '2026-08-03 09:31:25', '2026-09-19 16:06:06', 'Full stack', 0, 1),
(2, 'Prof. Verna Runolfsdottir', 'lvandervort@example.net', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'nEB4QUmzTt', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(3, 'Anya Williamson', 'nabshire@example.com', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'HZIZ1FzJ73', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(4, 'omar laravel', 'kellie87@example.com', '2026-08-03 09:31:25', '$2y$12$S1a5I/P8/2FX5qOW257e6elw0BIpD8uXhVSw7/dgrkOuGRZRZ1t/i', NULL, NULL, 'user', 0, 'avatars/zNKe5wTv9wGZ96G4SucqDg8TzswIuO8NDFChAAl4.png', 'انا انسان طبيعي', 'عدن\\كريتر', 'zeFbK1FjMqEQgdMutxdCKDR9pgpQGKmD9SWXSV5uSeTCyESWOtonyiU40z2A', '2026-08-03 09:31:25', '2026-08-03 12:04:04', 'Full Stack Developer', 0, 1),
(5, 'Ocie Langworth', 'kenna01@example.net', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, '8yHtvbixAB', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(6, 'Johnny Ziemann', 'dpadberg@example.org', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'oCuvHdBLvS', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(7, 'Mr. Efren Hartmann V', 'arlene.kassulke@example.net', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'bWlR86Wi3l', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(8, 'General Wilkinson DVM', 'shanny.herman@example.com', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'YweiuztFsx', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(9, 'Polly Strosin', 'earline.friesen@example.com', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'jixbZXpyTb', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(10, 'Anita Kilback PhD', 'ddicki@example.org', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'UYm8QLxKuM', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(11, 'Alessia Brekke MD', 'weimann.bette@example.org', '2026-08-03 09:31:25', '$2y$12$sIVc7lozOxqwuIT4.uh.1uYgeON8pKnhK70GSNo5ps06OGdXNLsE2', NULL, NULL, 'user', 0, NULL, NULL, NULL, 'w6sp7WFZQr', '2026-08-03 09:31:25', '2026-08-03 09:31:25', NULL, 0, 1),
(12, 'عمر العمري', 'omar.alOmari.12345.o.i@gmail.com', NULL, '$2y$12$N7uHAOMm6QRNuVQQlPm25uAJbnCYYtD1Pz2WgU92vwBfJrzoMzuyO', 'google', '109841296692409475127', 'admin', 45, 'avatars/kXwtVqS516klaYjj0RCLkQKdOa5sZdan3JutrKUD.png', '&lt;?xml encoding=\"utf-8\" ?&gt;&lt;?xml encoding=\"utf-8\" ?&gt;<p>.1 <br /><br />صاحب المشروع \r\n.2 \r\n.3</p>\r\n', 'عدن\\كريتر', 'XJVsHvv1gVgBYkBQmYrJtUrK4NGFlzpxLOJoGZbthwZ4lIZI4xQjKCkf6Eji', '2026-08-07 16:50:34', '2026-10-25 17:26:02', 'المشرف العام', 0, 1),
(13, 'holk alOmari', 'holk.max.qp.12345@gmail.com', NULL, '$2y$12$hCgTGhG8kV9t03Ji2h08M.DnaSaCwIzXQ7UmPA5KOlzzXc8JtB.EG', 'google', '117106200649845564649', 'admin', 670, NULL, '&lt;?xml encoding=\"utf-8\" ?&gt;<p>المبرمج الاسطو<br />رة</p>\r\n', NULL, 'tWIitZq7RKc4gd7bsrdLqfRr6c1yHlyc0dGafbRIlOsOsaWbQMIwsQLhpaZO', '2026-08-08 17:38:01', '2026-09-21 13:41:17', NULL, 1, 1),
(14, 'Mosa gg', 'mosa.gg.123445@gmail.com', NULL, NULL, 'google', '112836436395188666420', 'user', 0, NULL, NULL, NULL, 's3Z7rmYNqN9sRpmW3TY5uX3WAytncOJ1dbMr8tGn4UKPga5BXXbWRsBHEzNG', '2026-08-08 17:48:36', '2026-08-08 17:48:36', NULL, 0, 1),
(15, 'omar alomari', 'omaqwe@gmail.com', NULL, '$2y$12$jw9xn0kGoxAGnh/28UhJgOIKZGS7t/hIZjGfcN1ZhN3T.p1MMWvLi', NULL, NULL, 'user', 0, NULL, NULL, NULL, NULL, '2026-08-26 17:17:15', '2026-09-21 13:41:22', NULL, 0, 1),
(16, 'oamrqwe', 'asd@gmail.com', NULL, '$2y$12$.ezTX1E.e00NNRz7haiE0OwzDc1ulbhMD2iQvzsYA39Y/vHADsTa2', NULL, NULL, 'user', 0, NULL, NULL, NULL, NULL, '2026-08-28 04:18:26', '2026-08-28 04:18:26', NULL, 0, 1),
(17, 'omar alomari', 'asdasd@asd.com', '2026-09-21 15:27:27', '$2y$12$1fRK71c2AB1rvzLVmVdh5.J.PAykUpAuU60tf1zRMQ5vCW1ohjPI.', NULL, NULL, 'user', 0, NULL, NULL, NULL, NULL, '2026-09-21 15:23:56', '2026-09-21 15:27:27', NULL, 1, 1),
(18, 'عمر العمري', 'admin@com', NULL, '$2y$12$Nsc8XEdALA9Tu/Tq.psKK.71rk813oTLgvYEw8XRhqyZqz53fz7wG', NULL, NULL, 'user', 0, NULL, NULL, NULL, NULL, '2026-09-21 15:35:26', '2026-09-21 15:35:26', NULL, 1, 1),
(19, 'CodeQuest', 'codequest123321@gmail.com', NULL, NULL, 'google', '100913031559450948165', 'admin', 0, NULL, NULL, NULL, 'XwPTU8U6xCBXig3QyVPSE9yhyz2wXjKV2uVQVkEsRwASu0WlRzPM58e1NfYx', '2026-09-25 16:23:26', '2026-09-25 16:23:26', NULL, 1, 1);

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `user_id`, `votable_type`, `votable_id`, `vote_type`, `created_at`, `updated_at`) VALUES
(4, 13, 'App\\Models\\Question', 33, 'down', '2026-08-26 19:13:28', '2026-08-28 04:12:42'),
(17, 13, 'App\\Models\\Answer', 64, 'up', '2026-08-26 19:33:42', '2026-08-26 19:33:42'),
(18, 13, 'App\\Models\\Answer', 65, 'up', '2026-08-26 19:33:44', '2026-08-26 19:33:44'),
(19, 13, 'App\\Models\\Question', 31, 'up', '2026-08-26 19:33:59', '2026-08-26 19:33:59'),
(20, 13, 'App\\Models\\Answer', 62, 'up', '2026-08-26 19:34:01', '2026-08-26 19:34:01'),
(22, 13, 'App\\Models\\Answer', 53, 'down', '2026-08-26 19:39:40', '2026-08-26 19:39:40'),
(23, 13, 'App\\Models\\Question', 25, 'up', '2026-08-26 19:39:42', '2026-08-26 19:40:02'),
(26, 13, 'App\\Models\\Question', 34, 'down', '2026-08-27 09:03:43', '2026-08-28 04:12:28'),
(28, 13, 'App\\Models\\Question', 35, 'down', '2026-08-28 04:12:34', '2026-08-29 17:38:12'),
(31, 16, 'App\\Models\\Answer', 73, 'down', '2026-08-28 04:19:18', '2026-08-28 04:19:18'),
(32, 16, 'App\\Models\\Answer', 72, 'down', '2026-08-28 04:19:19', '2026-08-28 04:19:19'),
(33, 16, 'App\\Models\\Answer', 71, 'down', '2026-08-28 04:19:20', '2026-08-28 04:19:20'),
(38, 12, 'App\\Models\\Answer', 68, 'up', '2026-08-31 08:34:20', '2026-08-31 08:34:20'),
(40, 12, 'App\\Models\\Question', 36, 'up', '2026-09-02 07:29:39', '2026-09-05 04:40:25'),
(50, 13, 'App\\Models\\Question', 32, 'up', '2026-09-04 04:03:48', '2026-09-04 04:03:59'),
(51, 13, 'App\\Models\\Answer', 89, 'up', '2026-09-05 05:46:17', '2026-09-05 05:46:17'),
(52, 13, 'App\\Models\\Answer', 88, 'up', '2026-09-05 05:46:18', '2026-09-05 05:46:18'),
(53, 13, 'App\\Models\\Answer', 87, 'up', '2026-09-05 05:46:20', '2026-09-05 05:46:28'),
(54, 12, 'App\\Models\\Answer', 73, 'up', '2026-09-10 04:51:44', '2026-09-10 04:51:44'),
(55, 12, 'App\\Models\\Answer', 70, 'up', '2026-09-10 05:04:02', '2026-09-10 05:04:02'),
(68, 13, 'App\\Models\\Answer', 99, 'down', '2026-10-18 00:23:10', '2026-10-18 00:23:10'),
(69, 13, 'App\\Models\\Answer', 57, 'up', '2026-10-18 00:27:11', '2026-10-18 00:27:11'),
(70, 13, 'App\\Models\\Question', 29, 'down', '2026-10-18 00:27:13', '2026-10-18 00:27:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET FOREIGN_KEY_CHECKS = 1;