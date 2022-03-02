import 'dart:io';

void main(){
  stdout.write("masukkan nilai : ");
  double? nilai = double.tryParse(stdin.readLineSync()!);
  String keterangan;

  if (nilai! > 70){
    keterangan = 'Lulus';
  } else {
    keterangan = 'Gagal';
  }

  print('Keterangan : $keterangan');
}