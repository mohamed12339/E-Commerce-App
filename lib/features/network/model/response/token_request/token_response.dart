import 'package:json_annotation/json_annotation.dart';

import '../user/user_response.dart';

part 'token_response.g.dart';  /// دا هيتعمل لوحدوا عن طريق  build_runner

@JsonSerializable()
class TokenResponse {
  final String message;
  final UserResponse user;
  final String token;

  TokenResponse({
    required this.message,
    required this.user,
    required this.token,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}

