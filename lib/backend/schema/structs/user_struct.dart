// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    bool? isStudent,
    bool? isMentor,
    bool? isParent,
    bool? isAdmin,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _isStudent = isStudent,
        _isMentor = isMentor,
        _isParent = isParent,
        _isAdmin = isAdmin;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "isStudent" field.
  bool? _isStudent;
  bool get isStudent => _isStudent ?? false;
  set isStudent(bool? val) => _isStudent = val;

  bool hasIsStudent() => _isStudent != null;

  // "isMentor" field.
  bool? _isMentor;
  bool get isMentor => _isMentor ?? false;
  set isMentor(bool? val) => _isMentor = val;

  bool hasIsMentor() => _isMentor != null;

  // "isParent" field.
  bool? _isParent;
  bool get isParent => _isParent ?? false;
  set isParent(bool? val) => _isParent = val;

  bool hasIsParent() => _isParent != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        isStudent: data['isStudent'] as bool?,
        isMentor: data['isMentor'] as bool?,
        isParent: data['isParent'] as bool?,
        isAdmin: data['isAdmin'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'isStudent': _isStudent,
        'isMentor': _isMentor,
        'isParent': _isParent,
        'isAdmin': _isAdmin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'isStudent': serializeParam(
          _isStudent,
          ParamType.bool,
        ),
        'isMentor': serializeParam(
          _isMentor,
          ParamType.bool,
        ),
        'isParent': serializeParam(
          _isParent,
          ParamType.bool,
        ),
        'isAdmin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        isStudent: deserializeParam(
          data['isStudent'],
          ParamType.bool,
          false,
        ),
        isMentor: deserializeParam(
          data['isMentor'],
          ParamType.bool,
          false,
        ),
        isParent: deserializeParam(
          data['isParent'],
          ParamType.bool,
          false,
        ),
        isAdmin: deserializeParam(
          data['isAdmin'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        isStudent == other.isStudent &&
        isMentor == other.isMentor &&
        isParent == other.isParent &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [uid, displayName, createTime, isStudent, isMentor, isParent, isAdmin]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  bool? isStudent,
  bool? isMentor,
  bool? isParent,
  bool? isAdmin,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      isStudent: isStudent,
      isMentor: isMentor,
      isParent: isParent,
      isAdmin: isAdmin,
    );
