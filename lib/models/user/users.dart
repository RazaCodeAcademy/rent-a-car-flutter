class UserResponceModel {
  UserResponceModel({
    required this.success,
    required this.count,
    required this.data,
  });
  late final bool success;
  late final int count;
  late final List<dynamic> data;
  
  UserResponceModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    count = json['count'];
    data = List.castFrom<dynamic, dynamic>(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['count'] = count;
    _data['data'] = data;
    return _data;
  }
}