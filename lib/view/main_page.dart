import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hands_on_flutter/presentation/controller/news_controller.dart';
import 'package:hands_on_flutter/usecase/query/read_model/article_read_model.dart';
import 'package:provider/provider.dart';

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   Future<void> _fetch;
//
//   //initstateでwidget生成前の非同期処理を設定(ここでは、_fetch = Provider.of<NewsController>(context, listen: false).getNews()がwidget生成前に発火する非同期処理)
//   @override
//   void initState() {
//     super.initState();
//     _fetch = Provider.of<NewsController>(context, listen: false).getNews();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Demo"),
//       ),
//       //非同期処理の処理が完了した後にwidgetを生成するwidget
//       body: FutureBuilder<void>(
//         //initStateで設定した非同期処理をfuture: に設定
//         future: _fetch,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState != ConnectionState.done) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             print("エラーが出たよ");
//           }
//           return HeadNewsListPage();
//         },
//       ),
//     );
//   }
// }

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

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Demo"),
//           centerTitle: true,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(top: 10),
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             //ListView.builderはリストを作成するwidget
//             child: ListView.builder(
//               //リストで表示する数を記入
//               itemCount: 10,
//               //リストで表示するwidgetを記入(ここではArticleTileというwidgetをリストで表示)
//               itemBuilder: (context, index) {
//                 //下にあるArticleTileをreturnしている。
//                 return ArticleTile();
//               },
//             ),
//           ),
//         ));
//   }
// }
//
// //ニュースの内容を表示するwidget
// class ArticleTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //子要素にpaddingをつけることのできるwidget
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 6),
//       //Containerは背景色や子のサイズ、またwidgetの形を変えたりすることがが出来るwidget
//       child: Container(
//         //形を変更できる
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         //Rowは子要素を横に並べることが出来るwidget
//         child: Row(
//           children: [
//             //ニュース画像を表示するエリア
//             //RowやColumnの子Widget間の隙間を目一杯埋めたいときに使うwidget
//             Expanded(
//                 //比を操作できる
//                 flex: 2,
//                 child: Container(
//                   height: 150,
//                   child: Center(child: Text("newsimage")),
//                   color: Colors.grey,
//                 )),
//             //ニュースタイトルを表示するエリア
//             Expanded(
//                 //比を操作できる
//                 flex: 5,
//                 child: Container(
//                   height: 150,
//                   child: Center(child: Text("newsexample")),
//                   color: Colors.amber,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HeadNewsListPage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 10),
//         //ListView.builderはリストを作成するwidget
//         child: ListView.builder(
//           //リストで表示する数を記入
//           itemCount: 10,
//           //リストで表示するwidgetを記入(ここではArticleTileというwidgetをリストで表示)
//           itemBuilder: (context, index) {
//             return ArticleTile();
//           },
//         ),
//       ),
//     );
//   }
// }
