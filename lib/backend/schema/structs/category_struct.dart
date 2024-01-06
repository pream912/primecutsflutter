// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? id,
    String? catName,
    String? cover,
  })  : _id = id,
        _catName = catName,
        _cover = cover;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "cat_name" field.
  String? _catName;
  String get catName => _catName ?? '';
  set catName(String? val) => _catName = val;
  bool hasCatName() => _catName != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  set cover(String? val) => _cover = val;
  bool hasCover() => _cover != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        id: data['id'] as String?,
        catName: data['cat_name'] as String?,
        cover: data['cover'] as String?,
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'cat_name': _catName,
        'cover': _cover,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'cat_name': serializeParam(
          _catName,
          ParamType.String,
        ),
        'cover': serializeParam(
          _cover,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        catName: deserializeParam(
          data['cat_name'],
          ParamType.String,
          false,
        ),
        cover: deserializeParam(
          data['cover'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct &&
        id == other.id &&
        catName == other.catName &&
        cover == other.cover;
  }

  @override
  int get hashCode => const ListEquality().hash([id, catName, cover]);
}

CategoryStruct createCategoryStruct({
  String? id,
  String? catName,
  String? cover,
}) =>
    CategoryStruct(
      id: id,
      catName: catName,
      cover: cover,
    );
