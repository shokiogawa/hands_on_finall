import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hands_on_flutter/presentation/controller/news_controller.dart';
import 'package:hands_on_flutter/usecase/query/read_model/article_read_model.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _fetch =
        Provider.of<NewsController>(context, listen: false).getNews();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Demo"),
      ),
      //非同期処理の処理が完了した後にwidgetを生成するwidget
      body: FutureBuilder<void>(
        //initStateで設定した非同期処理をfuture: に設定
        future: _fetch,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            print("エラーが出たよ");
          }
          return HeadNewsListPage();
        },
      ),
    );
  }
}

//viewの部分表示
class HeadNewsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<NewsState>(context, listen: true);
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        //リストを作成するwidget(今回は,itemcountを10個で、ArticleTileのリストを作成)
        child: ListView.builder(
          itemCount: state.articles.length,
          itemBuilder: (context, index) {
            return ArticleTile(state.articles[index]);
          },
        ),
      ),
    );
  }
}

class ArticleTile extends StatelessWidget {
  final Article article;

  ArticleTile(this.article);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        //RowはWidgetを横に並べることのできるwidget
        child: Row(
          children: [
            //ニュース画像を表示するエリア
            Expanded(
                flex: 2,
                child: Container(
                  child: Image.network(
                    article.urlToImage,
                    fit: BoxFit.fill,
                  ),
                  // color: Colors.grey,
                )),
            Expanded(
                //ニュース説明を表示するエリア
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(article.publishedAt),
                      ],
                    ),
                    // color: Colors.amber,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

