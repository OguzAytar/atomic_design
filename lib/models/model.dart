import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Model {
  final String name;
  final String surname;
  final int age;
  Model({
    required this.name,
    required this.surname,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'surname': surname,
      'age': age,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      name: map['name'] as String,
      surname: map['surname'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) =>
      Model.fromMap(json.decode(source) as Map<String, dynamic>);

  Model copyWith({
    String? name,
    String? surname,
    int? age,
  }) {
    return Model(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      age: age ?? this.age,
    );
  }

  @override
  String toString() => 'Model(name: $name, surname: $surname, age: $age)';

  @override
  bool operator ==(covariant Model other) {
    if (identical(this, other)) return true;

    return other.name == name && other.surname == surname && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ surname.hashCode ^ age.hashCode;
}
