class Userscustomermodel {
    bool success;
    int count;
    List<Datum> data;

    Userscustomermodel({
        required this.success,
        required this.count,
        required this.data,
    });

}

class Datum {
    String id;
    String name;
    String email;
    String role;
    bool isActive;
    String phone;
    DateTime createdAt;
    int v;
    UserDetail userDetail;

    Datum({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.isActive,
        required this.phone,
        required this.createdAt,
        required this.v,
        required this.userDetail,
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
    String? phone;
    String drivingLicense;
    DateTime drivingLicenseExpiryDate;
    String homeAddress;
    String pobox;
    String workAddress;
    String passportNo;
    DateTime passportExpiryDate;
    String visaCategory;
    String taxTreatment;
    String trn;
    String sopVat;

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
        this.phone,
        required this.drivingLicense,
        required this.drivingLicenseExpiryDate,
        required this.homeAddress,
        required this.pobox,
        required this.workAddress,
        required this.passportNo,
        required this.passportExpiryDate,
        required this.visaCategory,
        required this.taxTreatment,
        required this.trn,
        required this.sopVat,
    });

}
