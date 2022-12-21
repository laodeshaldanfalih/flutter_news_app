import 'package:flutter/material.dart';
import 'package:news_app/data/model/article.dart';
import 'package:news_app/widgets/widgets.dart';
import 'common/styles.dart';
import 'data/model/article.dart';
import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            onPrimary: Colors.white,
            textStyle: const TextStyle(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(elevation: 0),
        textTheme: myTextTheme,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: Colors.black,
              secondary: secondaryColor,
            ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ArtcileDetailpage.routName: (context) => ArtcileDetailpage(
            article: ModalRoute.of(context)?.settings.arguments as Article),
        ArticleWebView.routName: (context) => ArticleWebView(
            url: ModalRoute.of(context)?.settings.arguments as String)
      },
    );
  }
}
