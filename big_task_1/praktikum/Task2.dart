import 'dart:io';

void main(){
  stdout.write("Silahkan masukkan angka : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    int? angka = int.tryParse(strInput);
    int? hasil = returnNilai(angka!);
    int? hasilKedua = returnNIlaiKedua(hasil!);
    print('Hasil dari operasi program adalah $hasilKedua');
  }
}

int? returnNilai(int angka){
  if (angka > 180){
    return angka - 180;
  } else if (angka < 180){
    return angka + 180;
  } else {
    return angka;
  }
}

int? returnNIlaiKedua(int angka){
  if (angka <= 0 ||angka >= 360){
    return 0;
  } else {
    return angka;
  }
}