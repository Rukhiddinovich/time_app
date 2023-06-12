import 'package:flutter/material.dart';
import 'package:n8_default_project/utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("Kodni tasdiqlash",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
      ),),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.time,height: height*(200/872),width: width*(200/375),),),
          SizedBox(height: height*(5/872),),
          Text("10 soniya",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
          SizedBox(height: height*(10/812),),
          Container(
            height: height*(60/812),
            width: width*(330/375),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white
            ),
            child: TextField(
              cursorWidth: 1,
                cursorHeight: 25,
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              maxLines: 10,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
                border: InputBorder.none,
                hintText: "Enter the code",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  letterSpacing: 0.3
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.black),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.black),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.black),
                ),
              ),
            ),

          )
        ],
      ),
    );
  }
}
