import 'dart:io';

void main(){
  stdout.write("Silahkan masukkan angka : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    int? angka = int.tryParse(strInput);
    bool hasil = angkaGenap(angka!);
    print('$angka merupakan bilangan genap? $hasil');
  }
}

bool angkaGenap(int angka){
  return angka.isEven;
}