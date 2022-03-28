import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {

  final List<String> items = <String>['Manager Name','Group','Family '];
  String selectedItem = 'Manager Name';
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15)));
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              child: Center(child: Text(item,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15))),
              value: item,
            );
          }).toList(),
        ),
      ),
    );
  }
}


class CustomDropdown1 extends StatelessWidget {

  final List<String> items = <String>['Person Name','Group','Family '];
  String selectedItem = 'Person Name';
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}


