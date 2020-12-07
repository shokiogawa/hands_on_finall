// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    json['title'] as String,
    json['description'] as String,
    json['url'] as String,
    json['urlToImage'] as String,
    json['publishedAt'] as String,
    json['content'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
