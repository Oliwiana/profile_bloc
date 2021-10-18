// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:keycloak_auth_flow/news/api_service.dart';
// import 'package:keycloak_auth_flow/news/news_model.dart';
//
// class BuilderNews extends StatelessWidget {
//
//   final double height;
//   final IndexedWidgetBuilder itemBuilder;
//   final ScrollPhysics physics;
//   final int itemcount;
//   // late List<Article> articles=articles;
//
//
//   BuilderNews({
//       required this.height,
//       required this.itemBuilder,
//       required this.physics,
//       required this.itemcount});
//
//   ApiService client = ApiService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: height,
//         child: FutureBuilder< List<Article>>(
//             future: client.getArticle(),
//             builder:
//                 (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
//               if (snapshot.hasData) {
//                 List<Article> article = snapshot.data!;
//                 return ListView.builder(
//                     // scrollDirection: scrollDirection,
//                     physics: physics,
//                     shrinkWrap: true,
//                     itemCount: itemcount,
//                     itemBuilder: itemBuilder);
//               }
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }));
//   }
// }
