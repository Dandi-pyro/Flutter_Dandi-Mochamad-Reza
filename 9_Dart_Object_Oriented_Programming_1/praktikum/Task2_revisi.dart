import 'dart:io';

class Hewan {
  var nama;
  late int berat;
}

class Mobil {
  late int kapasitas = 0;
  List<Hewan> muatan = [];
  void tambahMuatan(int berat, Hewan h1){
    if (kapasitas-berat>=0){
      muatan.add(h1);
      kapasitas -= berat;
      print("Berhasil ditambahkan");
    } else {
      print("Kapasitas tidak mencukupi, sisa kapasitas : $kapasitas");
    }
  }
  int totalMuatan(){
    return muatan.length;
  }
}

void main() {
  var tampung = Mobil();
  var h1 = Hewan();
  stdout.write("Silahkan masukkan kapasitas muatan : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    tampung.kapasitas = int.tryParse(strInput)!;
    while (tampung.kapasitas>0){
      stdout.write("masukkan nama hewan : ");
      h1.nama = stdin.readLineSync();
      stdout.write("masukkan berat hewan : ");
      String? strInput1 = stdin.readLineSync();
      if (strInput1!=null){
        h1.berat = int.tryParse(strInput1)!;
        tampung.tambahMuatan(h1.berat, h1);
      }
    }
    int total = tampung.totalMuatan();
    print("Jumlah hewan yang ada didalam muatan : $total");
  }
}