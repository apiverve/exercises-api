/// Response models for the Exercises API.

/// API Response wrapper.
class ExercisesResponse {
  final String status;
  final dynamic error;
  final ExercisesData? data;

  ExercisesResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ExercisesResponse.fromJson(Map<String, dynamic> json) => ExercisesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ExercisesData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Exercises API.

class ExercisesData {
  int? count;
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
  String? muscle;
  String? name;
  String? equipment;

  ExercisesRequest({
    this.muscle,
    this.name,
    this.equipment,
  });

  Map<String, dynamic> toJson() => {
      if (muscle != null) 'muscle': muscle,
      if (name != null) 'name': name,
      if (equipment != null) 'equipment': equipment,
    };
}
