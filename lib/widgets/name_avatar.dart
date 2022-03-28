import 'package:flutter/material.dart';

class NameAvatar extends StatelessWidget {
  const NameAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          CircleAvatar(
            backgroundImage: const NetworkImage('https://picsum.photos/id/237/200/300'),
            radius: 35,
            onBackgroundImageError: (e, s) {
              debugPrint('image issue, $e,$s');
            },
            child:  Stack(
                children: const [
                  Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.white
                          )
                      )
                  )
                ]
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Yaqoob kc!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Shop name",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 0.2
                ),
              )
            ],
          ),
        ]
    );
  }
}
