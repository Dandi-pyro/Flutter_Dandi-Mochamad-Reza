void main() {
  List data = [
    ['Judul', 'Spiderman: No Way Home'],
    ['Tipe', 'Film'],
    ['Perusahaan', 'Marvel Studios']
  ];

  var map = {for (var i in data)i[0]:i[1]};
  print(data);
  print(map);
}