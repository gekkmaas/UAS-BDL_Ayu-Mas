# UAS-BDL_Ayu-Mas

## Basis Data Ticket System

1. Entity Diagram Relationhip



   Berikut adalah penjelasan ERD Ticket System
   Tabel Pengguna

user_id: ID pengguna yang unik
username: Nama pengguna
password_hash: Hash kata sandi
email: Alamat email
full_name: Nama lengkap
phone_number: Nomor telepon
Tabel Tiket

ticket_id: ID tiket yang unik
event_id: ID acara yang terkait dengan tiket
seat_number: Nomor kursi
price: Harga tiket
Tabel Pemesanan

booking_id: ID pemesanan yang unik
user_id: ID pengguna yang melakukan pemesanan
ticket_id: ID tiket yang dipesan
quantity: Jumlah tiket yang dipesan
booking_date: Tanggal pemesanan
Hubungan Antar Tabel

Tabel Pengguna dan Tabel Pemesanan terkait satu sama lain dengan hubungan satu ke banyak. Ini berarti bahwa satu pengguna dapat melakukan banyak pemesanan, tetapi setiap pemesanan hanya dapat dibuat oleh satu pengguna.

Tabel Tiket dan Tabel Pemesanan terkait satu sama lain dengan hubungan satu ke banyak. Ini berarti bahwa satu tiket dapat dipesan dalam banyak pemesanan, tetapi setiap pemesanan hanya dapat menyertakan satu tiket.

Proses Pemesanan Tiket

Berikut adalah proses pemesanan tiket dalam sistem ini:

Pengguna membuat akun atau masuk ke akun yang ada.
Pengguna memilih acara yang ingin mereka hadiri.
Pengguna memilih kursi yang mereka inginkan.
Pengguna memasukkan informasi pembayaran mereka.
Sistem memesan tiket dan mengirim email konfirmasi ke pengguna.

