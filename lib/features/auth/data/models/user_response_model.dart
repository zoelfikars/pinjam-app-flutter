import 'package:flutter_app/core/util/empty_value.dart';
import 'package:flutter_app/features/auth/domain/entities/auth_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    required String id,
    required String username,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'nama_lengkap') required String fullName,
    required String role,
  }) = _UserResponseModel;
  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

extension UserResponseModelToEntity on UserResponseModel {
  AuthEntity toEntity() => AuthEntity(
    id: emptyValue(id),
    username: emptyValue(username),
    fullName: emptyValue(fullName),
    role: emptyValue(role),
  );
}
