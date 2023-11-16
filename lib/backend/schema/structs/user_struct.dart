// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? token,
    UserRecordStruct? record,
  })  : _token = token,
        _record = record;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  // "record" field.
  UserRecordStruct? _record;
  UserRecordStruct get record => _record ?? UserRecordStruct();
  set record(UserRecordStruct? val) => _record = val;
  void updateRecord(Function(UserRecordStruct) updateFn) =>
      updateFn(_record ??= UserRecordStruct());
  bool hasRecord() => _record != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        token: data['token'] as String?,
        record: UserRecordStruct.maybeFromMap(data['record']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'record': _record?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'record': serializeParam(
          _record,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        record: deserializeStructParam(
          data['record'],
          ParamType.DataStruct,
          false,
          structBuilder: UserRecordStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        token == other.token &&
        record == other.record;
  }

  @override
  int get hashCode => const ListEquality().hash([token, record]);
}

UserStruct createUserStruct({
  String? token,
  UserRecordStruct? record,
}) =>
    UserStruct(
      token: token,
      record: record ?? UserRecordStruct(),
    );
