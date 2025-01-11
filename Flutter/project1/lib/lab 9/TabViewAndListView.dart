import 'package:flutter/material.dart';

class Tabviewandlistview extends StatelessWidget {
  Tabviewandlistview({super.key});

  List<String> names = ["Pruthviraj", "Viraj", "Meet", "Manav", "Harshil", "Jasmin", "Dhairya", "Parva", "Raj"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("TabView And ListView"),
        bottom: TabBar(tabs: [
          Tab(
            child: Text("ListView"),
          ),
          Tab(
            child: Text("ListView.Builder"),
          ),
        ]),
      ),
      body: TabBarView(children: [
        Container(
          child: ListView(
            children:
              List.generate(names.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: ListTile(
                      leading: Icon(Icons.people),
                      title: Text(names[index]),
                    )
                    ),
                );
              })
          ),
        ),
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return getListGridItem(index);
          },
          itemCount: names.length,
        ),
      ]),
    ));
  }

  List<Widget> getListItem() {
    List<Widget> widgets = [];
    for (int i = 0; i < names.length; i++) {
      widgets.add(getListGridItem(i));
    }
    return widgets;
  }

  Widget getListGridItem(i) {
    return Padding(padding: EdgeInsets.only(top: 10),
      child: Container(
        height: 50,
        color: Colors.blue,
        child: Center(
          child: Text(names[i]),
        ),
      ),
    );
  }

}
