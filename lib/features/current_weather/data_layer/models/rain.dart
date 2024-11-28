class Rain {
  final double oneHour;

  Rain({required this.oneHour});

  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      oneHour: json['1h'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '1h': oneHour,
    };
  }
}