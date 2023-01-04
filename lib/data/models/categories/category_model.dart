import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'category_model.freezed.dart';
part 'category_model.g.dart';

/// {@template category_model}
/// CategoryModel description
/// {@endtemplate}
@freezed
class CategoryModel with _$CategoryModel {
  /// {@macro category_model}
  const factory CategoryModel({ 
    required int id,
    required String name,
  }) = _CategoryModel;
  
    /// Creates a CategoryModel from Json map
  factory CategoryModel.fromJson(Map<String, dynamic> data) => _$CategoryModelFromJson(data);
}
