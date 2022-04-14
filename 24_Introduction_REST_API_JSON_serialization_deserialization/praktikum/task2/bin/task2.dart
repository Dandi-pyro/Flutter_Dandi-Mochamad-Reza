import 'dart:convert';
import 'package:http/http.dart' as http;

class Contact{
  int? id;
  String? name;
  String? phone;

  Contact({this.id, this.name, this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json["id"],
      name: json["name"],
      phone: json["phone"]
    );
  }
}

Future<void> callApi() async {
  var url = Uri.parse('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
  var response = await http.get(url);
  var body = response.body;
  Contact contact = Contact.fromJson(jsonDecode(body));
  print('id: ${contact.id.toString()}');
  print('name: ${contact.name.toString()}');
  print('phone: ${contact.phone.toString()}');
}

void main() {
  callApi();
}