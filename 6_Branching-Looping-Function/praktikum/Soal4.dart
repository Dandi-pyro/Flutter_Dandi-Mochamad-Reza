import 'dart:io';

void main(){
  stdout.write("masukkan total : ");
  double? total = double.tryParse(stdin.readLineSync()!);
  stdout.write("apakah member (true/false) : ");
  bool? member = bool.fromEnvironment(stdin.readLineSync()!);;

  if (member = true){
    if (total! > 500000){
      total = total - total*15/100;
    } else if (total > 100000){
      total = total - total*10/100;
    } 
  } else {
    if (total! > 100000){
      total = total - total*5/100;
    }
  }

  print('Harga bayar : $total');
}