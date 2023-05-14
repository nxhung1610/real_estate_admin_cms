///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'admin.pb.dart' as $0;
import '../core/response.pb.dart' as $1;
export 'service.pb.dart';

class AdminServiceClient extends $grpc.Client {
  static final _$examineRealEstate =
      $grpc.ClientMethod<$0.ExamineRealEstateRequest, $1.ResponseString>(
          '/pb.AdminService/ExamineRealEstate',
          ($0.ExamineRealEstateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ResponseString.fromBuffer(value));
  static final _$rejectRealEstate =
      $grpc.ClientMethod<$0.RejectRealEstateRequest, $1.ResponseString>(
          '/pb.AdminService/RejectRealEstate',
          ($0.RejectRealEstateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ResponseString.fromBuffer(value));
  static final _$rejectTour =
      $grpc.ClientMethod<$0.RejectTourRequest, $1.ResponseString>(
          '/pb.AdminService/RejectTour',
          ($0.RejectTourRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ResponseString.fromBuffer(value));
  static final _$assignStaffForTour =
      $grpc.ClientMethod<$0.AssignStaffForTourRequest, $1.ResponseString>(
          '/pb.AdminService/AssignStaffForTour',
          ($0.AssignStaffForTourRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ResponseString.fromBuffer(value));
  static final _$getStaffById =
      $grpc.ClientMethod<$0.GetStaffByIdRequest, $0.StaffResponse>(
          '/pb.AdminService/GetStaffById',
          ($0.GetStaffByIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StaffResponse.fromBuffer(value));
  static final _$getStaffs =
      $grpc.ClientMethod<$0.GetStaffsRequest, $0.StaffsResponse>(
          '/pb.AdminService/GetStaffs',
          ($0.GetStaffsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StaffsResponse.fromBuffer(value));

  AdminServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ResponseString> examineRealEstate(
      $0.ExamineRealEstateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$examineRealEstate, request, options: options);
  }

  $grpc.ResponseFuture<$1.ResponseString> rejectRealEstate(
      $0.RejectRealEstateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rejectRealEstate, request, options: options);
  }

  $grpc.ResponseFuture<$1.ResponseString> rejectTour(
      $0.RejectTourRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rejectTour, request, options: options);
  }

  $grpc.ResponseFuture<$1.ResponseString> assignStaffForTour(
      $0.AssignStaffForTourRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignStaffForTour, request, options: options);
  }

  $grpc.ResponseFuture<$0.StaffResponse> getStaffById(
      $0.GetStaffByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStaffById, request, options: options);
  }

  $grpc.ResponseFuture<$0.StaffsResponse> getStaffs($0.GetStaffsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStaffs, request, options: options);
  }
}

abstract class AdminServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.AdminService';

  AdminServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ExamineRealEstateRequest, $1.ResponseString>(
            'ExamineRealEstate',
            examineRealEstate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ExamineRealEstateRequest.fromBuffer(value),
            ($1.ResponseString value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RejectRealEstateRequest, $1.ResponseString>(
            'RejectRealEstate',
            rejectRealEstate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RejectRealEstateRequest.fromBuffer(value),
            ($1.ResponseString value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RejectTourRequest, $1.ResponseString>(
        'RejectTour',
        rejectTour_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RejectTourRequest.fromBuffer(value),
        ($1.ResponseString value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AssignStaffForTourRequest, $1.ResponseString>(
            'AssignStaffForTour',
            assignStaffForTour_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AssignStaffForTourRequest.fromBuffer(value),
            ($1.ResponseString value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStaffByIdRequest, $0.StaffResponse>(
        'GetStaffById',
        getStaffById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetStaffByIdRequest.fromBuffer(value),
        ($0.StaffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStaffsRequest, $0.StaffsResponse>(
        'GetStaffs',
        getStaffs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStaffsRequest.fromBuffer(value),
        ($0.StaffsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ResponseString> examineRealEstate_Pre($grpc.ServiceCall call,
      $async.Future<$0.ExamineRealEstateRequest> request) async {
    return examineRealEstate(call, await request);
  }

  $async.Future<$1.ResponseString> rejectRealEstate_Pre($grpc.ServiceCall call,
      $async.Future<$0.RejectRealEstateRequest> request) async {
    return rejectRealEstate(call, await request);
  }

  $async.Future<$1.ResponseString> rejectTour_Pre($grpc.ServiceCall call,
      $async.Future<$0.RejectTourRequest> request) async {
    return rejectTour(call, await request);
  }

  $async.Future<$1.ResponseString> assignStaffForTour_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AssignStaffForTourRequest> request) async {
    return assignStaffForTour(call, await request);
  }

  $async.Future<$0.StaffResponse> getStaffById_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetStaffByIdRequest> request) async {
    return getStaffById(call, await request);
  }

  $async.Future<$0.StaffsResponse> getStaffs_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetStaffsRequest> request) async {
    return getStaffs(call, await request);
  }

  $async.Future<$1.ResponseString> examineRealEstate(
      $grpc.ServiceCall call, $0.ExamineRealEstateRequest request);
  $async.Future<$1.ResponseString> rejectRealEstate(
      $grpc.ServiceCall call, $0.RejectRealEstateRequest request);
  $async.Future<$1.ResponseString> rejectTour(
      $grpc.ServiceCall call, $0.RejectTourRequest request);
  $async.Future<$1.ResponseString> assignStaffForTour(
      $grpc.ServiceCall call, $0.AssignStaffForTourRequest request);
  $async.Future<$0.StaffResponse> getStaffById(
      $grpc.ServiceCall call, $0.GetStaffByIdRequest request);
  $async.Future<$0.StaffsResponse> getStaffs(
      $grpc.ServiceCall call, $0.GetStaffsRequest request);
}
