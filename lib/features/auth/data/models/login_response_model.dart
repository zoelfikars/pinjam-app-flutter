import 'package:flutter_app/features/auth/data/models/user_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String token,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'expired_at') required String expiredAt,
    required UserResponseModel user,
  }) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

extension LoginResponseModelToEntity on LoginResponseModel {
  
}
