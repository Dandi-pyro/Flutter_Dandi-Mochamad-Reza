import 'dart:io';

void main(){
  double? Angka1, Angka2;
  bool flag = true;
  while (flag){
    print("Kalkulator Sederhana");
    print("1. Input 2 Angka");
    print("2. Penjumlahan 2 angka");
    print("3. Pengurangan 2 angka");
    print("4. Perkalian 2 angka");
    print("5. Pembagian 2 angka");
    print("6. Keluar");
    stdout.write("Silahkan Pilih Menu yang akan anda gunakan : ");
    int? input = int.tryParse(stdin.readLineSync()!);
    switch (input){
      case 1:
        Angka1 = InputAngka();
        Angka2 = InputAngka();
        break;
      case 2:
        double? hasilPenjumlahan = penjumlahan(Angka1, Angka2);
        print('Hasil penjumlahan dari $Angka1+$Angka2 adalah : $hasilPenjumlahan');
        break;
      case 3:
        double? hasilPengurangan = pengurangan(Angka1, Angka2);
        print('Hasil pengurangan dari $Angka1-$Angka2 adalah : $hasilPengurangan');
        break;
      case 4:
        double? hasilPerkalian = perkalian(Angka1, Angka2);
        print('Hasil penjumlahan dari $Angka1*$Angka2 adalah : $hasilPerkalian');
        break;
      case 5:
        double? hasilPembagian = pembagian(Angka1, Angka2);
        print('Hasil penjumlahan dari $Angka1/$Angka2 adalah : $hasilPembagian');
        break;
      case 6:
        print('Closing Kalkulator Sederhana......');
        flag = false;
        break;
    }
  }
}

double? InputAngka(){
  stdout.write("masukkan angka : ");
  double? Angka = double.tryParse(stdin.readLineSync()!);
  return Angka;
}

double? penjumlahan(double? Angka1,Angka2){
  return Angka1! + Angka2;
}

double? pengurangan(double? Angka1,Angka2){
  return Angka1! - Angka2;
}

double? perkalian(double? Angka1,Angka2){
  return Angka1! * Angka2;
}

double? pembagian(double? Angka1,Angka2){
  return Angka1! / Angka2;
}