![image](https://github.com/gekkmaas/UAS-BDL_Ayu-Mas/assets/173997310/c9dec403-4bb4-47ef-a8ca-de7e6e04a8fd)


Deskripsi Project

Project ini bertujuan untuk mengembangkan sistem pemesanan tiket yang canggih dengan menggunakan basis data lanjutan. Sistem ini akan memungkinkan pengguna untuk memesan tiket untuk berbagai acara, seperti konser, pertunjukan teater, dan pertandingan olahraga. Sistem ini juga akan menyediakan fitur-fitur canggih seperti:

Pemesanan tiket online: Pengguna dapat memesan tiket secara online melalui situs web atau aplikasi mobile.
Pemilihan kursi: Pengguna dapat memilih kursi mereka sendiri saat memesan tiket.
Pembayaran online: Pengguna dapat membayar tiket mereka secara online menggunakan berbagai metode pembayaran.
Manajemen akun: Pengguna dapat membuat akun untuk melacak pemesanan mereka, melihat riwayat pemesanan mereka, dan memperbarui informasi akun mereka.
Laporan dan statistik: Sistem ini akan menghasilkan laporan dan statistik tentang penjualan tiket, yang dapat digunakan untuk membuat keputusan bisnis yang lebih baik.

Mekanisme Database

Sistem pemesanan tiket (ticketing system) yang menggunakan basis data umumnya terdiri dari beberapa mekanisme utama untuk mengelola data dan proses pemesanan tiket. Berikut adalah penjelasan mekanismenya:

1. Penyimpanan Data

Tabel Pengguna: Menyimpan informasi pengguna seperti nama, alamat email, nomor telepon, dan kata sandi.
Tabel Acara: Menyimpan informasi acara seperti judul, tanggal, waktu, lokasi, dan harga tiket.
Tabel Tiket: Menyimpan informasi tiket seperti ID tiket, ID acara, nomor kursi, dan status tiket (tersedia, terjual, atau dibatalkan).
Tabel Pemesanan: Menyimpan informasi pemesanan seperti ID pemesanan, ID pengguna, ID tiket, jumlah tiket yang dipesan, dan tanggal pemesanan.
Tabel Pembayaran: Menyimpan informasi pembayaran seperti ID pembayaran, ID pemesanan, metode pembayaran, dan jumlah pembayaran.
2. Proses Pemesanan Tiket

Pengguna Masuk atau Daftar: Pengguna masuk ke akun mereka yang sudah ada atau mendaftar akun baru dengan memasukkan informasi pribadi mereka.
Memilih Acara: Pengguna memilih acara yang ingin mereka hadiri dengan menelusuri daftar acara atau menggunakan fungsi pencarian.
Memilih Kursi: Pengguna memilih kursi yang mereka inginkan dari denah tempat duduk acara.
Memasukkan Informasi Pembayaran: Pengguna memasukkan informasi pembayaran mereka, seperti kartu kredit atau debit, untuk menyelesaikan pembelian tiket.
Konfirmasi Pemesanan: Sistem mengkonfirmasi pemesanan dan mengirimkan email konfirmasi ke pengguna yang berisi detail pemesanan mereka.
3. Manajemen Tiket

Menandai Tiket Terjual: Setelah pemesanan dikonfirmasi, tiket ditandai sebagai terjual di database.
Membatalkan Tiket: Pengguna dapat membatalkan tiket mereka sebelum acara dimulai. Tiket yang dibatalkan ditandai sebagai tersedia di database.
Memeriksa Status Tiket: Pengguna dapat memeriksa status tiket mereka di akun mereka.
4. Pelaporan dan Analisis

Laporan Penjualan Tiket: Sistem menghasilkan laporan penjualan tiket yang menunjukkan jumlah tiket yang terjual untuk setiap acara.
Analisis Data Pengguna: Sistem menganalisis data pengguna untuk memahami perilaku dan preferensi mereka.
Laporan Keuangan: Sistem menghasilkan laporan keuangan yang menunjukkan pendapatan dari penjualan tiket.
Mekanisme Keamanan

Enkripsi Kata Sandi: Kata sandi pengguna dienkripsi untuk melindungi mereka dari akses yang tidak sah.
Otentikasi Pengguna: Sistem memverifikasi identitas pengguna sebelum mengizinkan mereka mengakses akun atau memesan tiket.
Kontrol Akses: Pengguna hanya memiliki akses ke informasi yang relevan dengan akun mereka.

Penjelasan Trigger dan View
Trigger
![image](https://github.com/gekkmaas/UAS-BDL_Ayu-Mas/assets/173997310/9e22d5ed-f6ef-4430-88de-99f1f688a50a)
Trigger adalah mekanisme database yang secara otomatis diaktifkan ketika peristiwa tertentu terjadi, seperti memasukkan, memperbarui, atau menghapus data dalam tabel. Trigger dapat digunakan untuk menegakkan aturan bisnis, memelihara integritas data, dan mengotomatiskan tugas.

Berikut adalah beberapa contoh penggunaan trigger dalam sistem ticketing database:

Memicu email konfirmasi pemesanan: Ketika pemesanan baru dibuat, trigger dapat diaktifkan untuk secara otomatis mengirim email konfirmasi ke pengguna.
Memperbarui ketersediaan tiket: Ketika tiket dibeli, trigger dapat diaktifkan untuk secara otomatis memperbarui ketersediaan tiket di database.
Mencegah penjualan tiket ganda: Trigger dapat diaktifkan untuk mencegah penjualan tiket ganda untuk kursi yang sama.
Mencatat riwayat perubahan data: Trigger dapat digunakan untuk mencatat riwayat perubahan data, seperti ketika harga tiket diubah atau acara dibatalkan.
View
![image](https://github.com/gekkmaas/UAS-BDL_Ayu-Mas/assets/173997310/f6e30d41-f0d1-4e65-a8b7-e9b99cbe55cb)

View adalah tabel database virtual yang mewakili subset data dari satu atau beberapa tabel dasar. View dapat digunakan untuk menyederhanakan akses data, menyembunyikan kompleksitas data, dan memberikan kontrol akses data.


