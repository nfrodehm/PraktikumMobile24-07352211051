abstract class Karyawan {
  String nama;
  int umur;
  String peran;
  double produktivitas = 100;

  Karyawan(this.nama, {required this.umur, required this.peran});

  void bekerja();
  void perbaruiProduktivitas(double kenaikan) {
    produktivitas += kenaikan;
    if (peran == "Manager" && produktivitas < 85) {
      produktivitas = 85;
    }
  }
}