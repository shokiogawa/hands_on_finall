import 'package:flutter/material.dart';
import 'package:hands_on_flutter/usecase/query/read_model/article_read_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_read_model.g.dart';

@JsonSerializable()
class News{
  final List<Article> articles;
  News({this.articles});
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);

}