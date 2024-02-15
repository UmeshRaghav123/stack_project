import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>with SingleTickerProviderStateMixin{
 late final  TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
          
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.55,
                          width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20),
                                    padding: EdgeInsets.all(55),

                                    // color: Colors.red,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0,3),
                                              blurRadius: 25
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/upload.png',fit: BoxFit.scaleDown,height: 50,
                                        ),
                                        Text("Send")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.all(55),

                                    // color: Colors.red,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0,3),
                                              blurRadius: 25
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/receive.png',fit: BoxFit.scaleDown,height: 50,
                                        ),
                                        Text("Receive")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Wallet", style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),),
                              Icon(Icons.add, size: 32,color: Colors.white,)
                            ],
                          ),
                        ),
                        height: MediaQuery.of(context).size.height*0.25,
                        width: MediaQuery.of(context).size.width*1,
                        color: Colors.blue,
                      ),
                      Positioned(
                        top: 70,
                        left: 22,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Balance", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              SizedBox(height: 18,),
                              Text("10.423 BTC", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,height: 0.9),),
                              Text("63.505 USD", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),)

                            ],
                          ),
                          width: MediaQuery.of(context).size.width*0.88,
                          height: 150,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                                boxShadow: kElevationToShadow[2],

                            // border: Border.all(width: 1, color: Colors.grey)
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(text: 'Tokens',),
                      Tab(text: 'Collectibles',),
                      Tab(text: 'History',),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: TabBarView(
                        controller: _tabController,
                        children: [

                          Column(
                            children: [
                              Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*1,
                                height: MediaQuery.of(context).size.height*0.1,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                            child: Icon(Icons.person)),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("ETHB 0", style: TextStyle(fontSize: 18),),
                                            Text("Ether0", style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Text("1.25", style: TextStyle(fontSize: 20),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ),
                            ),
                              Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*1,
                                height: MediaQuery.of(context).size.height*0.1,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                            child: Icon(Icons.person)),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("ETHB 0", style: TextStyle(fontSize: 18),),
                                            Text("Ether0", style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Text("1.25", style: TextStyle(fontSize: 20),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ),
                            ),
                              Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*1,
                                height: MediaQuery.of(context).size.height*0.1,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                            child: Icon(Icons.person)),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("ETHB 0", style: TextStyle(fontSize: 18),),
                                            Text("Ether0", style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Text("1.25", style: TextStyle(fontSize: 20),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ),
                            ),
                            ]
                          ),
                          Text("Text2"),
                          Text("Text3"),
                    ]),
                  )
                ],
              )


            ),

            ],
          ),
        ),
      ),
    );
  }
}
