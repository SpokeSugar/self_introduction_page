import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: const Color(0xff343930)),
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xff0d5d01),
          background: const Color(0xffFBFBF4),
          onSurface: const Color(0xff141613),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/NewYear2022.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 300,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade900,
                        foregroundImage: const AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'ClearSkyFall',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                  Card(
                    color: const Color(0xFFEEF2E8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About me',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '日本の高校生です。主にFlutterを勉強していましたが少し扱えるようになってきたところで壁も見えてきたので、最近はネイティブAndroidとかに手を出しています。また最近はC++とSQLについて少しだけ興味が出ています。ゲームはアスチェとスプラ、ゼノブレとかも好んでやっています。この自己紹介ページをつなぎ、まだまだアダプティブデザイン対応などflutterでもやりたいことがあるので、よろしければたまに覗いてみてください。\nPS.時間がなくてしょぼくなっちゃってごめんね',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    textBaseline: TextBaseline.ideographic),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: const Color(0xff2c5355),
                        child: IconButton(
                            onPressed: () {
                              if (UniversalPlatform.isWeb) {
                                html.window.open(
                                    'https://twitter.com/Spoken2BySugar',
                                    'Twitter');
                              }
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Color(0xffffffff),
                              semanticLabel: 'TWITTER',
                            )),
                      ),
                      Card(
                        color: const Color(0xff2c5355),
                        child: IconButton(
                            onPressed: () {
                              if (UniversalPlatform.isWeb) {
                                html.window.open(
                                    'mailto:raspbkaito0924@gmail.con', 'mail');
                              }
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.envelope,
                              color: Color(0xffffffff),
                              semanticLabel: 'EMAIL',
                            )),
                      ),
                      Card(
                        color: const Color(0xff2c5355),
                        child: IconButton(
                            onPressed: () {
                              if (UniversalPlatform.isWeb) {
                                html.window.open(
                                    'https://github.com/SpokeSugar', 'github');
                              }
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.github,
                              color: Color(0xffffffff),
                              semanticLabel: 'GITHUB',
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
