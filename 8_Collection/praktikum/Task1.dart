import 'dart:io';

void main() async {
  List data = [];
  stdout.write("Masukkan jumlah total data yang ingin di isi di list : ");
  int? i = int.tryParse(stdin.readLineSync()!);
  for (int j = 1;j<=i!;j++){
    stdout.write("Masukkan data ke $j : ");
    int? temp = int.tryParse(stdin.readLineSync()!);
    data.add(temp);
  }
  stdout.write("Masukkan angka pengali : ");
  int? kali = int.tryParse(stdin.readLineSync()!);
  print('Angka yang ada didalam data : $data');
  List hasil = await returnList(data, kali!);
  print('Hasil data setelah dikali $kali adalah $hasil');
}

Future<List> returnList(List data, int kali){
  Future((){
    for (int i = 0;i<data.length;i++){
      data[i] = data[i]*kali;
    }
  });
  return Future.delayed(Duration(seconds: 1),(){
    return data;
  });
}