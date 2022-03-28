import 'package:flutter/material.dart';
import 'package:page_merged/utility/text.dart';
import 'package:page_merged/model/pie_chart.dart';

class BottomDateContainer extends StatelessWidget {
  const BottomDateContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Wednesday",
                    style: dateTextStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "15 Mar 2020",
                    style: fullDateTextStyle,
                  ),
                ],
              ),
              Column(
                children: const [
                  PieChart(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Tuesday",
                    style: dateTextStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "15 Mar 2020",
                    style: fullDateTextStyle,
                  ),
                ],
              ),
              Column(
                children: const [
                  PieChart(),
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
      ],
    );
  }
}