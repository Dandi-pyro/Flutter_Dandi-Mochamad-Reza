import 'dart:io';

void main(){
  stdout.write("masukkan nilai pertama : ");
  double? nilai1 = double.tryParse(stdin.readLineSync()!);
  stdout.write("masukkan nilai kedua : ");
  double? nilai2 = double.tryParse(stdin.readLineSync()!);
  stdout.write("masukkan nilai ketiga : ");
  double? nilai3 = double.tryParse(stdin.readLineSync()!);
  stdout.write("masukkan nilai keempat : ");
  double? nilai4 = double.tryParse(stdin.readLineSync()!);

  String? Hasil1 = ReturnNilai(nilai1);
  String? Hasil2 = ReturnNilai(nilai2);
  String? Hasil3 = ReturnNilai(nilai3);
  String? Hasil4 = ReturnNilai(nilai4);

  print('Index dari nilai pertama : $Hasil1');
  print('Index dari nilai kedua : $Hasil2');
  print('Index dari nilai ketiga : $Hasil3');
  print('Index dari nilai keempat : $Hasil4');
}

String? ReturnNilai(double? nilai){
  if (nilai !> 70){
    return 'A';
  } else if(nilai > 40){
    return 'B';
  } else if(nilai > 0){
    return 'C';
  } else {
    return '';
  }
}