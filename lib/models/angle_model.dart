class AngleModel {
  double angle1;
  double angle2;
  double angle3;
  double angle4;
  double angle5;
  double angle6;

  AngleModel({
    required this.angle1,
    required this.angle2,
    required this.angle3,
    required this.angle4,
    required this.angle5,
    required this.angle6,
  });

  factory AngleModel.fromJson(Map<String, dynamic> json) {
    return AngleModel(
        angle1: json['angle1'] as double,
        angle2: json['angle2'] as double,
        angle3: json['angle3'] as double,
        angle4: json['angle4'] as double,
        angle5: json['angle5'] as double,
        angle6: json['angle6'] as double);
  }

  Map<String, Object?> toJson() {
    return {
      'angle1': angle1,
      'angle2': angle2,
      'angle3': angle3,
      'angle4': angle4,
      'angle5': angle5,
      'angle6': angle6
    };
  }
}
