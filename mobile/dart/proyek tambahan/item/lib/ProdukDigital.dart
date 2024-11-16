class ProdukDigital {
  String namaProduk;
  double harga;
  String kategori;

  ProdukDigital(this.namaProduk, this.harga, this.kategori);

  void terapkanDiskon(int jumlahUnitTerjual) {
    if (kategori == "NetworkAutomation" && jumlahUnitTerjual > 50) {
      double diskon = harga * 0.15;
      harga -= diskon;
      if (harga < 200000) {
        harga = 200000;
      }
    }
  }
}