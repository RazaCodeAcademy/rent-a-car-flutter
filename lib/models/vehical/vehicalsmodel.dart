class Vehicalmodel {
    bool success;
    Count count;
    List<Vehicle> vehicles;

    Vehicalmodel({
        required this.success,
        required this.count,
        required this.vehicles,
    });

}

class Count {
    List<StatusCount> statusCounts;
    int totalCount;

    Count({
        required this.statusCounts,
        required this.totalCount,
    });

}

class StatusCount {
    Status status;
    int count;

    StatusCount({
        required this.status,
        required this.count,
    });

}

enum Status {
    AVAILABLE,
    BORROWED
}

class VehicleRate {
    String id;
    DateType dateType;
    String rateType;
    String rate;
    Vehicle vehicleId;
    DateTime createdAt;
    int v;

    VehicleRate({
        required this.id,
        required this.dateType,
        required this.rateType,
        required this.rate,
        required this.vehicleId,
        required this.createdAt,
        required this.v,
    });

}

class Vehicle {
    dynamic vehicleRates;
    VehicleId id;
    String vehicleEngine;
    String vehicleYear;
    String trafficNumber;
    PlateSource plateSource;
    String plateNumber;
    PlateCategory plateCategory;
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
    CurrentLocation currentLocation;
    Status currentStatus;
    VehicleCategory vehicleCategory;
    ColorIdClass modelId;
    ColorIdClass colorId;
    ColorIdClass makeId;
    DateTime createdAt;
    int v;

    Vehicle({
        this.vehicleRates,
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

enum DateType {
    DAILY,
    MONTHLY,
    WEEKLY,
    YEARLY
}

class ColorIdClass {
    ColorIdId id;
    String name;
    DateTime createdAt;
    int v;
    ColorIdClass? makeId;

    ColorIdClass({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.v,
        this.makeId,
    });

}

enum ColorIdId {
    THE_64994_BC59_ACC7267_FEDAB02_A,
    THE_64994_D93205_D0083_D68_CFE31,
    THE_64999709_BB5_BEDCEEF78_CFE1,
    THE_649_C2797_BE5_A4_BF741_DE654_F,
    THE_649_DFA6745_E9896_C2506_FF6_A,
    THE_64_A28_C7_F6_EF0_B03_E061_CF498,
    THE_64_A28_D3_CDC0_C73_E3_B9_C93181,
    THE_64_A2_AB59_DC0_C73_E3_B9_C93340
}

enum CurrentLocation {
    MAIN_PARKING,
    SHARJAH
}

enum VehicleId {
    THE_64_B6_A1623_F03761_FAC450_B68,
    THE_64_B9_A3_BB756_D5_AF8_AA1_FB1_F5,
    THE_64_B9_A3_C4756_D5_AF8_AA1_FB1_FA,
    THE_64_C5395400306512_D924_B8_E4,
    THE_64_D363484_C739926301612_C8
}

enum PlateCategory {
    A,
    E,
    THE_06,
    THE_43522_FG4_G
}

enum PlateSource {
    ABU_DHABI,
    DUBAI,
    THE_4234_FF34
}

enum VehicleCategory {
    LUXURY,
    SEDAN,
    SUV,
    TRUCK
}
