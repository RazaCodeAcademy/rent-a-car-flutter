class Ordersmodel {
    bool success;
    int count;
    List<Order> orders;

    Ordersmodel({
        required this.success,
        required this.count,
        required this.orders,
    });

}

class Order {
    String id;
    String orderType;
    int rate;
    int duration;
    String returnLocation;
    int dailyKmLimit;
    String notes;
    List<Extrafee> extrafee;
    List<Extrafee> transactionArray;
    CustomerId customerId;
    VehicleId vehicleId;
    ReservationId reservationId;
    DateTime createdAt;
    int v;

    Order({
        required this.id,
        required this.orderType,
        required this.rate,
        required this.duration,
        required this.returnLocation,
        required this.dailyKmLimit,
        required this.notes,
        required this.extrafee,
        required this.transactionArray,
        required this.customerId,
        required this.vehicleId,
        required this.reservationId,
        required this.createdAt,
        required this.v,
    });

}

class CustomerId {
    String id;
    String name;
    String email;
    String role;
    bool isActive;
    UserDetail userDetail;
    String phone;
    DateTime createdAt;
    int v;

    CustomerId({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.isActive,
        required this.userDetail,
        required this.phone,
        required this.createdAt,
        required this.v,
    });

}

class UserDetail {
    String profiletype;
    String profilecategory;
    String preferredlang;
    String nameAr;
    String nationalNo;
    String identityCard;
    DateTime identityExpiryDate;
    String gender;
    String nationality;
    String vistVisaNo;
    DateTime dob;
    String drivingLicense;
    DateTime drivingLicenseExpiryDate;
    String pobox;
    String workAddress;
    String visaCategory;
    String passportNo;
    DateTime passportExpiryDate;
    String taxTreatment;
    String trn;
    String sopVat;
    String homeAddress;

    UserDetail({
        required this.profiletype,
        required this.profilecategory,
        required this.preferredlang,
        required this.nameAr,
        required this.nationalNo,
        required this.identityCard,
        required this.identityExpiryDate,
        required this.gender,
        required this.nationality,
        required this.vistVisaNo,
        required this.dob,
        required this.drivingLicense,
        required this.drivingLicenseExpiryDate,
        required this.pobox,
        required this.workAddress,
        required this.visaCategory,
        required this.passportNo,
        required this.passportExpiryDate,
        required this.taxTreatment,
        required this.trn,
        required this.sopVat,
        required this.homeAddress,
    });

}

class Extrafee {
    DateTime date;
    String description;
    String category;
    int amount;
    String id;
    String? paymentMethod;

    Extrafee({
        required this.date,
        required this.description,
        required this.category,
        required this.amount,
        required this.id,
        this.paymentMethod,
    });

}

class ReservationId {
    String id;
    String pickupLocation;
    String pickupDate;
    String returnLocation;
    String returnDate;
    String vehicleCategory;
    String rate;
    String rateType;
    String reservationStatus;
    String reference;
    String notes;
    bool isConvertedToOrder;
    String reservationAmount;
    CustomerId customerId;
    VehicleId vehicleId;
    DateTime createdAt;
    int v;

    ReservationId({
        required this.id,
        required this.pickupLocation,
        required this.pickupDate,
        required this.returnLocation,
        required this.returnDate,
        required this.vehicleCategory,
        required this.rate,
        required this.rateType,
        required this.reservationStatus,
        required this.reference,
        required this.notes,
        required this.isConvertedToOrder,
        required this.reservationAmount,
        required this.customerId,
        required this.vehicleId,
        required this.createdAt,
        required this.v,
    });

}

class VehicleId {
    String id;
    String vehicleEngine;
    String vehicleYear;
    String trafficNumber;
    String plateSource;
    String plateNumber;
    String plateCategory;
    String licenseIssuedDate;
    String licenseExpiryDate;
    String insuranceExpiryDate;
    String insuranceProviderName;
    String chassisNumber;
    String currentOdometer;
    String dailyOdometerLimit;
    String odometerFeePerUnit;
    String currentFuel;
    String dailyRate;
    String weeklyRate;
    String monthlyRate;
    String yearlyRate;
    String currentLocation;
    String currentStatus;
    String vehicleCategory;
    Id modelId;
    Id colorId;
    Id makeId;
    DateTime createdAt;
    int v;

    VehicleId({
        required this.id,
        required this.vehicleEngine,
        required this.vehicleYear,
        required this.trafficNumber,
        required this.plateSource,
        required this.plateNumber,
        required this.plateCategory,
        required this.licenseIssuedDate,
        required this.licenseExpiryDate,
        required this.insuranceExpiryDate,
        required this.insuranceProviderName,
        required this.chassisNumber,
        required this.currentOdometer,
        required this.dailyOdometerLimit,
        required this.odometerFeePerUnit,
        required this.currentFuel,
        required this.dailyRate,
        required this.weeklyRate,
        required this.monthlyRate,
        required this.yearlyRate,
        required this.currentLocation,
        required this.currentStatus,
        required this.vehicleCategory,
        required this.modelId,
        required this.colorId,
        required this.makeId,
        required this.createdAt,
        required this.v,
    });

}

class Id {
    String id;
    String name;
    DateTime createdAt;
    int v;
    Id? makeId;

    Id({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.v,
        this.makeId,
    });

}
