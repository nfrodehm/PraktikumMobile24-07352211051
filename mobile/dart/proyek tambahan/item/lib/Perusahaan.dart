// bab 2 tgs2  running yg ini
import 'Karyawan.dart';
import 'KaryawanKontrak.dart';
import 'KaryawanTetap.dart';
import 'ProdukDigital.dart';
import 'FaseProyek.dart';

class Perusahaan {
  List<Karyawan> karyawanAktif = [];
  List<Karyawan> karyawanNonAktif = [];
  FaseProyek faseProyek = FaseProyek.perencanaan;
  DateTime? tanggalMulaiProyek;

  void tambahKaryawan(Karyawan karyawan) {
    if (karyawanAktif.length < 20) {
      karyawanAktif.add(karyawan);
    } else {
      print('Tidak dapat menambahkan karyawan. Batas maksimal karyawan aktif tercapai.');
    }
  }
  void resignKaryawan(Karyawan karyawan) {
    if (karyawanAktif.remove(karyawan)) {
      karyawanNonAktif.add(karyawan);
      print('${karyawan.nama} telah menjadi karyawan non-aktif.');
    }
  }

  void mulaiProyek() {
    tanggalMulaiProyek = DateTime.now();
  }

  void lanjutKeFaseBerikutnya() {
    switch (faseProyek) {
      case FaseProyek.perencanaan:
        if (karyawanAktif.length >= 5) {
          faseProyek = FaseProyek.pengembangan;
          print('Proyek beralih ke fase Pengembangan.');
        } else {
          print('Tidak dapat melanjutkan. Dibutuhkan minimal 5 karyawan aktif untuk fase Pengembangan.');
        }
        break;
      case FaseProyek.pengembangan:
        if (tanggalMulaiProyek != null &&
            DateTime.now().difference(tanggalMulaiProyek!).inDays > 45) {
          faseProyek = FaseProyek.evaluasi;
          print('Proyek beralih ke fase Evaluasi.');
        } else {
          print('Proyek harus berjalan selama lebih dari 45 hari untuk masuk fase Evaluasi.');
        }
        break;
      case FaseProyek.evaluasi:
        print('Proyek sudah dalam fase Evaluasi.');
        break;
    }
  }
}

void main() {
  // Contoh penggunaan ProdukDigital
  var produk1 = ProdukDigital('Data Management Tool', 150000, 'DataManagement');
  var produk2 = ProdukDigital('Network Automation Tool', 250000, 'NetworkAutomation');
  produk2.terapkanDiskon(60);
  print('Harga Network Automation Tool setelah diskon: ${produk1.harga}');
  print('Harga Network Automation Tool setelah diskon: ${produk2.harga}');
  // Contoh penggunaan kelas Karyawan dan subkelasnya 
  //2. penggunaan positional dan named arguments
  var karyawan1 = KaryawanTetap('Alice', umur: 30, peran: 'Developer');
  var karyawan2 = KaryawanKontrak('Bob', umur: 25, peran: 'NetworkEngineer');

  karyawan1.bekerja();
  karyawan2.bekerja();

  // Contoh penggunaan Perusahaan
  var perusahaan = Perusahaan();
  perusahaan.tambahKaryawan(karyawan1);
  perusahaan.tambahKaryawan(karyawan2);

  perusahaan.mulaiProyek();
  perusahaan.lanjutKeFaseBerikutnya(); // Akan gagal karena kurang dari 5 karyawan

  // Menambah lebih banyak karyawan untuk memenuhi syarat proyek
  perusahaan.tambahKaryawan(KaryawanTetap('Charlie', umur: 40, peran: 'Manager'));
  perusahaan.tambahKaryawan(KaryawanTetap('David', umur: 35, peran: 'Developer'));
  perusahaan.tambahKaryawan(KaryawanKontrak('Eve', umur: 28, peran: 'NetworkEngineer'));

  perusahaan.lanjutKeFaseBerikutnya(); // Berhasil beralih ke Pengembangan

  // Menunggu 45 hari untuk masuk ke fase Evaluasi (simulasi)
  perusahaan.tanggalMulaiProyek = DateTime.now().subtract(Duration(days: 46));
  perusahaan.lanjutKeFaseBerikutnya(); // Berhasil beralih ke Evaluasi

  // Contoh penggunaan mixin Kinerja
  karyawan1.perbaruiProduktivitas(10);
  print('Produktivitas ${karyawan1.nama}: ${karyawan1.produktivitas}');
}