import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/models/categories/category_model.dart';

 
part 'list_categories_model.freezed.dart';
part 'list_categories_model.g.dart';

/// {@template list_categories_model}
/// ListCategoriesModel description
/// {@endtemplate}
@freezed
class ListCategoriesModel with _$ListCategoriesModel {
  /// {@macro list_categories_model}
  const factory ListCategoriesModel({ 
    required List<CategoryModel> trivia_categories,
  }) = _ListCategoriesModel;
  
    /// Creates a ListCategoriesModel from Json map
  factory ListCategoriesModel.fromJson(Map<String, dynamic> data) => _$ListCategoriesModelFromJson(data);
}
