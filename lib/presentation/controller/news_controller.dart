import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hands_on_flutter/infrastructure/query_service/news_query_service.dart';
import 'package:hands_on_flutter/usecase/query/read_model/article_read_model.dart';
import 'package:state_notifier/state_notifier.dart';

part 'news_controller.freezed.dart';

//状態管理で保存したいものの入れ物と中身
@freezed
abstract class NewsState with _$NewsState {
  factory NewsState({
    bool loading,
    List<Article> articles,
  }) = _NewsState;
}


//状態管理で保存しているもの使った値の変更など
class NewsController extends StateNotifier<NewsState> {

  //apiからデータを照ってくる処理が書いてあるクラスのインスタンス化
  NewsQueryService _newsQueryService = NewsQueryService();

  NewsController() : super(NewsState(loading: false));

  //ニュース情報を、apiからとってきて、NewsStateの中のarticlesに格納するメソッド
  Future<void> getNews() async {
    List<Article> articles = [];
    articles = await _newsQueryService.getNews();

    //NewsStateで格納しているデータの変更処理(state変数にすべて格納されている)
    //データの変更するためには、copyWithメソッドを使用する。
    state = state.copyWith(articles: articles);
  }
}
