import 'dart:io';

void main(){
  stdout.write("masukkan nilai : ");
  double? nilai = double.tryParse(stdin.readLineSync()!);
  String grade;

  if (nilai! > 85){
    grade = 'A';
  } else if (nilai > 75){
    grade = 'B';
  } else if (nilai > 60){
    grade = 'C';
  } else if (nilai > 45){
    grade = 'D';
  } else {
    grade = 'E';
  }

  print('Index grade adalah $grade');
}