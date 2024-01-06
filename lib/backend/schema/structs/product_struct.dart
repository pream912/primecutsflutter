// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? id,
    String? prodName,
    String? description,
    String? shortDescription,
    String? category,
    String? subcategory,
    int? code,
    List<String>? tags,
    List<String>? related,
    String? image,
    String? created,
    String? updated,
  })  : _id = id,
        _prodName = prodName,
        _description = description,
        _shortDescription = shortDescription,
        _category = category,
        _subcategory = subcategory,
        _code = code,
        _tags = tags,
        _related = related,
        _image = image,
        _created = created,
        _updated = updated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "prod_name" field.
  String? _prodName;
  String get prodName => _prodName ?? '';
  set prodName(String? val) => _prodName = val;
  bool hasProdName() => _prodName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  set shortDescription(String? val) => _shortDescription = val;
  bool hasShortDescription() => _shortDescription != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  set subcategory(String? val) => _subcategory = val;
  bool hasSubcategory() => _subcategory != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;
  void incrementCode(int amount) => _code = code + amount;
  bool hasCode() => _code != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;
  void updateTags(Function(List<String>) updateFn) => updateFn(_tags ??= []);
  bool hasTags() => _tags != null;

  // "related" field.
  List<String>? _related;
  List<String> get related => _related ?? const [];
  set related(List<String>? val) => _related = val;
  void updateRelated(Function(List<String>) updateFn) =>
      updateFn(_related ??= []);
  bool hasRelated() => _related != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;
  bool hasCreated() => _created != null;

  // "updated" field.
  String? _updated;
  String get updated => _updated ?? '';
  set updated(String? val) => _updated = val;
  bool hasUpdated() => _updated != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: data['id'] as String?,
        prodName: data['prod_name'] as String?,
        description: data['description'] as String?,
        shortDescription: data['short_description'] as String?,
        category: data['category'] as String?,
        subcategory: data['subcategory'] as String?,
        code: castToType<int>(data['code']),
        tags: getDataList(data['tags']),
        related: getDataList(data['related']),
        image: data['image'] as String?,
        created: data['created'] as String?,
        updated: data['updated'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'prod_name': _prodName,
        'description': _description,
        'short_description': _shortDescription,
        'category': _category,
        'subcategory': _subcategory,
        'code': _code,
        'tags': _tags,
        'related': _related,
        'image': _image,
        'created': _created,
        'updated': _updated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'prod_name': serializeParam(
          _prodName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'short_description': serializeParam(
          _shortDescription,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'subcategory': serializeParam(
          _subcategory,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          true,
        ),
        'related': serializeParam(
          _related,
          ParamType.String,
          true,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'updated': serializeParam(
          _updated,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        prodName: deserializeParam(
          data['prod_name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        shortDescription: deserializeParam(
          data['short_description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        subcategory: deserializeParam(
          data['subcategory'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
        related: deserializeParam<String>(
          data['related'],
          ParamType.String,
          true,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        updated: deserializeParam(
          data['updated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        id == other.id &&
        prodName == other.prodName &&
        description == other.description &&
        shortDescription == other.shortDescription &&
        category == other.category &&
        subcategory == other.subcategory &&
        code == other.code &&
        listEquality.equals(tags, other.tags) &&
        listEquality.equals(related, other.related) &&
        image == other.image &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        prodName,
        description,
        shortDescription,
        category,
        subcategory,
        code,
        tags,
        related,
        image,
        created,
        updated
      ]);
}

ProductStruct createProductStruct({
  String? id,
  String? prodName,
  String? description,
  String? shortDescription,
  String? category,
  String? subcategory,
  int? code,
  String? image,
  String? created,
  String? updated,
}) =>
    ProductStruct(
      id: id,
      prodName: prodName,
      description: description,
      shortDescription: shortDescription,
      category: category,
      subcategory: subcategory,
      code: code,
      image: image,
      created: created,
      updated: updated,
    );
