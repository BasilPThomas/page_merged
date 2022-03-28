import 'package:flutter/material.dart';
import 'package:page_merged/utility/text.dart';
import 'custom_button.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  TextEditingController targetController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  bool status = false;

  _onChanged() {
   if (shopNameController.text.isNotEmpty &&
       locationController.text.isNotEmpty &&
       targetController.text.isNotEmpty && totalAmountController.text.isNotEmpty) {
      setState(() {
        status = true;
      });
    } else {
      setState(() {
        status = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const[
            Text("Shop Name*",style: nameTextField,),
            SizedBox(width: 110.0),
            Text("Location*",style: nameTextField,),
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
                  controller: shopNameController,
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
                  controller: locationController,
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
          children: const[
            Text("Total Amount*",style: nameTextField,),
            SizedBox(width: 100.0),
            Text("Target*",style: nameTextField,),
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
                  controller: totalAmountController,
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
                  controller: targetController,
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
        CustomButton(
          numShape: 25.0,
          onPressed: _onChanged,
          buttonText: 'Add More',
          numPaddingV: 0,
          numPaddingH: 25,
          backgroundColor: Colors.black,
          buttonTextColor: Colors.white,
        ),
        const SizedBox(height: 15,),
        Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: status,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomButton(
                      numShape: 25.0,
                      onPressed: () {
                        targetController.clear();
                        totalAmountController.clear();
                        shopNameController.clear();
                        locationController.clear();
                      },
                      buttonText: 'Delete',
                      numPaddingV: 0,
                      numPaddingH: 35,
                      backgroundColor: Colors.white,
                      buttonTextColor: Colors.black,
                    ),
                    const SizedBox(width: 15,),
                    CustomButton(
                      numShape: 25.0,
                      onPressed: () {},
                      buttonText: 'Update todo list',
                      numPaddingV: 0,
                      numPaddingH: 30,
                      backgroundColor: Colors.black,
                      buttonTextColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: const[
                    Text("Shop Name",style: nameTextField,),
                    SizedBox(width: 110.0),
                    Text("Location",style: nameTextField,),
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
                  children: const[
                    Text("Total Amount",style: nameTextField,),
                    SizedBox(width: 100.0),
                    Text("Target",style: nameTextField,),
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
                  onTap: _onChanged,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.black,
                    ),
                    height: 40,
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
              ],
            )),
      ],
    );
  }
}
