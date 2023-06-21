import 'package:basic_banking_app/home/transfer.dart';
import 'package:basic_banking_app/home/updatedata.dart';
import 'package:basic_banking_app/utils/dimesions.dart';
import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TransferMoney()),
                        );
                      },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('View All Customers',
                          style: TextStyle(
                            fontSize: Dimensions.font26*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20*3,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UpdateData()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('UpdataData',
                          style: TextStyle(
                            fontSize: Dimensions.font26*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
                ],
              ),
      // routes: {
      //   '/chat':(context)=>ChatPage()
      // },
    );
  }
}
