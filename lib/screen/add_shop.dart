import 'package:flutter/material.dart';
import 'package:page_merged/widgets/custom_app_bar.dart';
import 'package:page_merged/widgets/custom_button.dart';
import 'package:page_merged/widgets/custom_dropdown.dart';
import 'package:page_merged/widgets/name_avatar.dart';
import 'package:page_merged/widgets/textfield_widget.dart';

class AddShop extends StatefulWidget {
  const AddShop({Key? key}) : super(key: key);

  @override
  _AddShopState createState() => _AddShopState();
}

class _AddShopState extends State<AddShop> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  children: [
                    const CustomAppBar(hintText: 'Add Shop',),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomDropdown(),
                        CustomDropdown1(),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const NameAvatar(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color:  Color(0xfff3f3f4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 400,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: TextFieldWidget(),
                      ),
                    ),
                    CustomButton(
                      numShape: 5.0,
                      onPressed: () {},
                      buttonText: 'Upload',
                      numPaddingV: 25,
                      numPaddingH: 0.0,
                      backgroundColor: Colors.black,
                      buttonTextColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
