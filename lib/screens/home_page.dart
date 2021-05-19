import 'package:chattie_ui/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu");
          },
        ),
        title: Text(
          "Chat",
          style: MyTheme.kAppTitle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {
              print("Camera");
            },
          )
        ],
        elevation: 0.0,
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [MyTabBar(tabController: tabController)],
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      height: 60,
      color: MyTheme.kPrimaryColor,
      child: TabBar(
        controller: tabController,
        indicator: ShapeDecoration(
            color: MyTheme.kAccentColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        tabs: [
          Tab(
            icon: Text(
              "Chat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Tab(
            icon: Text(
              "Chat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Tab(
            icon: Text(
              "Chat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
