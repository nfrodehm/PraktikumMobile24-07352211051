import 'AgensiKategori.dart';
// Abstract class untuk agensi
abstract class Agensi {
  String namaAgensi;
  AgensiKategori kategori;
  int tahunBerdiri;

  Agensi(this.namaAgensi, this.kategori, this.tahunBerdiri);

  void tampilkanInfoAgensi(); // Abstract method
}