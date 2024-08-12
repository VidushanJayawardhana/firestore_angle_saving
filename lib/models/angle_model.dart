class AngleModel {
  double angle;

  AngleModel({required this.angle});

  factory AngleModel.fromJson(Map<String, dynamic> json) {
    return AngleModel(angle: json['angle'] as double);
  }

  Map<String, Object?> toJson() {
    return {'angle': angle};
  }
}
