import 'Pengemudi.dart';
class AplikasiPemesanan {
  List<Pengemudi> pengemudiList = [];
  void tambahPengemudi(Pengemudi pengemudi) {
    pengemudiList.add(pengemudi);
  }
  List<Pengemudi> tampilkanPengemudiRatingTinggi() {
    return pengemudiList.where((p) => p.rating > 4.5).toList();
  }
}
void main() {
  AplikasiPemesanan aplikasi = AplikasiPemesanan();
  Pengemudi pengemudi1 = Pengemudi('Andi');
  Pengemudi pengemudi2 = Pengemudi('Ika');

  aplikasi.tambahPengemudi(pengemudi1);
  aplikasi.tambahPengemudi(pengemudi2);

  pengemudi1.updateRating(4.7);
  pengemudi2.updateRating(4.9);

  double hargaTanpaDiskon = pengemudi1.ambilOrder(8, 5000);
  double hargaDenganDiskon = pengemudi1.ambilOrder(12, 5000, diskon: true);

  print("Harga perjalanan tanpa diskon: Rp$hargaDenganDiskon");
  print("Harga perjalanan dengan diskon: Rp$hargaTanpaDiskon");

  print("Pengemudi dengan rating lebih dari 4.5:");
  for (var pengemudi in aplikasi.tampilkanPengemudiRatingTinggi()) {
    print(pengemudi);
  }
}