class Suppliersmodel {
    bool success;
    int count;
    List<Supplier> suppliers;

    Suppliersmodel({
        required this.success,
        required this.count,
        required this.suppliers,
    });

}

class Supplier {
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

    Supplier({
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
