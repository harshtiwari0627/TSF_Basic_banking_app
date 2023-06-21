import 'package:basic_banking_app/home/selection.dart';
import 'package:flutter/material.dart';
import '../utils/dimesions.dart';
class BasicBankingApp extends StatefulWidget {
  const BasicBankingApp({super.key});

  @override
  State<BasicBankingApp> createState() => _BasicBankingAppState();
}

class _BasicBankingAppState extends State<BasicBankingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
            decoration: BoxDecoration(
            ),
              child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            )),
          ),

          Positioned(
            child: Container(
              height: Dimensions.screenHeight,
              width: Dimensions.screenWidth,
              padding: EdgeInsets.all(Dimensions.height20*5),
              margin: EdgeInsets.only(top: Dimensions.height20*2,),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: Dimensions.pageViewTextContainer,),
                  Text("Welcome Back!",style:TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700
                  )),
                  SizedBox(height: Dimensions.pageViewTextContainer/2,),
                  Container(
                      height: Dimensions.height20*10,
                      width: Dimensions.width20*10,
                      child: Image.asset(
                        'assets/images/home.png',
                        fit: BoxFit.fill,
                      )),
                  SizedBox(height: Dimensions.pageViewTextContainer/3,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.red,
                    ),
                    child: Container(
                      child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                });
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Selection()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 26
                                  ),
                                ),
                              ),
                            ),
                          ],
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // routes: {
      //   '/chat':(context)=>ChatPage()
      // },
    );
  }
}
