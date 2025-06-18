import 'package:hive/hive.dart';
part 'user_model_dto.g.dart';

@HiveType(typeId: 0)
class UserModelDto extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String email;

  UserModelDto({required this.id, required this.name, required this.email});

  factory UserModelDto.fromJson(Map<String, dynamic> json) {
    return UserModelDto(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}
