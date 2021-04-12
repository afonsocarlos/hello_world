import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://yt3.ggpht.com/yti/ANoDKi410YbMDucmGx-SJ-HPXFENpGPQJKhlCIWlsBrD=s88-c-k-c0x00ffffff-no-rj-mo'),
              ),
              accountName: Text('Carlos Afonso'),
              accountEmail: Text('afonso.carlos.braga@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Home page'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('End session'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.fireplace, color: Colors.redAccent),
              title: Text('Tinder'),
              subtitle: Text('Page created to complete challange'),
              onTap: () {
                Navigator.of(context).pushNamed('/tinder');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            CustomSwitcher(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          }),
    );
  }
}
