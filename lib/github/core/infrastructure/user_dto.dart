import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
abstract class UserDTO with _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
  // factory UserDTO.fromJson(Map<String, dynamic> json) {
  //   return UserDTO(
  //     name: json['login'] as String,
  //     avatarUrl: json['avatarUrl'] as String,
  //   );
  // }
}
