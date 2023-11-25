import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                "Регистрация",
                style: TextStyle(
                  fontSize: 28,
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
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Пароль"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Подтверждение пароля"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                child: Text("Зарегистрироваться"),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("У меня нет аккаунта."),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text("Войти."),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                  "Заполняя данные вы автоматически даете свое согласие на обработку ваших персональных данных."),
            ),
          ],
        ),
      ),
    );
  }
}
