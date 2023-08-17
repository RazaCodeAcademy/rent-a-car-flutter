class Vehicalmakesmodel {
    bool success;
    int count;
    List<Make> makes;

    Vehicalmakesmodel({
        required this.success,
        required this.count,
        required this.makes,
    });

}

class Make {
    String id;
    String name;
    DateTime createdAt;
    int v;

    Make({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.v,
    });

}
