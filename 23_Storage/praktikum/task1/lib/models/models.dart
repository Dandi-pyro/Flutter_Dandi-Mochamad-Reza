class GetContact{
  late String name;
  late String phoneNumber;

  GetContact({required this.name, required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  GetContact.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    phoneNumber = map['phoneNumber'];
  }
}