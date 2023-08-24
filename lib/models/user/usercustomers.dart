import 'dart:convert';

UserCustomerModel userResponseJson(String str) =>
    UserCustomerModel.fromJson(json.decode(str));

class UserCustomerModel {
  bool? success;
  int? count;
  List<Data>? data;

  UserCustomerModel({this.success, this.count, this.data});

  UserCustomerModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['count'] = this.count;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? email;
  String? role;
  bool? isActive;
  UserDetail? userDetail;
  String? phone;
  String? createdAt;
  int? iV;

  Data(
      {this.sId,
      this.name,
      this.email,
      this.role,
      this.isActive,
      this.userDetail,
      this.phone,
      this.createdAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    isActive = json['is_active'];
    userDetail = json['userDetail'] != null
        ? new UserDetail.fromJson(json['userDetail'])
        : null;
    phone = json['phone'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['is_active'] = this.isActive;
    if (this.userDetail != null) {
      data['userDetail'] = this.userDetail!.toJson();
    }
    data['phone'] = this.phone;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class UserDetail {
  String? profiletype;
  String? profilecategory;
  String? gender;
  String? nationality;
  String? documentType;
  String? documentNo;
  String? documentExpiry;
  String? dob;
  String? drivingLicense;
  String? drivingLicenseExpiryDate;
  String? workAddress;
  String? homeAddress;
  String? taxTreatment;
  String? trn;
  String? sopVat;

  UserDetail(
      {this.profiletype,
      this.profilecategory,
      this.gender,
      this.nationality,
      this.documentType,
      this.documentNo,
      this.documentExpiry,
      this.dob,
      this.drivingLicense,
      this.drivingLicenseExpiryDate,
      this.workAddress,
      this.homeAddress,
      this.taxTreatment,
      this.trn,
      this.sopVat});

  UserDetail.fromJson(Map<String, dynamic> json) {
    profiletype = json['profiletype'];
    profilecategory = json['profilecategory'];
    gender = json['gender'];
    nationality = json['nationality'];
    documentType = json['document_type'];
    documentNo = json['document_no'];
    documentExpiry = json['document_expiry'];
    dob = json['dob'];
    drivingLicense = json['driving_license'];
    drivingLicenseExpiryDate = json['driving_license_expiry_date'];
    workAddress = json['work_address'];
    homeAddress = json['home_address'];
    taxTreatment = json['tax_treatment'];
    trn = json['trn'];
    sopVat = json['sop_vat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profiletype'] = this.profiletype;
    data['profilecategory'] = this.profilecategory;
    data['gender'] = this.gender;
    data['nationality'] = this.nationality;
    data['document_type'] = this.documentType;
    data['document_no'] = this.documentNo;
    data['document_expiry'] = this.documentExpiry;
    data['dob'] = this.dob;
    data['driving_license'] = this.drivingLicense;
    data['driving_license_expiry_date'] = this.drivingLicenseExpiryDate;
    data['work_address'] = this.workAddress;
    data['home_address'] = this.homeAddress;
    data['tax_treatment'] = this.taxTreatment;
    data['trn'] = this.trn;
    data['sop_vat'] = this.sopVat;
    return data;
  }
}