# yemeni_jops

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



MVVM Structure in Flutter

Model: تمثل البيانات (User, Order).

View: واجهة المستخدم، تعرض البيانات وتتفاعل معها.

ViewModel: منطق التطبيق، يتواصل مع Repository لتحديث View.

Repository: ينسّق بين DataSources و ViewModel، يقرر مصدر البيانات (Remote / Local).

Data: يجلب البيانات من API أو قاعدة بيانات محلية.

Services: خدمات تقنية مثل ApiService، AuthService، FileService.

Widgets: مكونات واجهة قابلة لإعادة الاستخدام.

Constants & Theme: قيم ثابتة وألوان وخطوط، يدعم Light/Dark Mode.

Routes: مسارات التطبيق، تربط المسار بالصفحة.