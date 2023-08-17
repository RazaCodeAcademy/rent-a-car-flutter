class Purchasedordermodel {
    bool success;
    int count;
    List<PurchasedordermodelPurchaseOrder> purchaseOrders;

    Purchasedordermodel({
        required this.success,
        required this.count,
        required this.purchaseOrders,
    });

}

class PurchasedordermodelPurchaseOrder {
    String id;
    SupplierId supplierId;
    VehicleId vehicleId;
    EmployeeId? employeeId;
    List<PurchaseOrderPurchaseOrder> purchaseOrder;
    int totalQty;
    int totalDiscount;
    int totalPay;
    int totalTax;
    double totalBalance;
    DateTime createdAt;
    int v;

    PurchasedordermodelPurchaseOrder({
        required this.id,
        required this.supplierId,
        required this.vehicleId,
        required this.employeeId,
        required this.purchaseOrder,
        required this.totalQty,
        required this.totalDiscount,
        required this.totalPay,
        required this.totalTax,
        required this.totalBalance,
        required this.createdAt,
        required this.v,
    });

}

class EmployeeId {
    String id;
    String name;
    String email;
    String role;
    bool isActive;
    DateTime createdAt;
    int v;
    UserDetail userDetail;

    EmployeeId({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.isActive,
        required this.createdAt,
        required this.v,
        required this.userDetail,
    });

}

class UserDetail {
    String id;
    String profiletype;
    String profilecategory;
    String preferredlang;
    String nameEng;
    String nameAr;
    String nationalNo;
    String identityCard;
    DateTime identityIssueDate;
    DateTime identityExpiryDate;
    String gender;
    String nationality;
    String vistVisaNo;
    DateTime dob;
    String pob;
    String phone;
    String drivingLicense;
    String drivingLicenseIssueBy;
    DateTime drivingLicenseIssueDate;
    DateTime drivingLicenseExpiryDate;
    String homeAddress;
    String homePhone;
    String pobox;
    String workAddress;
    String mobileNo;
    String profession;
    String workPhone;
    String passportNo;
    DateTime passportIssueDate;
    DateTime passportExpiryDate;
    String motherName;
    String visaCategory;
    String category;
    String marketingPreference;
    String taxTreatment;
    String trn;
    String sopVat;
    String user;
    int v;

    UserDetail({
        required this.id,
        required this.profiletype,
        required this.profilecategory,
        required this.preferredlang,
        required this.nameEng,
        required this.nameAr,
        required this.nationalNo,
        required this.identityCard,
        required this.identityIssueDate,
        required this.identityExpiryDate,
        required this.gender,
        required this.nationality,
        required this.vistVisaNo,
        required this.dob,
        required this.pob,
        required this.phone,
        required this.drivingLicense,
        required this.drivingLicenseIssueBy,
        required this.drivingLicenseIssueDate,
        required this.drivingLicenseExpiryDate,
        required this.homeAddress,
        required this.homePhone,
        required this.pobox,
        required this.workAddress,
        required this.mobileNo,
        required this.profession,
        required this.workPhone,
        required this.passportNo,
        required this.passportIssueDate,
        required this.passportExpiryDate,
        required this.motherName,
        required this.visaCategory,
        required this.category,
        required this.marketingPreference,
        required this.taxTreatment,
        required this.trn,
        required this.sopVat,
        required this.user,
        required this.v,
    });

}

class PurchaseOrderPurchaseOrder {
    String itemDetail;
    String category;
    int qty;
    int rate;
    int discount;
    int total;
    int tax;
    double? balance;
    String id;
    String? taxType;

    PurchaseOrderPurchaseOrder({
        required this.itemDetail,
        required this.category,
        required this.qty,
        required this.rate,
        required this.discount,
        required this.total,
        required this.tax,
        this.balance,
        required this.id,
        this.taxType,
    });

}

class SupplierId {
    String id;
    String businessName;
    String businessAr;
    String traderLicenseNumber;
    String jobTitle;
    String phone;
    String email;
    String website;
    String fax;
    String pobox;
    String address;
    String country;
    String category;
    String taxSetting;
    String trn;
    String sop;
    DateTime createdAt;
    int v;

    SupplierId({
        required this.id,
        required this.businessName,
        required this.businessAr,
        required this.traderLicenseNumber,
        required this.jobTitle,
        required this.phone,
        required this.email,
        required this.website,
        required this.fax,
        required this.pobox,
        required this.address,
        required this.country,
        required this.category,
        required this.taxSetting,
        required this.trn,
        required this.sop,
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
