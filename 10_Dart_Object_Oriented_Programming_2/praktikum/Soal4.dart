class Task<T> {
  var a;
  var b;

  Task(T c,T d) {
    this.a = c;
    this.b = d;
  }

  cetak<T>() {
    if (a.runtimeType == String && b.runtimeType == String){
      print('$a $b');
    } else if(a.runtimeType == int && b.runtimeType == int){
      if (a  > b){
        print('Nilai $a lebih besar dari $b');
      } else {
        print('Nilai $b lebih besar dari $a');
      }
    } else if(a.runtimeType == double && b.runtimeType == double){
      if (a  > b){
        print('Nilai $a lebih besar dari $b');
      } else {
        print('Nilai $b lebih besar dari $a');
      }
    } else if(a.runtimeType == bool && b.runtimeType == bool){
      print(a&&b);
    } else {
      print('Tidak diketahui');
    }
  }
}

void main(){
  var t1 = Task<String>('Dandi', 'Mochamad Reza');
  var t2 = Task<int>(69,420);
  var t3 = Task<double>(69,420);
  var t4 = Task<bool>(true,false);
  var t5 = Task<List>([],[]);

  t1.cetak();
  t2.cetak();
  t3.cetak();
  t4.cetak();
  t5.cetak();
}