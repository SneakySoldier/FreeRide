import 'package:flutter/material.dart';
import 'package:free_ride/pages/drawmenu.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => ContentPageState();
}

class ContentPageState extends State<ContentPage> {
  bool driver = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenuPage(),
      appBar: AppBar(
        toolbarHeight: 70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Солдатов Н.Н."),
            Text(
              "Баланс: 100р",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: driver
                  ? Text(
                      "Заказчик",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    )
                  : Text(
                      "Водитель",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            driver = !driver;
          });
        },
        child: driver ? Icon(Icons.people) : Icon(Icons.drive_eta),
      ),
    );
  }
}
