import 'package:freezed_annotation/freezed_annotation.dart';

import '../address_model/address_model.dart';
import '../company_model/company_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required int id,
    required String name,
    required String username,
    required String phone,
    required String website,
    required AddressModel address,
    required CompanyModel company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
