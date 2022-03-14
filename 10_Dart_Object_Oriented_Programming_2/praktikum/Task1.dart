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
}

class Balok extends BangunRuang{
}

void main(){
}