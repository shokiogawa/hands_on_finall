import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_read_model.g.dart';

@JsonSerializable()
class Article{
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
Article(this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content);
  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
//<editor-fold desc="Data Methods" defaultstate="collapsed">

  // const Article({
  //   @required this.title,
  //   @required this.description,
  //   @required this.url,
  //   @required this.urlToImage,
  //   @required this.publishedAt,
  //   @required this.content,
  // });
  //
  // Article copyWith({
  //   String title,
  //   String description,
  //   String url,
  //   String urlToImage,
  //   String publishedAt,
  //   String content,
  // }) {
  //   if ((title == null || identical(title, this.title)) &&
  //       (description == null || identical(description, this.description)) &&
  //       (url == null || identical(url, this.url)) &&
  //       (urlToImage == null || identical(urlToImage, this.urlToImage)) &&
  //       (publishedAt == null || identical(publishedAt, this.publishedAt)) &&
  //       (content == null || identical(content, this.content))) {
  //     return this;
  //   }
  //
  //   return new Article(
  //     title: title ?? this.title,
  //     description: description ?? this.description,
  //     url: url ?? this.url,
  //     urlToImage: urlToImage ?? this.urlToImage,
  //     publishedAt: publishedAt ?? this.publishedAt,
  //     content: content ?? this.content,
  //   );
  // }
  //
  // @override
  // String toString() {
  //   return 'Article{title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content}';
  // }
  //
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     (other is Article &&
  //         runtimeType == other.runtimeType &&
  //         title == other.title &&
  //         description == other.description &&
  //         url == other.url &&
  //         urlToImage == other.urlToImage &&
  //         publishedAt == other.publishedAt &&
  //         content == other.content);
  //
  // @override
  // int get hashCode =>
  //     title.hashCode ^
  //     description.hashCode ^
  //     url.hashCode ^
  //     urlToImage.hashCode ^
  //     publishedAt.hashCode ^
  //     content.hashCode;
  //
  // factory Article.fromMap(Map<String, dynamic> map) {
  //   return new Article(
  //     title: map['title'] as String,
  //     description: map['description'] as String,
  //     url: map['url'] as String,
  //     urlToImage: map['urlToImage'] as String,
  //     publishedAt: map['publishedAt'] as String,
  //     content: map['content'] as String,
  //   );
  // }
  //
  // Map<String, dynamic> toMap() {
  //   // ignore: unnecessary_cast
  //   return {
  //     'title': this.title,
  //     'description': this.description,
  //     'url': this.url,
  //     'urlToImage': this.urlToImage,
  //     'publishedAt': this.publishedAt,
  //     'content': this.content,
  //   } as Map<String, dynamic>;
  // }

//</editor-fold>

}