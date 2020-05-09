import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psicoapp/screens/consulta.dart';
import 'package:psicoapp/screens/listaPacientes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PsicoAPP',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFFFD8E4B)
          //Color(0xFF0A2E5C)
        )
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar:
        AppBar(
          title:
            Text("Psico",
              style:
                TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25
                ),
          ),centerTitle: true,
        ),
*/
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Color(0xFFE9E3E3),),
            Container(color: Color(0xFFE9E3E3),),
            ListaPaciente(),
            Consulta(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        backgroundColor: Color(0xFF4B2637),
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.home),
              activeColor: Color(0xFFE9E3E3)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.apps),
              activeColor: Color(0xFFE9E3E3)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.chat_bubble),
              activeColor: Color(0xFFE9E3E3)
          ),
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.settings),
              activeColor: Color(0xFFE9E3E3)
          ),
        ],
      ),
    );
  }
}
