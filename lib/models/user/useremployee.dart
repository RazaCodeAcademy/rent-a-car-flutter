class Usersemployeemodel {
    bool success;
    int count;
    List<Datum> data;

    Usersemployeemodel({
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
    DateTime createdAt;
    int v;
    UserDetail userDetail;
    String? phone;

    Datum({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.isActive,
        required this.createdAt,
        required this.v,
        required this.userDetail,
        this.phone,
    });

}

class UserDetail {
    String? id;
    String profiletype;
    String profilecategory;
    String preferredlang;
    String? nameEng;
    String nameAr;
    String nationalNo;
    String identityCard;
    DateTime? identityIssueDate;
    DateTime identityExpiryDate;
    String gender;
    String nationality;
    String vistVisaNo;
    DateTime dob;
    String? pob;
    String? phone;
    String drivingLicense;
    String? drivingLicenseIssueBy;
    DateTime? drivingLicenseIssueDate;
    DateTime drivingLicenseExpiryDate;
    String homeAddress;
    String? homePhone;
    String pobox;
    String workAddress;
    String? mobileNo;
    String? profession;
    String? workPhone;
    String passportNo;
    DateTime? passportIssueDate;
    DateTime passportExpiryDate;
    String? motherName;
    String visaCategory;
    String? category;
    String? marketingPreference;
    String taxTreatment;
    String trn;
    String sopVat;
    String? user;
    int? v;

    UserDetail({
        this.id,
        required this.profiletype,
        required this.profilecategory,
        required this.preferredlang,
        this.nameEng,
        required this.nameAr,
        required this.nationalNo,
        required this.identityCard,
        this.identityIssueDate,
        required this.identityExpiryDate,
        required this.gender,
        required this.nationality,
        required this.vistVisaNo,
        required this.dob,
        this.pob,
        this.phone,
        required this.drivingLicense,
        this.drivingLicenseIssueBy,
        this.drivingLicenseIssueDate,
        required this.drivingLicenseExpiryDate,
        required this.homeAddress,
        this.homePhone,
        required this.pobox,
        required this.workAddress,
        this.mobileNo,
        this.profession,
        this.workPhone,
        required this.passportNo,
        this.passportIssueDate,
        required this.passportExpiryDate,
        this.motherName,
        required this.visaCategory,
        this.category,
        this.marketingPreference,
        required this.taxTreatment,
        required this.trn,
        required this.sopVat,
        this.user,
        this.v,
    });

}
