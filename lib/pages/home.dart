import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:process_order/pages/createneworderscreen.dart';
import 'package:process_order/widgets/app_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Processing",
          style: appWidget.boldHeadlineStyle(),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Createneworderscreen(),));
              },
              icon: CircleAvatar(
                  radius: 15.0, child: Icon(Icons.shop_2_outlined)))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Abubakar"),
              accountEmail: Text("flutterdeveloper@gmai.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("A"),
              ),
              currentAccountPictureSize: Size(100, 100),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_drop_down_circle_rounded),
              title: Text("Home",style: appWidget.boldTextStyle(),),
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart_sharp),
              trailing: Icon(Icons.arrow_drop_down_circle_rounded),
              title: Text("Add new order",style: appWidget.boldTextStyle(),),
            ),
            ListTile(
              leading: Icon(Icons.info),
              trailing: Icon(Icons.arrow_drop_down_circle_rounded),
              title: Text("Info",style: appWidget.boldTextStyle(),),
            ),
            Divider(height: 10.0,color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.help),
              trailing: Icon(Icons.arrow_drop_down_circle_rounded),
              title: Text("Help",style: appWidget.boldTextStyle(),),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                elevation: 5.0,
                child: FadeInLeft(
                  child: ListTile(
                    title: Text(
                      "Order",
                      style: appWidget.boldTextStyle(),
                    ),
                    leading: CircleAvatar(
                      child: Text(index.toString()),
                    ),
                    trailing: CircleAvatar(child: Icon(Icons.edit)),
                    subtitle: Text(
                      "Pending",
                      style: appWidget.semiBoldHeadlineStyle(),
                    ),
                  ),
                ));
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
