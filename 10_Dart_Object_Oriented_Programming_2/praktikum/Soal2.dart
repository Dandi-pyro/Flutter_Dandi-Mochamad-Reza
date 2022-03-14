class Mobil{
  late String merkMobil;
  late String tipeMobil;
  late int bahanBakar;
  late int jarakTempuh;

  Mobil(String merkMobil,String tipeMobil,int bahanBakar, int jarakTempuh){
    this.merkMobil = merkMobil;
    this.tipeMobil = tipeMobil;
    this.bahanBakar = bahanBakar;
    this.jarakTempuh = jarakTempuh;
  }

    jalan(int km){
    for (int i = 0;i<km;i++){
      if (bahanBakar>0){
        if (i%10==0){
          bahanBakar--;
          jarakTempuh++;
        } 
      } else {
          print('Bahan Bakar habis segera isi kembali!!!');
          break;
      }
      jarakTempuh++;
    }
  }

  isiBahanBakar(int n){
    bahanBakar += n;
    print('Bahan bakar telah di isi ulang sebesar : $n');
  }

  infoBahanBakar(){
    print('Bahan bakar yang tersedia : $bahanBakar');
  }

  infoJarakTempuh(){
    print('Jarak yang telah ditempuh adalah $jarakTempuh');
  }
}

void main(){
  var mobil = Mobil('Lamborghini', 'sedan', 4, 50);

  mobil.jalan(50);
  mobil.infoJarakTempuh();
  mobil.isiBahanBakar(5);
  mobil.infoBahanBakar();
}