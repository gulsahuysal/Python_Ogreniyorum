import 'package:flutter/material.dart';
import '2_veri_tipleri/veri1.dart';
import '2_veri_tipleri/veri2.dart';
import '2_veri_tipleri/veri3.dart';
import '2_veri_tipleri/veri4.dart';
import '2_veri_tipleri/veri5.dart';
import '2_veri_tipleri/veri6.dart';
import '2_veri_tipleri/veri7.dart';
import '2_veri_tipleri/veri8.dart';
import '2_veri_tipleri/veri9.dart';
import '2_veri_tipleri/veri10.dart';

class MyApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApp2State();
  }
}

class MyApp2State extends State<MyApp2> {
  int selectedPage = 0, aa = 0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  final _pageOptions = [
    veri1(),
    veri2(),
    veri3(),
    veri4(),
    veri5(),
    veri6(),
    veri7(),
    veri8(),
    veri9(),
    veri10()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 235, 59),
      appBar: AppBar(
        title: Text(
          ("Veri Tipleri"),
          //style: TextStyle(fontSize: 30),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 112, 112, 112),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          _pageOptions[selectedPage],
          veri2(),
          veri3(),
          veri4(),
          veri5(),
          veri6(),
          veri7(),
          veri8(),
          veri9(),
          veri10(),
        ],
        onPageChanged: _pageChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: (int index) {
          if (aa != index) {
            setState(() {
              selectedPage = index;
              _pageController.jumpToPage(index);
              aa = selectedPage;
            });
          } else {
            debugPrint("*****$selectedPage******");
            debugPrint("*---$aa---*");
          }
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 21, 146, 230),
            icon: Icon(Icons.adjust),
            title: Text("1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("2"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("3"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("4"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("5"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("6"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("7"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("8"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("9"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("10"),
          )
        ],
      ),
    );
  }

  _pageChange(int page) {
    debugPrint(page.toString());
    setState(() {
      selectedPage = page;
      aa = page;
    });
  }
}
