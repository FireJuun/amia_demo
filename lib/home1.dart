import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  Home1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('AMIA Demo'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        'AMIA',
        style: TextStyle(
          fontSize: 64.0,
        ),
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).accentColor,
      currentIndex: 0,
      onTap: _onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('My Event'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          title: Text('Agenda'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Attendees'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text('More'),
        ),
      ],
    );
  }

  void _onTap(int index) {}
}
