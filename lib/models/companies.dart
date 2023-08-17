class Companiesmodel {
    bool success;
    int count;
    Pagination pagination;
    List<Datum> data;

    Companiesmodel({
        required this.success,
        required this.count,
        required this.pagination,
        required this.data,
    });

}

class Datum {
    String id;
    String name;
    String company;
    String address;
    String postcode;
    String city;
    String state;
    String phone1;
    String phone2;
    String email;
    String license;
    String comment;
    bool isActive;
    User user;
    DateTime createdAt;
    int v;

    Datum({
        required this.id,
        required this.name,
        required this.company,
        required this.address,
        required this.postcode,
        required this.city,
        required this.state,
        required this.phone1,
        required this.phone2,
        required this.email,
        required this.license,
        required this.comment,
        required this.isActive,
        required this.user,
        required this.createdAt,
        required this.v,
    });

}

class User {
    String id;
    String name;
    String email;
    Role role;
    bool isActive;
    DateTime createdAt;
    int v;
    String? companyId;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.role,
        required this.isActive,
        required this.createdAt,
        required this.v,
        this.companyId,
    });

}

enum Role {
    COMPANY
}

class Pagination {
    Pagination();
}
