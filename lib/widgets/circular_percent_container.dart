import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentContainer extends StatelessWidget {
  const CircularPercentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFFF80AB) ,
        borderRadius: BorderRadius.all(Radius.circular(12.0),),
      ),
      child: Row(
        children: [
          CircularPercentIndicator(
            radius: 40.0,
            lineWidth: 5.0,
            percent: 0.76,
            center: const Text(
              "76%",
              style: TextStyle(
                  fontSize: 20,
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
                  style: TextStyle(fontSize: 18.0,color: Colors.white,letterSpacing: 0.5)
              ),
              SizedBox(height: 10,),
              Text(
                  'From Feb 20, 2020 to 15 Mar, 2020',
                  style: TextStyle(fontSize: 14.0,color: Colors.white38)
              ),
            ],
          )
        ],
      ),
    );
  }
}
