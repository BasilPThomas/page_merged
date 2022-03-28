import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String hintText;
  const CustomAppBar({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row (
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
        Text(
          hintText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
