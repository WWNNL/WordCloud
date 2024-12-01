import 'package:flutter/material.dart';
import 'tag_cloud.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WordCloud',
      home: Scaffold(
        backgroundColor: Color(0xffc8d6e5), // 设置背景颜色
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> strs=[
    "东京","大阪","京都","ANGEL ATTACK","横浜","天井","THE BEAST","世界",
    "札幌","北九州","福冈","长崎","鹿児岛","金沢","広岛","川崎","奈良",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(width: 500,height: 600,
            child: TagCloudDisplay(
                strs:strs
            )
        ),
      ),
    );
  }
}