import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddShop extends StatefulWidget {
  const AddShop({Key? key}) : super(key: key);

  @override
  _AddShopState createState() => _AddShopState();
}

class _AddShopState extends State<AddShop> {

  final List<String> items1 = <String>['Person Name','Group','Family '];
  String selectedItem1 = 'Person Name';
  int selectedCategoryIndex1 = 0;

  final List<String> items = <String>['Manager Name','Group','Family '];
  String selectedItem = 'Manager Name';
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xfff3f3f4)],
                stops: [0.3, 0.3],
              ),
            ),
            child: ListView(
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
                      "Add Shop ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
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
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedItem1,
                          iconSize: 50,
                          focusColor: Colors.white,
                          iconEnabledColor: Colors.black,
                          onChanged: (_) {},
                          // onChanged: () => setState(() => selectedItem ),
                          selectedItemBuilder: (BuildContext context) {
                            return items1.map<Widget>((String item) {
                              return Center(
                                  child: Text(item,
                                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15)));
                            }).toList();
                          },
                          items: items1.map((String item) {
                            return DropdownMenuItem<String>(
                              child: Center(child: Text(item,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15))),
                              value: item,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: const NetworkImage('https://picsum.photos/id/237/200/300'),
                        radius: 35,
                        onBackgroundImageError: (e, s) {
                          debugPrint('image issue, $e,$s');
                        },
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
                ),
                const SizedBox(height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const[
                        Text("Shop Name"),
                        Text("Location"),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children:<Widget>[
                         Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                ),
                                child:TextFormField(
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                          color: Colors.grey
                                      )
                                  ),
                                ),
                              ),
                            ),
                         const SizedBox(width: 10.0),
                         Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(5.0),),
                                ),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                          color: Colors.grey
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Text("Total Amount"),
                        Text("Target"),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children:<Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5.0),),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                      color: Colors.grey
                                  )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5.0),),
                            ),
                            child:TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                      color: Colors.grey
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.black,
                        ),
                        height: 50,
                        width: 120,
                        padding:const EdgeInsets.symmetric(horizontal: 25),
                        child: const Center(
                          child: Text(
                            "Add More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: Colors.white,
                            ),
                            padding:const EdgeInsets.symmetric(horizontal: 30),
                            height: 50,
                            child: const Center(
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: Colors.black,
                            ),
                            height: 50,
                            padding:const EdgeInsets.symmetric(horizontal: 30),
                            child: const Center(
                              child: Text(
                                "Update todo list",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    elevation: 3,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  onPressed: () {},
                  child: const Text('Upload'),
                ),
              ],
            )
          ), // your body content.
        ),
    );
  }
}
