import 'dart:io';

void main(){
  List angka = [];
  stdout.write("masukkan angka pertama : ");
  int? input = int.tryParse(stdin.readLineSync()!);
  angka.add(input);
  stdout.write("masukkan angka kedua : ");
  int? input1 = int.tryParse(stdin.readLineSync()!);
  angka.add(input1);
  print(angka);
}