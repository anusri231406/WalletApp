import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    Widget makeCard(){
      return Card(
        child: Container(
           height: height*0.18,
           width: width*0.9,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 25
                      ),
                      child: Text('Card No.',style: TextStyle(fontSize: 18),),
                    ),
                  ],
                ),
              ),
              Container(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 25
                      ),
                      child: Text('**** **** **** 3456',style: TextStyle(fontSize: 18),),
                    ),
                  ],
                ),),
              Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15,
                        left: 25
                      ),
                    child: Text('Expires:',style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15,
                        //left: 25
                      ),
                    child: Text('06/23',style: TextStyle(fontSize: 18),),
                  )
                ]),
              )
            ],
          ),
        ),
      );
    }

    Widget smallCard(){
      return Card(
        child: Container(
          height: height*0.2,
          width: width*0.21,
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/002/257/non_2x/beautiful-woman-avatar-character-icon-free-vector.jpg'),)
                ],
              ),
              Text('Add Money')
          ]),
        ),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //outer most container image and white
              Stack(
                children: [
                  Container(
                  height: height*0.5,
                  width: width*1,
                  child: Column(
                    children: [
                      //for image
                      Container(
                        height: height*0.4,
                        width: width*1,
                        decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://cdn.wallpapersafari.com/52/93/Xk7GZN.jpg'))),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18,left: 8,right: 8),
                                child: ListTile(
                                  leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
                                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,)),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text('Wallet',style: TextStyle(color: Colors.black,fontSize: 40),),
                                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //for white
                      Container(
                        height: height*0.1,
                        width: width*1,
                        decoration: BoxDecoration(color: Colors.white),
                      )
                    ],
                  ),
                ),

                Positioned(
                  top: 230,
                  left: 13,
                  child: Container(
                    height: height*0.2,
                    width: width*0.9,
                    child: ListView(scrollDirection: Axis.horizontal,
                      children: [
                      //child: 
                       makeCard(),
                       makeCard(),
                        ]),
                  )
                      ),
            ]),

            //second part send money
            Container(
              height: height*0.08,
              decoration: BoxDecoration(color: Colors.amber),
              child: ListTile(
                leading: Text('Send Money',style: TextStyle(color: Colors.black,fontSize: 25)),
                trailing:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_outlined,size: 40,)) ,
              ),
            ),

            //add money

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: height*0.3,
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [Row(
                    children: [
                      SizedBox(width: width*0.01,),
                      smallCard(),
                      SizedBox(width: width*0.01,),
                      smallCard(),
                      SizedBox(width: width*0.01,),
                      smallCard(),
                      SizedBox(width: width*0.01,),
                      smallCard(),
                      SizedBox(width: width*0.01,),
                      smallCard(),
                      SizedBox(width: width*0.01,),
                      smallCard(),
                    ],
                  ),
            ]),
              ),
            )
            ],
          )),
      ),
    );
  }
}