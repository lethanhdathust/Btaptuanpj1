// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CanBo {
  String name;
  int age;
  String genre;
  String address;
  CanBo(
    this.name,
    this.age,
    this.genre,
    this.address,
  );


  CanBo copyWith({
    String? name,
    int? age,
    String? genre,
    String? address,
  }) {
    return CanBo(
      name ?? this.name,
      age ?? this.age,
      genre ?? this.genre,
      address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'genre': genre,
      'address': address,
    };
  }

  factory CanBo.fromMap(Map<String, dynamic> map) {
    return CanBo(
      map['name'] as String,
      map['age'] as int,
      map['genre'] as String,
      map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CanBo.fromJson(String source) =>
      CanBo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CanBo(name: $name, age: $age, genre: $genre, address: $address)';
  }

  @override
  bool operator ==(covariant CanBo other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.age == age &&
        other.genre == genre &&
        other.address == address;
  }

  @override
  int get hashCode {
    return name.hashCode ^ age.hashCode ^ genre.hashCode ^ address.hashCode;
  }
}
