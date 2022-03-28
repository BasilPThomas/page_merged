import 'package:flutter/material.dart';

class OverallPerformance extends StatelessWidget {
  const OverallPerformance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.white10,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]
          )
      ),
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const Text(
            "Overall Performance",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            "Jan 06 - Jan 12",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          const SizedBox(height: 5,),
          DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFFE1F5FE),
                            offset: Offset(2, 4),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.only(left: 10,top: 10,bottom: 3),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50), // Creates border
                            color: Colors.white),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.black12,
                        tabs: const [
                          Tab(text: 'Weekly'),
                          Tab(text: 'Monthly'),
                          Tab(text: 'All Time'),
                        ],),),
                    const SizedBox(height: 20,),
                    SizedBox(
                        height: 270,
                        width: MediaQuery.of(context).size.width,
                        child: TabBarView(children: <Widget>[
                          Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              // color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "M",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 20,),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.blueAccent,
                                                borderRadius: BorderRadius.circular(15.0),
                                              ),
                                              height: 130,
                                              width: 20,
                                              child: const Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Icon(
                                                    Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                                ),
                                              )
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "W",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 150,
                                            width: 20,
                                            child: const Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Icon(
                                                  Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 40,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 5,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "F",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Divider(thickness: 1,),
                                  ListTile(
                                    title: const Text('Complete View',textScaleFactor: 1.3,style: TextStyle(color: Colors.black),),
                                    trailing: Container(
                                        padding:  const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFF8E1),
                                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                        ),
                                        child: const Icon(Icons.chevron_right_sharp,color:  Color(0xFFFFD180),size: 30,)),
                                    subtitle: const Text('View your complete view for leaves',style: TextStyle(color: Colors.black)),
                                    selected: true,
                                  ),
                                ],)
                          ),
                          Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              // color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "M",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 20,),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.blueAccent,
                                                borderRadius: BorderRadius.circular(15.0),
                                              ),
                                              height: 130,
                                              width: 20,
                                              child: const Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Icon(
                                                    Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                                ),
                                              )
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "W",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 150,
                                            width: 20,
                                            child: const Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Icon(
                                                  Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 40,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 5,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "F",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Divider(thickness: 1,),
                                  ListTile(
                                    title: const Text('Complete View',textScaleFactor: 1.3,style: TextStyle(color: Colors.black),),
                                    trailing: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFE0B2),
                                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                        ),
                                        child: const Icon(Icons.chevron_right_sharp,color:  Color(0xFFFFD180))),
                                    subtitle: const Text('View your complete view for leaves',style: TextStyle(color: Colors.black)),
                                    selected: true,
                                  ),
                                ],)
                          ),
                          Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              // color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 70,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "M",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 20,),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.blueAccent,
                                                borderRadius: BorderRadius.circular(15.0),
                                              ),
                                              height: 130,
                                              width: 20,
                                              child: const Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Icon(
                                                    Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                                ),
                                              )
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 55,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "W",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 150,
                                            width: 20,
                                            child: const Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Icon(
                                                  Icons.star_purple500_sharp,color: Colors.white,size: 15,),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "T",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 30,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 40,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 5,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "F",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(height: 70,),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[100]!,
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            height: 80,
                                            width: 20,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text(
                                            "S",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Divider(thickness: 1,),
                                  ListTile(
                                    title: const Text('Complete View',textScaleFactor: 1.3,style: TextStyle(color: Colors.black),),
                                    trailing: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFE0B2),
                                          borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                        ),
                                        child: const Icon(Icons.chevron_right_sharp,color:  Color(0xFFFFD180))),
                                    subtitle: const Text('View your complete view for leaves',style: TextStyle(color: Colors.black)),
                                    selected: true,
                                  ),
                                ],)
                          ),
                        ])
                    )
                  ])
          )
        ],
      ),
    );
  }
}

