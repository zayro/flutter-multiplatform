// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';
import 'package:faker/faker.dart';
import "dart:math";

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  Data({
    this.id,
    this.name,
    this.avatar,
    this.company,
    this.adress,
    this.phone,
  });

  int id;
  String name;
  String avatar;
  String company;
  String adress;
  String phone;

  List<Data> result = [];

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        company: json["company"] == null ? null : json["company"],
        adress: json["adress"] == null ? null : json["adress"],
        phone: json["phone"] == null ? null : json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "avatar": avatar == null ? null : avatar,
        "company": company == null ? null : company,
        "adress": adress == null ? null : adress,
        "phone": phone == null ? null : phone,
      };

  loadFaker() {
    List fakeData = [];

    List keyword = ['Abogado', 'Programador', 'Electricista', 'Carpintero'];
    // generates a new Random object
    final _random = new Random();

    for (int i = 1; i <= 10; i++) {
      // generate a random index based on the list length
      // and use it to retrieve the element
      String category = keyword[_random.nextInt(keyword.length)];
      fakeData.add({
        "id": i,
        "name": category,
        "company": faker.company.name(),
        "adress": "${faker.address.streetName()}, ${faker.address.streetAddress()}",
        "phone": '${faker.randomGenerator.integer(1000)}',
        "avatar": "assets/images/bag_1.png"
      });
    }

    this.result = dataFromJson(json.encode(fakeData)).toList();
  }
}

void main() {
  final instanceData = new Data();

  instanceData.loadFaker();

  print(" ************* Example Class *************");

  print(instanceData.result.toList());
  print(dataToJson(instanceData.result));

  print(" ------------------------------------");
}
