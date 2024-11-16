import 'Karyawan.dart';
class KaryawanTetap extends Karyawan {
  KaryawanTetap(String nama, {required int umur, required String peran})
      : super(nama, umur: umur, peran: peran);

  @override
  void bekerja() {
    print("Karyawan Tetap $nama bekerja full-time");
  }
}