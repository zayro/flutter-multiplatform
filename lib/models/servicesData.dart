// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';
import 'dart:developer';
import 'package:faker/faker.dart';

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  Data({
    this.id,
    this.name,
    this.avatar,
    this.company,
  });

  int id;
  String name;
  String avatar;
  String company;

  List<Data> result = [];

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
        company: json["company"] == null ? null : json["company"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "avatar": avatar == null ? null : avatar,
        "company": company == null ? null : company,
      };

  load() {
    List fakeData = [];

    for (int i = 1; i <= 10; i++) {
      fakeData.add({
        "id": i,
        "name": faker.person.name(),
        "company": faker.person.name(),
        "avatar": "assets/images/bag_1.png"});
    }

    this.result = dataFromJson(json.encode(fakeData)).toList();
    //String toJson = dataToJson(fromJson);
    //this.result = json.decode(toJson);
  }
}

void main() {
  final instanceData = new Data();

  instanceData.load();

  print(" ************* Example Class *************");
  print(json.encode(instanceData.result));

  print(" ------------------------------------");

  List<dynamic> suggestionList;

  suggestionList = instanceData.result.where((element) => element.name.contains("o")).toList();

  print(json.encode(suggestionList));

  print(" ************* example basic 1 *************");

  Map<String, dynamic> jsonString = {
    "id": 1,
    "name": "Office Code",
    "avatar": "assets/images/bag_1.png",
  };

  String rawJson = '{"name":"Mary", "id":30, "avatar": "assets/images/bag_1.png"}';

  Map userMapo = jsonDecode(rawJson);
  var user1 = Data.fromJson(userMapo);
  print(user1.toJson());
  var user2 = Data.fromJson(jsonString);
  print(user2.toJson());

  List fakeData = [];

  for (int i = 1; i <= 10; i++) {
    fakeData.add({"id": i, "name": faker.person.name(), "avatar": "assets/images/bag_1.png"});
  }

  print("************* fakeData *************");
  print(fakeData);

  String jsonStringStructure = json.encode([
    {
      "id": 1,
      "name": "Office Code",
      "avatar": "assets/images/bag_1.png",
    }
  ]);

  var userMap = dataFromJson(json.encode(fakeData));
  String rst = dataToJson(userMap);

  print(userMap.toList());
  print("************* dataFromJson *************");
  print(rst);
  print(" -------------------------------- ");
  print(json.decode(rst));

  print("************* Debugger *************");
  print(inspect(userMap));
}
