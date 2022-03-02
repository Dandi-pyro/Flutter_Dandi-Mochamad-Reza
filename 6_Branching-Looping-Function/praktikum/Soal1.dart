import 'dart:io';

void main(){
  stdout.write("masukkan total : ");
  double? total = double.tryParse(stdin.readLineSync()!);

  if (total! > 100000){
    total = total - total*10/100;
  }

  double? bayar = total;

  print('Total bayar : $bayar');
}