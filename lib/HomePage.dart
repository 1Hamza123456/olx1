import 'package:flutter/material.dart';
import 'package:olx/Page/Account.dart';
import 'package:olx/Page/Chats.dart';
import 'package:olx/Page/Home.dart';
import 'package:olx/Page/MyADS.dart';
import 'package:olx/SellPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currenttab = 0;
  final List<Widget> screens = [
    Home(),
    Chats(),
    MyADS(),
    Account(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=>SellPage()));

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
      BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currenttab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currenttab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'HOME',
                          style: TextStyle(
                              color:
                                  currenttab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chats();
                        currenttab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_outlined,
                          color: currenttab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'CHATS',
                          style: TextStyle(
                              color:
                              currenttab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 10,
                    onPressed: () {
                      setState(() {
                        currentScreen = MyADS();
                        currenttab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: currenttab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'MY ADS',
                          style: TextStyle(
                              color:
                              currenttab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Account();
                        currenttab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline_sharp,
                          color: currenttab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'ACCOUNT',
                          style: TextStyle(
                              color:
                              currenttab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
