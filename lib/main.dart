import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff517DA2),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Telegram',
          style: TextStyle(),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff66A9E0),
        child: Icon(Icons.create),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
          Divider(indent: 80.0),
          ChatTile(),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://www.w3schools.com/howto/img_avatar.png',
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Alex',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20.0),
                    ),
                    Text(
                      '20:06',
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  'Are you ready for tommorow?',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
