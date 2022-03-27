import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MerchantLeaveReport extends StatefulWidget {
  const MerchantLeaveReport({Key? key}) : super(key: key);

  @override
  _MerchantLeaveReportState createState() => _MerchantLeaveReportState();
}

class _MerchantLeaveReportState extends State<MerchantLeaveReport> {

  final List<String> items = <String>['Person Name','Group','Family '];
  String selectedItem = 'Person Name';
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xfff3f3f4)],
              stops: [0.5, 0.5],
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Row (
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0),),
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.chevron_left_sharp),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  const Text(
                    "Merchant Leave Report ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedItem,
                      iconSize: 50,
                      focusColor: Colors.white,
                      iconEnabledColor: Colors.black,
                      onChanged: (_) {},
                      // onChanged: () => setState(() => selectedItem ),
                      selectedItemBuilder: (BuildContext context) {
                        return items.map<Widget>((String item) {
                          return Center(
                              child: Text(item,
                                  style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400)));
                        }).toList();
                      },
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          child: Center(child: Text(item,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400))),
                          value: item,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container (
                height: 420,
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
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        ),
                    ),
                    const SizedBox(height: 5,),
                    _vegAndNonVeg(),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: (){},
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.black,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 4),
                            blurRadius: 5,
                            spreadRadius: 2)
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFF000000), Color(0xFF000000)]
                      )
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  // margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: const Center(
                    child: Text(
                        "Download Report",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.black,
                      ),
                      padding:const EdgeInsets.symmetric(horizontal: 50),
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 60,
                      child: const Center(
                        child: Text(
                          "Pay Slip ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration:  BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.black, width: 1,),),
                      padding:const EdgeInsets.symmetric(horizontal: 20),
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      height: 60,
                      child: const Center(
                        child: Text(
                          "Payment breakdown",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Container(
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF80AB) ,
                  borderRadius: BorderRadius.all(Radius.circular(12.0),),
                ),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 5.0,
                      percent: 0.76,
                      center: const Text(
                        "76%",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      progressColor: const Color(0xFFFFD180),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 15,),
                        Text(
                            'On-Time Arrival',
                            style: TextStyle(fontSize: 20.0,color: Colors.white,letterSpacing: 0.5)
                        ),
                        SizedBox(height: 10,),
                        Text(
                            'From Feb 20, 2020 to 15 Mar, 2020',
                            style: TextStyle(fontSize: 16.0,color: Colors.white38)
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   color: Colors.pink[300]!,
              //   elevation: 5,
              //   child: Column(
              //     children: <Widget>[
              //       SizedBox(
              //         height: 120,
              //         child: Center(
              //           child: ListTile(
              //             leading: CircularPercentIndicator(
              //               radius: 30.0,
              //               lineWidth: 5.0,
              //               percent: 0.7,
              //               center: const Text(
              //                 "76%",
              //                 style: TextStyle(
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white),
              //               ),
              //               progressColor: const Color(0xFFFFD180),
              //             ),
              //             title: const Text(
              //                 'On-Time Arrival',
              //                 style: TextStyle(fontSize: 17.0,color: Colors.white)
              //             ),
              //             subtitle: const Text(
              //                 'From Feb 20, 2020 to 15 Mar, 2020',
              //                 style: TextStyle(fontSize: 12.0,color: Colors.white38)
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 15,),
              const Center(
                child: Text(
                  "Recent Logs",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38
                    ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                // height: 100,
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
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                            "Wednesday",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            letterSpacing: 1
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "15 Mar 2020",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black38,
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Sample(),
                        Text(
                          "8:52 Hrs",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                // height: 100,
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
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Tuesday",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              letterSpacing: 1
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "15 Mar 2020",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black38,
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Sample(),
                        Text(
                          "3:52 Hrs",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              letterSpacing: 1
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60,),
            ],
          ), // your body content.
        ),
      ),
    );
  }

  Widget _vegAndNonVeg() {
    return DefaultTabController(
        length: 3, // length of tabs
        initialIndex: 0,
        child: Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xFFE1F5FE),
                          offset: Offset(2, 4),
                          blurRadius: 2,
                          spreadRadius: 1)
                    ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TabBar(
                  indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.all(20),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black12,
                  tabs: [
                    Tab(text: 'Weekly'),
                    Tab(text: 'Monthly'),
                    Tab(text: 'All Time'),
                  ],),),
              const SizedBox(height: 10,),
              Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
    );
  }
}


class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
  final List<ChartData> chartData = [
    ChartData('David', 30),
    ChartData('Steve', 70),
  ];
  return SizedBox(
    height: 50,
    width: 70,
    child: SfCircularChart(
        series: <CircularSeries>[
          // Render pie chart
          PieSeries<ChartData, String>(
              dataSource: chartData,
              pointColorMapper:(ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y
          )
        ]
    ),
  );
 }
}
class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}



