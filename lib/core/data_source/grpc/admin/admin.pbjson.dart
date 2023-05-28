///
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use examineRealEstateRequestDescriptor instead')
const ExamineRealEstateRequest$json = const {
  '1': 'ExamineRealEstateRequest',
  '2': const [
    const {'1': 're_id', '3': 1, '4': 1, '5': 5, '10': 'reId'},
  ],
};

/// Descriptor for `ExamineRealEstateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List examineRealEstateRequestDescriptor = $convert.base64Decode('ChhFeGFtaW5lUmVhbEVzdGF0ZVJlcXVlc3QSEwoFcmVfaWQYASABKAVSBHJlSWQ=');
@$core.Deprecated('Use rejectRealEstateRequestDescriptor instead')
const RejectRealEstateRequest$json = const {
  '1': 'RejectRealEstateRequest',
  '2': const [
    const {'1': 're_id', '3': 1, '4': 1, '5': 5, '10': 'reId'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `RejectRealEstateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rejectRealEstateRequestDescriptor = $convert.base64Decode('ChdSZWplY3RSZWFsRXN0YXRlUmVxdWVzdBITCgVyZV9pZBgBIAEoBVIEcmVJZBIWCgZyZWFzb24YAiABKAlSBnJlYXNvbg==');
@$core.Deprecated('Use rejectTourRequestDescriptor instead')
const RejectTourRequest$json = const {
  '1': 'RejectTourRequest',
  '2': const [
    const {'1': 'tour_id', '3': 1, '4': 1, '5': 5, '10': 'tourId'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `RejectTourRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rejectTourRequestDescriptor = $convert.base64Decode('ChFSZWplY3RUb3VyUmVxdWVzdBIXCgd0b3VyX2lkGAEgASgFUgZ0b3VySWQSFgoGcmVhc29uGAIgASgJUgZyZWFzb24=');
@$core.Deprecated('Use assignStaffForTourRequestDescriptor instead')
const AssignStaffForTourRequest$json = const {
  '1': 'AssignStaffForTourRequest',
  '2': const [
    const {'1': 'tour_id', '3': 1, '4': 1, '5': 5, '10': 'tourId'},
    const {'1': 'staff_id', '3': 2, '4': 1, '5': 5, '10': 'staffId'},
  ],
};

/// Descriptor for `AssignStaffForTourRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignStaffForTourRequestDescriptor = $convert.base64Decode('ChlBc3NpZ25TdGFmZkZvclRvdXJSZXF1ZXN0EhcKB3RvdXJfaWQYASABKAVSBnRvdXJJZBIZCghzdGFmZl9pZBgCIAEoBVIHc3RhZmZJZA==');
@$core.Deprecated('Use getStaffsRequestDescriptor instead')
const GetStaffsRequest$json = const {
  '1': 'GetStaffsRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `GetStaffsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStaffsRequestDescriptor = $convert.base64Decode('ChBHZXRTdGFmZnNSZXF1ZXN0EhIKBHBhZ2UYASABKAVSBHBhZ2USFAoFbGltaXQYAiABKAVSBWxpbWl0');
@$core.Deprecated('Use getStaffByIdRequestDescriptor instead')
const GetStaffByIdRequest$json = const {
  '1': 'GetStaffByIdRequest',
  '2': const [
    const {'1': 'staff_id', '3': 1, '4': 1, '5': 5, '10': 'staffId'},
  ],
};

/// Descriptor for `GetStaffByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStaffByIdRequestDescriptor = $convert.base64Decode('ChNHZXRTdGFmZkJ5SWRSZXF1ZXN0EhkKCHN0YWZmX2lkGAEgASgFUgdzdGFmZklk');
@$core.Deprecated('Use staffsResponseDescriptor instead')
const StaffsResponse$json = const {
  '1': 'StaffsResponse',
  '2': const [
    const {'1': 'status_code', '3': 1, '4': 1, '5': 5, '10': 'statusCode'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.pb.AUser', '10': 'data'},
  ],
};

/// Descriptor for `StaffsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffsResponseDescriptor = $convert.base64Decode('Cg5TdGFmZnNSZXNwb25zZRIfCgtzdGF0dXNfY29kZRgBIAEoBVIKc3RhdHVzQ29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEh0KBGRhdGEYAyADKAsyCS5wYi5BVXNlclIEZGF0YQ==');
@$core.Deprecated('Use staffResponseDescriptor instead')
const StaffResponse$json = const {
  '1': 'StaffResponse',
  '2': const [
    const {'1': 'status_code', '3': 1, '4': 1, '5': 5, '10': 'statusCode'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.AUser', '10': 'data'},
  ],
};

/// Descriptor for `StaffResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffResponseDescriptor = $convert.base64Decode('Cg1TdGFmZlJlc3BvbnNlEh8KC3N0YXR1c19jb2RlGAEgASgFUgpzdGF0dXNDb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USHQoEZGF0YRgDIAEoCzIJLnBiLkFVc2VyUgRkYXRh');
