import 'package:flutter/material.dart';
import 'package:instructme/class.dart';
import 'package:instructme/group.dart';

class ClassesGroupsPage extends StatelessWidget {
  const ClassesGroupsPage({Key? key}) : super(key: key);

  Widget getTabBar() {
    return Container(
      color: Colors.transparent,
      child: const TabBar(
        tabs: [
          Tab(text: 'Classes'),
          Tab(text: 'Groups'),
          Tab(text: 'Discover'),
        ],
        labelColor: Colors.green,
      ),
    );
  }

  void goToClass(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ClassPage()),
    );
  }

  ListView getClassesList() {
    return ListView(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Welding"),
            subtitle: Text("Within Provo Boyz Group  |  Last active 2 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right)
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Coding Basics"),
            subtitle: Text("Within BYU Study Group  |  Last active 12 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Pottery"),
            subtitle: Text("Within Generic Community Group  |  Last active 3 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
      ],
    );
  }

  ListView getGroupsList() {
    return ListView(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Provo Boyz"),
            subtitle: Text("Last active 2 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("BYU Study Group"),
            subtitle: Text("Last active 12 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Generic Community"),
            subtitle: Text("Last active 3 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Soccer Moms"),
            subtitle: Text("Last active 3 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Provo Pickleballers"),
            subtitle: Text("Last active 3 hours ago"),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ),
      ],
    );
  }

  Widget getSubPages(BuildContext context) {
    return TabBarView(
      children: [
        // Center(child: Text('Classes')),
        getClassesList(),
        getGroupsList(),
        const Center(child: Text('Discover')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: getTabBar(),
          ),
        ),
        body: getSubPages(context),
      ),
    );
  }
}
