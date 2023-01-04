// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCategoriesModel _$$_ListCategoriesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListCategoriesModel(
      trivia_categories: (json['trivia_categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCategoriesModelToJson(
        _$_ListCategoriesModel instance) =>
    <String, dynamic>{
      'trivia_categories': instance.trivia_categories,
    };
