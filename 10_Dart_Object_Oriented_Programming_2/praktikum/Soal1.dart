class Pistol {
  var nama;
  late int jumlahPeluru;

  Pistol(String nama, int jumlahPeluru){
    this.nama = nama;
    this.jumlahPeluru = jumlahPeluru;
  }
  tembak(){
    if (jumlahPeluru > 0){
      print('Peluru Ditembakkan');
      jumlahPeluru--;
      print('Jumlah Peluru tersisa : $jumlahPeluru');
    } else {
      print('Jumlah Peluru $jumlahPeluru silahkan reload');
    }
    print(' ');
  }

  reload(int n){
    jumlahPeluru = jumlahPeluru + n;
    print("Peluru telah di reload sebesar : $n");
    print(' ');
  }
}

void main(){
  var subMachinegun = Pistol('M4A1', 30);
  print('Nama Pistol : ${subMachinegun.nama}');
  print('Jumlah Peluru yang ada : ${subMachinegun.jumlahPeluru}');
  subMachinegun.tembak();
  subMachinegun.reload(25);
  subMachinegun.tembak();
}