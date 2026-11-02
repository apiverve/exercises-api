/// Response models for the Exercises API.

/// API Response wrapper.
class ExercisesResponse {
  final String status;
  final dynamic error;
  final ExercisesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ExercisesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ExercisesResponse.fromJson(Map<String, dynamic> json) => ExercisesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ExercisesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Exercises API.

class ExercisesData {
  num? count;
  List<String>? filteredOn;
  List<ExercisesDataExercisesItem>? exercises;

  ExercisesData({
    this.count,
    this.filteredOn,
    this.exercises,
  });

  factory ExercisesData.fromJson(Map<String, dynamic> json) => ExercisesData(
      count: json['count'],
      filteredOn: (json['filteredOn'] as List?)?.cast<String>(),
      exercises: (json['exercises'] as List?)?.map((e) => ExercisesDataExercisesItem.fromJson(e)).toList(),
    );
}

class ExercisesDataExercisesItem {
  String? name;
  String? force;
  String? level;
  String? mechanic;
  String? equipment;
  List<String>? instructions;
  String? muscle;

  ExercisesDataExercisesItem({
    this.name,
    this.force,
    this.level,
    this.mechanic,
    this.equipment,
    this.instructions,
    this.muscle,
  });

  factory ExercisesDataExercisesItem.fromJson(Map<String, dynamic> json) => ExercisesDataExercisesItem(
      name: json['name'],
      force: json['force'],
      level: json['level'],
      mechanic: json['mechanic'],
      equipment: json['equipment'],
      instructions: (json['instructions'] as List?)?.cast<String>(),
      muscle: json['muscle'],
    );
}

class ExercisesRequest {
  String muscle;
  String? name;
  String? equipment;

  ExercisesRequest({
    required this.muscle,
    this.name,
    this.equipment,
  });

  Map<String, dynamic> toJson() => {
      'muscle': muscle,
      if (name != null) 'name': name,
      if (equipment != null) 'equipment': equipment,
    };
}
