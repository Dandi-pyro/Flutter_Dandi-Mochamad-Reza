void main() {
  int num = 10;
  int num1 = 20;
  int num2 = 30;
  print('Angka yang akan ditampilkan nilai faktorialnya adalah $num, $num1, $num2');
  int factorial = 1;

  int? Hasil = faktorial(num,factorial);
  int? Hasil1 = faktorial(num1,factorial);
  int? Hasil2 = faktorial(num2,factorial);
  print('Nilai faktorial dari $num adalah $Hasil');
  print('Nilai faktorial dari $num1 adalah $Hasil1');
  print('Nilai faktorial dari $num2 adalah $Hasil2');
}

int? faktorial(int num, int factorial){
  for( int i = num ; i >= 1; i-- ) {
    factorial *= i ;
  }
  return factorial;
}