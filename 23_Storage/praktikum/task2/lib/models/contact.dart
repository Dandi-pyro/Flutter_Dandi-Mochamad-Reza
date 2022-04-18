class Contact {
  late String name;
  late String phoneNumber;

  Contact(this.name, this.phoneNumber);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  Contact.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    phoneNumber = map['phoneNumber'];
  }
}