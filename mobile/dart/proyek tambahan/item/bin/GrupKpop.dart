// Kelas untuk grup K-Pop
class GrupKpop {
  String namaGrup;
  int tahunDebut;
  List<String> anggota;

  GrupKpop(this.namaGrup, this.tahunDebut, {required this.anggota});

  void tampilkanInfoGrup() {
    print('Grup: $namaGrup, Debut: $tahunDebut, Anggota: ${anggota.join(", ")}');
  }
}