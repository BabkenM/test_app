// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {required String email,
      required int id,
      required String name,
      required String username,
      required String phone,
      required String website,
      required AddressModel address,
      required CompanyModel company}) {
    return _UserModel(
      email: email,
      id: id,
      name: name,
      username: username,
      phone: phone,
      website: website,
      address: address,
      company: company,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get email => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  CompanyModel get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      int id,
      String name,
      String username,
      String phone,
      String website,
      AddressModel address,
      CompanyModel company});

  $AddressModelCopyWith<$Res> get address;
  $CompanyModelCopyWith<$Res> get company;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
    ));
  }

  @override
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CompanyModelCopyWith<$Res> get company {
    return $CompanyModelCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      int id,
      String name,
      String username,
      String phone,
      String website,
      AddressModel address,
      CompanyModel company});

  @override
  $AddressModelCopyWith<$Res> get address;
  @override
  $CompanyModelCopyWith<$Res> get company;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? company = freezed,
  }) {
    return _then(_UserModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.email,
      required this.id,
      required this.name,
      required this.username,
      required this.phone,
      required this.website,
      required this.address,
      required this.company});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String email;
  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String phone;
  @override
  final String website;
  @override
  final AddressModel address;
  @override
  final CompanyModel company;

  @override
  String toString() {
    return 'UserModel(email: $email, id: $id, name: $name, username: $username, phone: $phone, website: $website, address: $address, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required String email,
      required int id,
      required String name,
      required String username,
      required String phone,
      required String website,
      required AddressModel address,
      required CompanyModel company}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get email;
  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get phone;
  @override
  String get website;
  @override
  AddressModel get address;
  @override
  CompanyModel get company;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
