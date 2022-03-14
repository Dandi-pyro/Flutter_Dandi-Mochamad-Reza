class Hewan{
  late String nama;
  late String jenis;

  Hewan(String nama, String jenis){
    this.nama = nama;
    this.jenis = jenis;
  }

  Suara(){
    print('?');
  }
}

class Kucing extends Hewan{
  Kucing(String nama, String jenis) : super(nama, jenis){
    this.nama = nama;
    this.jenis = jenis;
  }

  Lari(){
    print('Kucing lari menggunakan 4 kaki');
  }

  @override
  Suara(){
    print('suara kucing ; Meow');
  }
}

class Unggas extends Hewan{
  String? Keluarga;
  Unggas(String Keluarga, String nama, String jenis) : super(nama, jenis){
    this.Keluarga = Keluarga;
    this.nama = nama;
    this.jenis = jenis;
  }
}

class Burung extends Unggas {
  Burung(String Keluarga, String nama, String jenis) : super(nama, jenis, Keluarga){
    this.nama = nama;
    this.jenis = jenis;
    this.Keluarga = Keluarga;
  }

  Terbang(){
    print('Burung terbang menggunakan 2 sayap');
  }

  @override
  Suara(){
    print('suara burng : viw viw viw');
  }
}

void main(){
  var kucing = Kucing('Tom','Anggora');
  kucing.Lari();
  kucing.Suara();

  var burung = Burung('Bob', 'Kenari', 'Burung Kecil');
  burung.Terbang();
  burung.Suara();
}