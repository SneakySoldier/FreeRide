import 'package:flutter/material.dart';

class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileDrawMenu('Николай'),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/my_profile');
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.message_outlined,
            ),
            title: const Text("Все объявления"),
            onTap: () {
              //Navigator.pop(context);
              Navigator.of(context).pushNamed('/all_listings');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.note_alt_outlined,
            ),
            title: const Text("Мои объявления"),
            onTap: () {
              Navigator.of(context).pushNamed('/my_listings');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.note_add_outlined,
            ),
            title: const Text("Добавить объявление"),
            onTap: () {
              Navigator.of(context).pushNamed('/new_listing');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.attach_money_outlined,
            ),
            title: const Text("Пополнить баланс"),
            onTap: () {
              Navigator.of(context).pushNamed('/add_balance');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text("Настройки"),
            onTap: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text("Выйти"),
            onTap: () {
              showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

Widget ProfileDrawMenu(String user_name) {
  return Container(
    child: Row(
      children: [
        Container(
          child: const CircleAvatar(
            foregroundImage: AssetImage(''),
            radius: 35,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  user_name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: const Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget BalanceDrawMenu() {
  return Container(
    child: Row(
      children: [
        Container(
          child: const Text("Баланс:"),
        ),
        Container(
          child: const Text("100Р"),
        ),
      ],
    ),
  );
}

showAlertDialog(BuildContext dialogContext) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Отмена"),
    onPressed: () {
      Navigator.of(dialogContext, rootNavigator: true).pop();
    },
  );
  Widget launchButton = TextButton(
    child: const Text("Выйти"),
    onPressed: () {
      Navigator.of(dialogContext).pushNamed('/');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Предупреждение"),
    content: const Text("Вы действительно хотите выйти из своего аккаунта?"),
    actions: [
      cancelButton,
      launchButton,
    ],
  );

  // show the dialog
  showDialog(
    context: dialogContext,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
