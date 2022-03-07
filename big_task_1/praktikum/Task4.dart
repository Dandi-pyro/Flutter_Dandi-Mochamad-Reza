import 'dart:io';

void main(){
  stdout.write("Silahkan masukkan angka : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    int? angka = int.tryParse(strInput);
    int conuter = 1;
    for (int i = angka!;i>=1;i--){
      stdout.write(conuter);
      print(" ");
      for (int j = i;j<=angka;j++){
        if (j == 1){
         break;
        }
        stdout.write(" ");
      }
      conuter++;
    }
  }
}