import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_viewer/github/core/domain/user.dart';

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

  factory UserDTO.fromDomain(User user) {
    return UserDTO(name: user.name, avatarUrl: user.avatarUrl);
  }
  User toDomain(){
    return User(name: name, avatarUrl: avatarUrl);
  }
  // factory UserDTO.fromJson(Map<String, dynamic> json) {
  //   return UserDTO(
  //     name: json['login'] as String,
  //     avatarUrl: json['avatarUrl'] as String,
  //   );
  // }
}
