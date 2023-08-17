class Vehicalmentenancesmodel {
    bool success;
    int count;
    List<VehicleMaintenance> vehicleMaintenances;

    Vehicalmentenancesmodel({
        required this.success,
        required this.count,
        required this.vehicleMaintenances,
    });

}

class VehicleMaintenance {
    String id;
    DateTime? date;
    List<MaintenanceWithType> maintenanceWithTypes;
    String? vehicleId;
    Id makeId;
    Id modelId;
    DateTime createdAt;
    int v;
    String? plateNumber;
    String? odometer;
    String? vehicle;

    VehicleMaintenance({
        required this.id,
        required this.date,
        required this.maintenanceWithTypes,
        this.vehicleId,
        required this.makeId,
        required this.modelId,
        required this.createdAt,
        required this.v,
        this.plateNumber,
        this.odometer,
        this.vehicle,
    });

}

class MaintenanceWithType {
    String recently;
    String validity;
    ValidityType validityType;
    dynamic next;
    dynamic previously;
    String? type;
    String? hint;

    MaintenanceWithType({
        required this.recently,
        required this.validity,
        required this.validityType,
        required this.next,
        required this.previously,
        this.type,
        this.hint,
    });

}

enum ValidityType {
    EMPTY,
    KM,
    YEAR
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
