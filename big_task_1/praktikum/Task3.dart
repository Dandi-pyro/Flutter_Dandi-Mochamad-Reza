import 'dart:io';

void main(){
  stdout.write("Silahkan masukkan angka : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    int? angka = int.tryParse(strInput);
    for (int i = angka!;i>=1;i--){
      for (int j = i;j>=1;j--){
        stdout.write(" *");
      }
      print(" ");
      for (int j = i;j<=angka;j++){
        if (j == 1){
         break;
        }
        stdout.write(" ");
      }
    }
    for (int i = 1;i<=angka;i++){
      if (i == 1){
        continue;
      }
      for (int j = angka;j>i;j--){
        stdout.write(" ");
      }
      for (int j = 1;j<=i;j++){
        stdout.write(" *");
      }
      print(" ");
    }
  }
}