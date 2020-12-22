import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int id;
  String capital;
  String pais;
  String avatar;

  Employee({
    this.id,
    this.capital,
    this.pais,
    this.avatar,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        capital: json["capital"],
        pais: json["pais"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "capital": capital,
        "pais": pais,
        "avatar": avatar,
      };
}
