import 'dart:convert';

class Assist {
  int id;
  String name;
  String description;
  Assist({
    required this.id,
    required this.name,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'description': description});

    return result;
  }

  factory Assist.fromMap(Map<String, dynamic> map) {
    return Assist(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Assist.fromJson(String source) => Assist.fromMap(json.decode(source));

  @override
  String toString() =>
      'Assist(id: $id, name: $name, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Assist &&
        other.id == id &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ description.hashCode;
}
