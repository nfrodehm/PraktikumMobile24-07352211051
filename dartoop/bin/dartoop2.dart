class Orang {
  String? nama, kebiasaan;
  int? usia, tinggiBadan, beratBadan;

  Orang(this.nama, this.kebiasaan, this.usia, this.tinggiBadan, this.beratBadan);
}
void main() {
  Orang o3 = Orang("fina", "Scrool Tiktok", 19, 150, 20); // Constructor needs arguments
  print(o3.nama); // Correct syntax for print statement
}
