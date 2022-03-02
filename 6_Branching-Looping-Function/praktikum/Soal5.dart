import 'dart:io';

void main(){
  stdout.write("masukkan angka 1-7 : ");
  int? nilai = int.tryParse(stdin.readLineSync()!);

  switch (nilai){
    case 1:
      print('Senin');
      break;
    case 2:
      print('Selasa');
      break;
    case 3:
      print('Rabu');
      break;
    case 4:
      print('Kamis');
      break;
    case 5:
      print("Jum'at");
      break;
    case 6:
      print('sabtu');
      break;
    case 7:
      print('minggu');
      break;
    default:
      print('Inputan salah');
  }
}