
import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';  /// دا هيتعمل لوحدوا عن طريق  build_runner
@JsonSerializable()
class UserResponse {
  final String name;
  final String email;
  final String role;

  UserResponse({
    required this.name,
    required this.email,
    required this.role,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}