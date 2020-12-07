// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    articles: (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'articles': instance.articles,
    };
