import 'package:dribble/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrentPage(),
    );
  }
}

class CurrentPage extends StatelessWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Athulya',
              style: TextStyle(
                  color: Color.fromARGB(255, 29, 102, 142), fontSize: 25),
            ),
            const Text(
              'Senior Care',
              style: TextStyle(
                  color: Color.fromARGB(255, 222, 52, 128), fontSize: 16),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 235, 243, 249),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu_rounded,
                  color: Color.fromARGB(255, 29, 102, 142),
                ));
          },
        ),
      ),
      drawer: const NavigationDrawer(),
      body: HomePage(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(context)],
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(runSpacing: 10, direction: Axis.horizontal, children: [
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: const Text('My Appointments'),
          onTap: () {
            // Navigator.of(context).pushReplacement(MaterialPage)
          },
        ),
        ListTile(
          leading: const Icon(Icons.person_add_alt_1_outlined),
          title: const Text('Add Family Member'),
          onTap: () => {},
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text('My Orders'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(FontAwesomeIcons.moneyBill),
          title: const Text('My Billing'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(FontAwesomeIcons.book),
          title: const Text('My Profile'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () => {},
        ),
        const Divider(
          color: Colors.black,
        )
      ]),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }
}
