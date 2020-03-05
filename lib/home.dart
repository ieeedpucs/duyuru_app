import 'package:duyuruapp/screens/calls_screen.dart';
import 'package:duyuruapp/screens/chat_screen.dart';
import 'package:duyuruapp/screens/status_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();

  }
  class _HomeState extends State with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3,initialIndex: 1,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uygulama Adı"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(text: "Haberler"),
            Tab(text: "Etkinlikler"),
            Tab(text: "Yönetici Paneli"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ChatScreen(),
          StatusScreen(),
          CallStatus(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () =>print("Sohbet Ekranı"),
      ),
    );
  }

}