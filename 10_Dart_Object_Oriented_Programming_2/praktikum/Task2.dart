abstract class BangunRuang {
  late int panjang;
  late int lebar;
  late int tinggi;

  BangunRuang(){
    this.panjang = 0;
    this.lebar = 0;
    this.tinggi = 0;
  }
  
  volume(){
  }
}

class Kubus extends BangunRuang{
  late int sisi;

  Kubus(){
    this.sisi = 0;
  }

  @override
  volume() {
    int hasil = sisi*sisi*sisi;
    print('Volume Kubus : $hasil');
  }
}

class Balok extends BangunRuang{

  @override
  volume() {
    int hasil = panjang*lebar*tinggi;
    print('Volume Balok : $hasil');
  }
}

void main(){
  var balok = Balok();
  balok.panjang = 10;
  balok.lebar = 6;
  balok.tinggi = 8;

  var kubus = Kubus();
  kubus.sisi = 7;

  balok.volume();
  kubus.volume();
}