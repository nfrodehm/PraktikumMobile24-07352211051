//proyek tambahan 6 running yg ini

//import 'Agensi.dart';
import 'AgensiKategori.dart';
import 'GrupKpop.dart';
import 'Promosi.dart';
import 'agensi.dart';

// Kelas untuk agensi K-Pop yang mewarisi Agensi dan menggunakan mixin Promosi
class AgensiKpop extends Agensi with Promosi {
  List<GrupKpop> daftarGrup = [];

  // Constructor dengan positional dan named argument
  AgensiKpop(String namaAgensi, AgensiKategori kategori, int tahunBerdiri)
      : super(namaAgensi, kategori, tahunBerdiri);

  @override
  void tampilkanInfoAgensi() {
    print('Agensi: $namaAgensi, Kategori: $kategori, Berdiri: $tahunBerdiri');
    print('Grup yang dikelola:');
    for (var grup in daftarGrup) {
      print('- ${grup.namaGrup}');
    }
  }

  // Method untuk menambah grup
  void tambahGrup(GrupKpop grup) {
    daftarGrup.add(grup);
  }

  // Getter dan Setter
  List<String> get grupNames =>
      daftarGrup.map((grup) => grup.namaGrup).toList();

  set tambahGrupBaru(GrupKpop grup) {
    daftarGrup.add(grup);
  }
}

// Main program
void main() {
  // Membuat objek grup K-Pop
  var aespa = GrupKpop('AESPA', 2020, anggota: ['Karina', 'Winter', 'Giselle', 'NingNing']);
  var blackpink = GrupKpop('BLACKPINK', 2016, anggota: ['Jisoo', 'Jennie', 'Rosé', 'Lisa']);
  var twice = GrupKpop('TWICE', 2015, anggota: ['Nayeon', 'Jeongyeon', 'Momo', 'Sana', 'Jihyo', 'Mina', 'Dahyun', 'Chaeyoung', 'Tzuyu']);
  var illit = GrupKpop('ILLIT', 2024, anggota: ['Sora', 'Yuna', 'Hana', 'Lia']);

  // Membuat objek agensi
  var sm = AgensiKpop('SM Entertainment', AgensiKategori.Big3, 1995);
  var yg = AgensiKpop('YG Entertainment', AgensiKategori.Big3, 1996);
  var jyp = AgensiKpop('JYP Entertainment', AgensiKategori.Big3, 1997);
  var hybe = AgensiKpop('HYBE Corporation', AgensiKategori.BigHit, 2005);

  // Menambah grup ke agensi
  sm.tambahGrup(aespa);
  yg.tambahGrup(blackpink);
  jyp.tambahGrup(twice);
  hybe.tambahGrup(illit);

  // Menampilkan informasi agensi dan grup
  sm.tampilkanInfoAgensi();
  yg.tampilkanInfoAgensi();
  jyp.tampilkanInfoAgensi();
  hybe.tampilkanInfoAgensi();

  // Promosi grup
  sm.promosiGrup('AESPA');
  yg.promosiGrup('BLACKPINK');

  // Menggunakan getter dan setter
  print('Grup di SM: ${sm.grupNames}');
  sm.tambahGrupBaru = GrupKpop('NCT', 2016, anggota: ['Taeyong', 'Mark', 'Jaehyun']);
  print('Grup terbaru di SM: ${sm.grupNames}');
}
// link referensi: https://chatgpt.com/c/6733d7be-2a14-8001-a956-71efa5701844