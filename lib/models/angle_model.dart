class AngleModel {
  int angle1;
  int angle2;
  int angle3;
  int angle4;
  int angle5;
  int angle6;

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
        angle1: json['angle1'] as int,
        angle2: json['angle2'] as int,
        angle3: json['angle3'] as int,
        angle4: json['angle4'] as int,
        angle5: json['angle5'] as int,
        angle6: json['angle6'] as int);
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
