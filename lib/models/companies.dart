class CompanyResponcehModel {
  bool? success;
  int? count;
  Pagination? pagination;
  List<Data>? data;

  CompanyResponcehModel({this.success, this.count, this.pagination, this.data});

  CompanyResponcehModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
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
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  Pagination({dynamic});

  Pagination.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? company;
  String? address;
  String? postcode;
  String? city;
  String? state;
  String? phone1;
  String? phone2;
  String? email;
  String? license;
  String? comment;
  bool? isActive;
  User? user;
  String? createdAt;
  int? iV;

  Data(
      {this.sId,
      this.name,
      this.company,
      this.address,
      this.postcode,
      this.city,
      this.state,
      this.phone1,
      this.phone2,
      this.email,
      this.license,
      this.comment,
      this.isActive,
      this.user,
      this.createdAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    company = json['company'];
    address = json['address'];
    postcode = json['postcode'];
    city = json['city'];
    state = json['state'];
    phone1 = json['phone1'];
    phone2 = json['phone2'];
    email = json['email'];
    license = json['license'];
    comment = json['comment'];
    isActive = json['is_active'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['company'] = this.company;
    data['address'] = this.address;
    data['postcode'] = this.postcode;
    data['city'] = this.city;
    data['state'] = this.state;
    data['phone1'] = this.phone1;
    data['phone2'] = this.phone2;
    data['email'] = this.email;
    data['license'] = this.license;
    data['comment'] = this.comment;
    data['is_active'] = this.isActive;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class User {
  String? sId;
  String? name;
  String? email;
  String? role;
  bool? isActive;
  String? createdAt;
  int? iV;
  String? companyId;

  User(
      {this.sId,
      this.name,
      this.email,
      this.role,
      this.isActive,
      this.createdAt,
      this.iV,
      this.companyId});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    isActive = json['is_active'];
    createdAt = json['createdAt'];
    iV = json['__v'];
    companyId = json['company_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['is_active'] = this.isActive;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    data['company_id'] = this.companyId;
    return data;
  }
}
