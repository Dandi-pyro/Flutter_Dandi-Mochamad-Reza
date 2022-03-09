import 'dart:io';

class hewan {
  var nama;
  late int berat;
}

class mobil {
  late int kapasitas ;
  List muatan = [];
  List tambahMuatan(List muatan, var hewan, var berat){
    muatan.add([hewan, berat]);
    return muatan;
  }
}

void main() {
  var tampung = mobil();
  var h1 = hewan();
  tampung.kapasitas = 0;
  stdout.write("Silahkan masukkan kapasitas muatan : ");
  String? strInput = stdin.readLineSync();
  if (strInput!=null){
    int? kapasitas = int.tryParse(strInput)!;
    while (tampung.kapasitas < kapasitas){
      stdout.write("masukkan nama hewan : ");
      h1.nama = stdin.readLineSync();
      stdout.write("masukkan berat hewan : ");
      String? strInput1 = stdin.readLineSync();
      if (strInput1!=null){
        h1.berat = int.tryParse(strInput1)!;
        if (tampung.kapasitas+h1.berat <= kapasitas){
        tampung.tambahMuatan(tampung.muatan, h1.nama, h1.berat);
        tampung.kapasitas = (tampung.kapasitas + h1.berat);
        } else {
          stdout.write('Kapasitas tidak mencukupi, sisa kapasitas');
          print(kapasitas-tampung.kapasitas);
        }
      }
    }
    print(tampung.muatan);
  }
}