import 'package:flutter/material.dart';
import 'package:page_merged/utility/text.dart';
import 'package:page_merged/widgets/bottom_date_container.dart';
import 'package:page_merged/widgets/circular_percent_container.dart';
import 'package:page_merged/widgets/custom_app_bar.dart';
import 'package:page_merged/widgets/custom_button.dart';
import 'package:page_merged/widgets/custom_dropdown.dart';
import 'package:page_merged/widgets/overall_performance.dart';

class MerchantLeaveReport extends StatefulWidget {
  const MerchantLeaveReport({Key? key}) : super(key: key);

  @override
  _MerchantLeaveReportState createState() => _MerchantLeaveReportState();
}

class _MerchantLeaveReportState extends State<MerchantLeaveReport> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color(0xfff3f3f4)],
                  stops: [0.83, 0.83],
                ),
              ),
              child: Column(
                children: [
                  const CustomAppBar(hintText: 'Merchant Leave Report ',),
                  const SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: CustomDropdown1(),
                  ),
                  const SizedBox(height: 15,),
                  const OverallPerformance(),
                ],),
            ),
            Container(
              color:  const Color(0xfff3f3f4),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 15,),
                  CustomButton(
                    numShape: 30.0,
                    onPressed: () {},
                    buttonText: 'Download Report',
                    numPaddingV: 25,
                    numPaddingH: 0,
                    backgroundColor: Colors.black,
                    buttonTextColor: Colors.white,
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        numShape: 30.0,
                        onPressed: () {},
                        buttonText: 'Pay Slip',
                        numPaddingV: 22,
                        numPaddingH: 55,
                        backgroundColor: Colors.black,
                        buttonTextColor: Colors.white,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.black, width: 1,),),
                          padding:const EdgeInsets.symmetric(horizontal: 18,vertical: 21),
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
                  const SizedBox(height: 30,),
                  const CircularPercentContainer(),
                  const SizedBox(height: 15,),
                  const Center(child: Text("Recent Logs", style: recentLogs,),),
                  const SizedBox(height: 15,),
                  const BottomDateContainer(),
                  const SizedBox(height: 60,),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}

