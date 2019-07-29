import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
class Home extends StatefulWidget{
  @override
  State <StatefulWidget> createState(){
    return _HomeState();
  }

}
class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.blue)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DCHL'),
      ),
      body: _children[_currentIndex], // selects current child
      bottomNavigationBar: BottomNavigationBar(
        //displays more than 3 navigationbar items
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Schedule'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Stats')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text('More')
          )
        ],
      ), //Home, schedule, stats, more
    );
  }


  void onTabTapped(int index){

    setState((){

      _currentIndex = index;
    });

  }
}