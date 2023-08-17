class Vehicalmodelsmodel {
    bool success;
    int count;
    List<Model> models;

    Vehicalmodelsmodel({
        required this.success,
        required this.count,
        required this.models,
    });

}

class Model {
    String id;
    String name;
    Model? makeId;
    DateTime createdAt;
    int v;

    Model({
        required this.id,
        required this.name,
        this.makeId,
        required this.createdAt,
        required this.v,
    });

}