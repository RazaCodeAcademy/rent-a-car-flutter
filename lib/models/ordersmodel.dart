import 'dart:convert';

OrderResponceModel userResponseJson(String str) =>
    OrderResponceModel.fromJson(json.decode(str));


class OrderResponceModel {
  bool? success;
  int? count;
  List<Orders>? orders;

  OrderResponceModel({this.success, this.count, this.orders});

  OrderResponceModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    count = json['count'];
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders!.add(new Orders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['count'] = this.count;
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Orders {
  String? sId;
  String? orderType;
  int? rate;
  int? duration;
  String? returnLocation;
  int? dailyKmLimit;
  String? notes;
  List<Extrafee>? extrafee;
  List<TransactionArray>? transactionArray;
  Null? customerId;
  VehicleId? vehicleId;
  Null? reservationId;
  String? createdAt;
  int? iV;

  Orders(
      {this.sId,
      this.orderType,
      this.rate,
      this.duration,
      this.returnLocation,
      this.dailyKmLimit,
      this.notes,
      this.extrafee,
      this.transactionArray,
      this.customerId,
      this.vehicleId,
      this.reservationId,
      this.createdAt,
      this.iV});

  Orders.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    orderType = json['order_type'];
    rate = json['rate'];
    duration = json['duration'];
    returnLocation = json['return_location'];
    dailyKmLimit = json['daily_km_limit'];
    notes = json['notes'];
    if (json['extrafee'] != null) {
      extrafee = <Extrafee>[];
      json['extrafee'].forEach((v) {
        extrafee!.add(new Extrafee.fromJson(v));
      });
    }
    if (json['transaction_Array'] != null) {
      transactionArray = <TransactionArray>[];
      json['transaction_Array'].forEach((v) {
        transactionArray!.add(new TransactionArray.fromJson(v));
      });
    }
    customerId = json['customer_id'];
    vehicleId = json['vehicle_id'] != null
        ? new VehicleId.fromJson(json['vehicle_id'])
        : null;
    reservationId = json['reservation_id'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['order_type'] = this.orderType;
    data['rate'] = this.rate;
    data['duration'] = this.duration;
    data['return_location'] = this.returnLocation;
    data['daily_km_limit'] = this.dailyKmLimit;
    data['notes'] = this.notes;
    if (this.extrafee != null) {
      data['extrafee'] = this.extrafee!.map((v) => v.toJson()).toList();
    }
    if (this.transactionArray != null) {
      data['transaction_Array'] =
          this.transactionArray!.map((v) => v.toJson()).toList();
    }
    data['customer_id'] = this.customerId;
    if (this.vehicleId != null) {
      data['vehicle_id'] = this.vehicleId!.toJson();
    }
    data['reservation_id'] = this.reservationId;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Extrafee {
  String? date;
  String? description;
  String? category;
  int? amount;
  String? sId;

  Extrafee({this.date, this.description, this.category, this.amount, this.sId});

  Extrafee.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    description = json['description'];
    category = json['category'];
    amount = json['amount'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['description'] = this.description;
    data['category'] = this.category;
    data['amount'] = this.amount;
    data['_id'] = this.sId;
    return data;
  }
}

class TransactionArray {
  String? date;
  String? description;
  String? category;
  String? paymentMethod;
  int? amount;
  String? sId;

  TransactionArray(
      {this.date,
      this.description,
      this.category,
      this.paymentMethod,
      this.amount,
      this.sId});

  TransactionArray.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    description = json['description'];
    category = json['category'];
    paymentMethod = json['payment_method'];
    amount = json['amount'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['description'] = this.description;
    data['category'] = this.category;
    data['payment_method'] = this.paymentMethod;
    data['amount'] = this.amount;
    data['_id'] = this.sId;
    return data;
  }
}

class VehicleId {
  String? sId;
  String? vehicleEngine;
  String? vehicleYear;
  String? trafficNumber;
  String? plateSource;
  String? plateNumber;
  String? plateCategory;
  String? licenseIssuedDate;
  String? licenseExpiryDate;
  String? insuranceExpiryDate;
  String? insuranceProviderName;
  String? chassisNumber;
  String? currentOdometer;
  String? dailyOdometerLimit;
  String? odometerFeePerUnit;
  String? currentFuel;
  String? dailyRate;
  String? weeklyRate;
  String? monthlyRate;
  String? yearlyRate;
  String? currentLocation;
  String? currentStatus;
  String? vehicleCategory;
  ModelId? modelId;
  MakeId? colorId;
  MakeId? makeId;
  String? createdAt;
  int? iV;

  VehicleId(
      {this.sId,
      this.vehicleEngine,
      this.vehicleYear,
      this.trafficNumber,
      this.plateSource,
      this.plateNumber,
      this.plateCategory,
      this.licenseIssuedDate,
      this.licenseExpiryDate,
      this.insuranceExpiryDate,
      this.insuranceProviderName,
      this.chassisNumber,
      this.currentOdometer,
      this.dailyOdometerLimit,
      this.odometerFeePerUnit,
      this.currentFuel,
      this.dailyRate,
      this.weeklyRate,
      this.monthlyRate,
      this.yearlyRate,
      this.currentLocation,
      this.currentStatus,
      this.vehicleCategory,
      this.modelId,
      this.colorId,
      this.makeId,
      this.createdAt,
      this.iV});

  VehicleId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    vehicleEngine = json['vehicle_engine'];
    vehicleYear = json['vehicle_year'];
    trafficNumber = json['traffic_number'];
    plateSource = json['plate_source'];
    plateNumber = json['plate_number'];
    plateCategory = json['plate_category'];
    licenseIssuedDate = json['license_issued_date'];
    licenseExpiryDate = json['license_expiry_date'];
    insuranceExpiryDate = json['insurance_expiry_date'];
    insuranceProviderName = json['insurance_provider_name'];
    chassisNumber = json['chassis_number'];
    currentOdometer = json['current_Odometer'];
    dailyOdometerLimit = json['daily_Odometer_limit'];
    odometerFeePerUnit = json['Odometer_fee_per_unit'];
    currentFuel = json['current_fuel'];
    dailyRate = json['daily_rate'];
    weeklyRate = json['weekly_rate'];
    monthlyRate = json['monthly_rate'];
    yearlyRate = json['yearly_rate'];
    currentLocation = json['current_location'];
    currentStatus = json['current_status'];
    vehicleCategory = json['vehicle_category'];
    modelId = json['model_id'] != null
        ? new ModelId.fromJson(json['model_id'])
        : null;
    colorId =
        json['color_id'] != null ? new MakeId.fromJson(json['color_id']) : null;
    makeId =
        json['make_id'] != null ? new MakeId.fromJson(json['make_id']) : null;
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['vehicle_engine'] = this.vehicleEngine;
    data['vehicle_year'] = this.vehicleYear;
    data['traffic_number'] = this.trafficNumber;
    data['plate_source'] = this.plateSource;
    data['plate_number'] = this.plateNumber;
    data['plate_category'] = this.plateCategory;
    data['license_issued_date'] = this.licenseIssuedDate;
    data['license_expiry_date'] = this.licenseExpiryDate;
    data['insurance_expiry_date'] = this.insuranceExpiryDate;
    data['insurance_provider_name'] = this.insuranceProviderName;
    data['chassis_number'] = this.chassisNumber;
    data['current_Odometer'] = this.currentOdometer;
    data['daily_Odometer_limit'] = this.dailyOdometerLimit;
    data['Odometer_fee_per_unit'] = this.odometerFeePerUnit;
    data['current_fuel'] = this.currentFuel;
    data['daily_rate'] = this.dailyRate;
    data['weekly_rate'] = this.weeklyRate;
    data['monthly_rate'] = this.monthlyRate;
    data['yearly_rate'] = this.yearlyRate;
    data['current_location'] = this.currentLocation;
    data['current_status'] = this.currentStatus;
    data['vehicle_category'] = this.vehicleCategory;
    if (this.modelId != null) {
      data['model_id'] = this.modelId!.toJson();
    }
    if (this.colorId != null) {
      data['color_id'] = this.colorId!.toJson();
    }
    if (this.makeId != null) {
      data['make_id'] = this.makeId!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class ModelId {
  String? sId;
  String? name;
  String? createdAt;
  int? iV;
  MakeId? makeId;

  ModelId({this.sId, this.name, this.createdAt, this.iV, this.makeId});

  ModelId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    createdAt = json['createdAt'];
    iV = json['__v'];
    makeId =
        json['make_id'] != null ? new MakeId.fromJson(json['make_id']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    if (this.makeId != null) {
      data['make_id'] = this.makeId!.toJson();
    }
    return data;
  }
}

class MakeId {
  String? sId;
  String? name;
  String? createdAt;
  int? iV;

  MakeId({this.sId, this.name, this.createdAt, this.iV});

  MakeId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}