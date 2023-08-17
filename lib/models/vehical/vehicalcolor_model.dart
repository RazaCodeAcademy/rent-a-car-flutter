class Vehicalcolorsmodel {
    bool success;
    int count;
    List<Color> colors;

    Vehicalcolorsmodel({
        required this.success,
        required this.count,
        required this.colors,
    });

}

class Color {
    String id;
    String name;
    DateTime createdAt;
    int v;

    Color({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.v,
    });

}
