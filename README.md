# Local Data Storage

A new Flutter project.

## Dependencys 

```bash
dev_dependencies:
  build_runner: ^2.0.0
  hive_generator: ^2.0.0

```
## Getting Started
This package is a wrapper for the native SharedPreferences Android and iOS platform, it provides a simple way
to store key-value pairs in your app's local storage. The values stored using this prefer
ences are not guaranteed to be persistent between application restarts. If you need
persistence you should use a database instead.
The plugin API will stay as simple as possible. All keys must be strings and there are no
restrictions on the size of the keys or values. Values can be any type that can
be converted to JSON. For example, you can save complex types like Integers, Floats
and even objects by converting them to JSON first.
**Please note:** This plugin does not provide any functionality beyond what is provided by the standard

## build hive
1. Add dependency `hive` & `hive_flutter` into pubspec.
```bash
dependencies:
  hive: ^2.0.4
  hive_flutter: ^1.1.0

```
2. add `hive` and `build_runner` into pubspec.yaml file
```bash
flutter pub run build_runner build

```
## Perbedaan Hive dan Shared Preferences
Hive adalah sebuah pustaka yang berfungsi untuk 
menyimpan data ke dalam device lokal user dengan cara yang lebih
efisien daripada shared preference. Sedangkan shared prefrence
merupakan cara penyimpanan data yang mudah digunakan
untuk menyimpan data di device lokal user. Beberapa perbedaan
antara keduanya antara lain :
- **Efficiency** - Hive memiliki performa yang lebih ba
lu jau dari shared preference karena menggunakan format
binary untboxing (membaca data tanpa membuat objek).
- **Persistence** - SharedPreference tidak menyimpan data
ke device lokal secara permanen walaupun aplikasi sudah
di shutdown. Namun sharedpreference tidak memberikan garansi
bagaimana data tersebut tetap disimpan. Sedangkan hive
secara default menyimpan data ke device lokal dan tidak
disimpan jika aplikasi telah di shutdown. Tapi hive juga
dapat menyimpan data ke device external melalui box

Tipe Data dan Kompleksitas:

Shared Preferences: Biasanya digunakan untuk menyimpan tipe data sederhana seperti string, integer, dan boolean. Tidak efisien untuk menyimpan data yang kompleks atau besar.
Hive Database: Didesain untuk menyimpan dan mengambil objek yang lebih kompleks dan tipe data kustom. Cocok untuk menyimpan data yang kompleks dan memiliki performa yang baik.
Performa:

Shared Preferences: Cocok untuk data sederhana dan kecil. Mungkin mengalami kinerja yang buruk jika digunakan untuk menyimpan sejumlah besar data kompleks.
Hive Database: Lebih efisien dan dapat menangani lebih baik volume data yang besar. Menggunakan penyimpanan lokal dan memiliki performa yang tinggi, terutama untuk aplikasi Flutter.
Setup dan Inisialisasi:

Shared Preferences: Memerlukan sedikit konfigurasi dan inisialisasi. Mudah digunakan dan lebih cepat diimplementasikan.
Hive Database: Memerlukan lebih banyak konfigurasi terkait model data dan adapter Hive. Inisialisasi Hive dapat memakan waktu lebih lama, terutama jika melibatkan penggunaan generator kode.
Adaptasi Model Data:

Shared Preferences: Tidak memerlukan adaptasi model data khusus.
Hive Database: Memerlukan pembuatan model data yang diadaptasi dengan menambahkan annotasi Hive dan mendaftarkan adapter.
Listener dan Real-time Updates:

Shared Preferences: Tidak memiliki dukungan bawaan untuk mendengarkan perubahan data. Perlu diimplementasikan secara manual.
Hive Database: Menyediakan ValueListenable untuk mendengarkan perubahan data secara real-time.
Cross-Platform:

Shared Preferences: Mendukung Flutter dan banyak platform lainnya.
Hive Database: Dikembangkan khusus untuk Flutter, tetapi juga mendukung beberapa platform lainnya melalui Hive.
Ukuran Aplikasi:

Shared Preferences: Tidak menambah banyak ukuran aplikasi karena ukuran dependensinya kecil.
Hive Database: Menambah ukuran aplikasi karena memerlukan dependensi yang lebih besar.