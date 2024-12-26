import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class Createneworderscreen extends StatefulWidget {
  const Createneworderscreen({super.key});

  @override
  State<Createneworderscreen> createState() => _CreateneworderscreenState();
}

class _CreateneworderscreenState extends State<Createneworderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order Processing",
          style: appWidget.boldHeadlineStyle(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
        FadeInLeft(
          duration: Duration(milliseconds: 100),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                hintText: "Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
            ),
          )
        ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: "Client Name",
                      labelText: "Client Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: "Client Address",
                      labelText: "Client Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(contentPadding: EdgeInsets.all(15.0),
                      hintText: "Buy Price",
                      labelText: "Buy Price",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(contentPadding: EdgeInsets.all(15.0),
                      hintText: "Sale Price",
                      labelText: "Sale Price",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          FadeInLeft(
              duration: Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),
              )
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Order",style: appWidget.boldTextStyle(),))
        ],),),
    );
  }
}
