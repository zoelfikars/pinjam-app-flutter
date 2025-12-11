# 📱 Aplikasi Pengajuan Pinjaman Mobile App

## 1\. Prasyarat

  * **Flutter SDK** (Versi stabil)
  * **Android Studio / VS Code** (Dengan plugin Flutter)
  * **Backend Service** (Go API) harus sudah berjalan di `http://localhost:[PORT_BACKEND]`.

## 2\. Instalasi dan Setup

### 2.1. Clone Repositori

```bash
git clone https://github.com/zoelfikars/pinjam-app-flutter.git
cd [NAMA DIREKTORI FLUTTER]
```

### 2.2. Install Dependencies

```bash
flutter pub get
```

## 3\. Konfigurasi Backend URL

Karena Anda menjalankan *backend* di *localhost* dan *frontend* di emulator, Anda harus menggunakan alamat IP khusus untuk *host* loopback *developer*.

### A. Tentukan Port Backend

Lihat file `.env` proyek Go Anda untuk menemukan port yang digunakan (misalnya, `SERVER_PORT=8095`).

### B. Ubah `APP_URL`

1.  Buka file konfigurasi environment Flutter Anda (misalnya: `lib/core/res/app_constant.dart` atau file `.env` jika digunakan).

2.  Ubah variabel `APP_URL` menjadi:

    ```dart
    // Contoh jika port backend Anda adalah 8095
    const String APP_URL = "http://10.0.2.2:8095"; 
    ```

> **Catatan:**
>
>   * **`10.0.2.2`** adalah alias khusus untuk `localhost` (127.0.0.1) dari dalam Emulator Android.
>   * Jika Anda menggunakan Emulator iOS/Simulator, gunakan `http://localhost:[PORT]`.

## 4\. Menjalankan Aplikasi

Pastikan Anda memiliki Emulator atau perangkat fisik yang terhubung dan berjalan.

### A. Run dari Terminal

```bash
flutter run
```

### B. Run dari IDE

Tekan tombol **Run** (segitiga hijau) di IDE Anda (Android Studio/VS Code).