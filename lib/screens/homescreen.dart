import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade600,
          title: const Text("Teligram"),
          actions: const <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(width: 20)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // dp
                              SizedBox(
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue.shade700,
                                  child: const Text("T"),
                                ),
                              )
                              // data
                              ,
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Sachin Pandit sadhkasdklfkasdv;jasldj"),
                                    Text("#video comments"),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              //time & notice number
                              Column(
                                children: [
                                  Text(
                                      "${DateTime.now().hour}:${DateTime.now().minute}"),
                                  const CircleAvatar(
                                    radius: 12,
                                    child: Text("1"),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            indent: 70,
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
