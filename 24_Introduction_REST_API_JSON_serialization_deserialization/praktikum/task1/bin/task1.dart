import 'package:dio/dio.dart';
void main() async {
  Response response;
  var dio = Dio();
  response = await dio.post(
    'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
    data: {'id': 10, 'name': 'Dream', 'phone': '0827528372269'}
  );
  print(response);
}