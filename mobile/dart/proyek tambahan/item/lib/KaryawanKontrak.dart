import 'Karyawan.dart';
class KaryawanKontrak extends Karyawan {
  KaryawanKontrak(String nama, {required int umur, required String peran})
      : super(nama, umur: umur, peran: peran);

  @override
  void bekerja() {
    print("Karyawan Kontrak $nama bekerja pada proyek tertentu");
  }
}