import 'package:flutter/material.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Free drive",
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 48,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Номер телефона или логин"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.call),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Пароль"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Забыли пароль?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/recovery');
                    },
                    child: Text(
                      "Восстановить",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                child: Text("Войти"),
                onPressed: () {
                  Navigator.of(context).pushNamed('/content');
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("У меня нет аккаунта."),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/reg');
                    },
                    child: Text("Зарегистрироваться."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
