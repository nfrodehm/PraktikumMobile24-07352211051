//bab 2
import 'dart:core';
mixin Kinerja {
  int produktivitas = 50;
  DateTime? terakhirDiupdate;

  void perbaruiProduktivitas(int nilai) {
    final sekarang = DateTime.now();
    if (terakhirDiupdate == null || sekarang.difference(terakhirDiupdate!).inDays >= 30) {
      produktivitas = (produktivitas + nilai).clamp(0, 100);
      terakhirDiupdate = sekarang;
    } else {
      print('Produktivitas hanya bisa diperbarui setiap 30 hari.');
    }
  }
}