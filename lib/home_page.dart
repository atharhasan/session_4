import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _listItem = <Widget>[
    Text('Tab 0',style: TextStyle(fontSize: 40),),
    Text('Tab 1',style: TextStyle(fontSize: 40),),
    Text('Tab 2',style: TextStyle(fontSize: 40),),
    Text('Tab 3',style: TextStyle(fontSize: 40),),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session 4',style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyanAccent
        ),),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: _listItem.elementAt(_selectedIndex)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list,color: Colors.brown,),
          title: Text('This',style: TextStyle(color: Colors.brown),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.layers,color: Colors.brown,),
          title: Text('is',style: TextStyle(color: Colors.brown),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard,color: Colors.brown,),
          title: Text('Bottom',style: TextStyle(color: Colors.brown),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info,color: Colors.brown,),
          title: Text('Bar',style: TextStyle(color: Colors.brown),)
        ),],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
