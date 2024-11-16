//import 'package:dartoop/dartoop.dart' as dartoop;
class Orang {
  String? nama, kebiasaan;
  int? usia, tinggiBadan, beratBadan;

  Orang(this.nama, this.kebiasaan, this.usia, this.tinggiBadan, this.beratBadan);
}

void main() {
  Orang o3 = Orang("fina", "Scrool Tiktok", 19, 150, 20); // Constructor needs arguments
  print(o3.nama); // Correct syntax for print statement
  print(o3.kebiasaan);
  print(o3.usia);
  print(o3.tinggiBadan);
  print(o3.beratBadan);
}