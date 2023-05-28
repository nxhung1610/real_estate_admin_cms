///
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../shared_proto/shared_proto.dart' as $1;

class ExamineRealEstateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExamineRealEstateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ExamineRealEstateRequest._() : super();
  factory ExamineRealEstateRequest({
    $core.int? reId,
  }) {
    final _result = create();
    if (reId != null) {
      _result.reId = reId;
    }
    return _result;
  }
  factory ExamineRealEstateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExamineRealEstateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExamineRealEstateRequest clone() => ExamineRealEstateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExamineRealEstateRequest copyWith(void Function(ExamineRealEstateRequest) updates) => super.copyWith((message) => updates(message as ExamineRealEstateRequest)) as ExamineRealEstateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExamineRealEstateRequest create() => ExamineRealEstateRequest._();
  ExamineRealEstateRequest createEmptyInstance() => create();
  static $pb.PbList<ExamineRealEstateRequest> createRepeated() => $pb.PbList<ExamineRealEstateRequest>();
  @$core.pragma('dart2js:noInline')
  static ExamineRealEstateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExamineRealEstateRequest>(create);
  static ExamineRealEstateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReId() => clearField(1);
}

class RejectRealEstateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RejectRealEstateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reId', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  RejectRealEstateRequest._() : super();
  factory RejectRealEstateRequest({
    $core.int? reId,
    $core.String? reason,
  }) {
    final _result = create();
    if (reId != null) {
      _result.reId = reId;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }
  factory RejectRealEstateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RejectRealEstateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RejectRealEstateRequest clone() => RejectRealEstateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RejectRealEstateRequest copyWith(void Function(RejectRealEstateRequest) updates) => super.copyWith((message) => updates(message as RejectRealEstateRequest)) as RejectRealEstateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RejectRealEstateRequest create() => RejectRealEstateRequest._();
  RejectRealEstateRequest createEmptyInstance() => create();
  static $pb.PbList<RejectRealEstateRequest> createRepeated() => $pb.PbList<RejectRealEstateRequest>();
  @$core.pragma('dart2js:noInline')
  static RejectRealEstateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RejectRealEstateRequest>(create);
  static RejectRealEstateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

class RejectTourRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RejectTourRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tourId', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  RejectTourRequest._() : super();
  factory RejectTourRequest({
    $core.int? tourId,
    $core.String? reason,
  }) {
    final _result = create();
    if (tourId != null) {
      _result.tourId = tourId;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }
  factory RejectTourRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RejectTourRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RejectTourRequest clone() => RejectTourRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RejectTourRequest copyWith(void Function(RejectTourRequest) updates) => super.copyWith((message) => updates(message as RejectTourRequest)) as RejectTourRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RejectTourRequest create() => RejectTourRequest._();
  RejectTourRequest createEmptyInstance() => create();
  static $pb.PbList<RejectTourRequest> createRepeated() => $pb.PbList<RejectTourRequest>();
  @$core.pragma('dart2js:noInline')
  static RejectTourRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RejectTourRequest>(create);
  static RejectTourRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tourId => $_getIZ(0);
  @$pb.TagNumber(1)
  set tourId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTourId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTourId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

class AssignStaffForTourRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignStaffForTourRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tourId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AssignStaffForTourRequest._() : super();
  factory AssignStaffForTourRequest({
    $core.int? tourId,
    $core.int? staffId,
  }) {
    final _result = create();
    if (tourId != null) {
      _result.tourId = tourId;
    }
    if (staffId != null) {
      _result.staffId = staffId;
    }
    return _result;
  }
  factory AssignStaffForTourRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignStaffForTourRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignStaffForTourRequest clone() => AssignStaffForTourRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignStaffForTourRequest copyWith(void Function(AssignStaffForTourRequest) updates) => super.copyWith((message) => updates(message as AssignStaffForTourRequest)) as AssignStaffForTourRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignStaffForTourRequest create() => AssignStaffForTourRequest._();
  AssignStaffForTourRequest createEmptyInstance() => create();
  static $pb.PbList<AssignStaffForTourRequest> createRepeated() => $pb.PbList<AssignStaffForTourRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignStaffForTourRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignStaffForTourRequest>(create);
  static AssignStaffForTourRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tourId => $_getIZ(0);
  @$pb.TagNumber(1)
  set tourId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTourId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTourId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get staffId => $_getIZ(1);
  @$pb.TagNumber(2)
  set staffId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStaffId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaffId() => clearField(2);
}

class GetStaffsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStaffsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetStaffsRequest._() : super();
  factory GetStaffsRequest({
    $core.int? page,
    $core.int? limit,
  }) {
    final _result = create();
    if (page != null) {
      _result.page = page;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory GetStaffsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStaffsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStaffsRequest clone() => GetStaffsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStaffsRequest copyWith(void Function(GetStaffsRequest) updates) => super.copyWith((message) => updates(message as GetStaffsRequest)) as GetStaffsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStaffsRequest create() => GetStaffsRequest._();
  GetStaffsRequest createEmptyInstance() => create();
  static $pb.PbList<GetStaffsRequest> createRepeated() => $pb.PbList<GetStaffsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStaffsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStaffsRequest>(create);
  static GetStaffsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class GetStaffByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStaffByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staffId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetStaffByIdRequest._() : super();
  factory GetStaffByIdRequest({
    $core.int? staffId,
  }) {
    final _result = create();
    if (staffId != null) {
      _result.staffId = staffId;
    }
    return _result;
  }
  factory GetStaffByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStaffByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStaffByIdRequest clone() => GetStaffByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStaffByIdRequest copyWith(void Function(GetStaffByIdRequest) updates) => super.copyWith((message) => updates(message as GetStaffByIdRequest)) as GetStaffByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStaffByIdRequest create() => GetStaffByIdRequest._();
  GetStaffByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetStaffByIdRequest> createRepeated() => $pb.PbList<GetStaffByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStaffByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStaffByIdRequest>(create);
  static GetStaffByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get staffId => $_getIZ(0);
  @$pb.TagNumber(1)
  set staffId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaffId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaffId() => clearField(1);
}

class StaffsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StaffsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusCode', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<$1.AUser>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: $1.AUser.create)
    ..hasRequiredFields = false
  ;

  StaffsResponse._() : super();
  factory StaffsResponse({
    $core.int? statusCode,
    $core.String? message,
    $core.Iterable<$1.AUser>? data,
  }) {
    final _result = create();
    if (statusCode != null) {
      _result.statusCode = statusCode;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory StaffsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StaffsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StaffsResponse clone() => StaffsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StaffsResponse copyWith(void Function(StaffsResponse) updates) => super.copyWith((message) => updates(message as StaffsResponse)) as StaffsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StaffsResponse create() => StaffsResponse._();
  StaffsResponse createEmptyInstance() => create();
  static $pb.PbList<StaffsResponse> createRepeated() => $pb.PbList<StaffsResponse>();
  @$core.pragma('dart2js:noInline')
  static StaffsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StaffsResponse>(create);
  static StaffsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get statusCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set statusCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatusCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatusCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$1.AUser> get data => $_getList(2);
}

class StaffResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StaffResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusCode', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$1.AUser>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: $1.AUser.create)
    ..hasRequiredFields = false
  ;

  StaffResponse._() : super();
  factory StaffResponse({
    $core.int? statusCode,
    $core.String? message,
    $1.AUser? data,
  }) {
    final _result = create();
    if (statusCode != null) {
      _result.statusCode = statusCode;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory StaffResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StaffResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StaffResponse clone() => StaffResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StaffResponse copyWith(void Function(StaffResponse) updates) => super.copyWith((message) => updates(message as StaffResponse)) as StaffResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StaffResponse create() => StaffResponse._();
  StaffResponse createEmptyInstance() => create();
  static $pb.PbList<StaffResponse> createRepeated() => $pb.PbList<StaffResponse>();
  @$core.pragma('dart2js:noInline')
  static StaffResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StaffResponse>(create);
  static StaffResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get statusCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set statusCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatusCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatusCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $1.AUser get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($1.AUser v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  $1.AUser ensureData() => $_ensure(2);
}

