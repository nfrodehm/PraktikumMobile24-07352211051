class Pengemudi {
  String nama;
  double rating = 0.0;

  Pengemudi(this.nama);

  void updateRating(double newRating) {
    rating = newRating;
  }

  double ambilOrder(double jarak, double hargaPerKm, {bool diskon = false}) {
    double totalHarga = jarak * hargaPerKm;
    if (diskon) {
      totalHarga *= 0.9; // diskon 10%
    }
    return totalHarga;
  }

  @override
  String toString() {
    return 'Pengemudi: $nama, Rating: $rating';
  }
}