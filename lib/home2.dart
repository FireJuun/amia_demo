import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  Home2({Key key}) : super(key: key);

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset('assets/2019-CIC-Header.jpg'),
        SizedBox(
          height: 16.0,
        ),
        _amiaRow(),
        _upcomingEventsCard(),
      ],
    );
  }

  Widget _amiaRow() {
    return Container(
      color: Colors.blue[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('A', style: TextStyle(fontSize: 48.0)),
          Text('M', style: TextStyle(fontSize: 48.0)),
          Text('I', style: TextStyle(fontSize: 48.0)),
          Text('A', style: TextStyle(fontSize: 48.0))
        ],
      ),
    );
  }

  Widget _upcomingEventsCard() {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(12.0),
        elevation: 8.0,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: Colors.black45);
          },
          padding: EdgeInsets.all(8.0),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return index == 0 ? _firstRow() : _otherRows();
          },
        ),
      ),
    );
  }

  Widget _firstRow() {
    return Text('first item');
  }

  Widget _otherRows() {
    return Text('other rows');
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).accentColor,
      currentIndex: 0, //todo: fix
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

  void _onTap(int index) {
    // todo: add setState
  }
}
