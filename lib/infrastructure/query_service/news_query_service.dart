import 'package:chopper/chopper.dart';
import 'package:hands_on_flutter/networking/api_service.dart';
import 'package:hands_on_flutter/usecase/query/read_model/article_read_model.dart';
import 'package:hands_on_flutter/usecase/query/read_model/news_read_model.dart';

class NewsQueryService {
  final ApiService _apiService = ApiService.create();

  Future<List<Article>> getNews() async {
    Response response;
    List<Article> result = List<Article>();

    try {
      response = await _apiService.getHeadlines();
      if (response.isSuccessful) {
        final responseBody = response.body;
        print("repositoryのgetNewsメソッド");
        print(responseBody);
        result = News.fromJson(responseBody).articles;
        print(result);
      } else {
        final error = response.error;
        print('isSuccessful$error');
      }
    } catch (error) {}

    return result;
  }
}
