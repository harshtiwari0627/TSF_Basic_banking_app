import 'package:basic_banking_app/home/last.dart';
import 'package:basic_banking_app/utils/dimesions.dart';
import 'package:flutter/material.dart';

class ActualTransfer extends  StatefulWidget {
  int balance1 =0;
  String name1 = " ";
  ActualTransfer({super.key});

  @override
  State<ActualTransfer> createState() => _ActualTransferState();
}

class _ActualTransferState extends State<ActualTransfer> {
  String? name ="abc";
  int? account=1234;
  int? balance =90303;
  String? email = "abc@abc.com";
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),

      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.fill,
                  width: Dimensions.screenWidth,
                )),
          ),

          Positioned(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(Dimensions.width30*1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Name:',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('$name',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Account Number:',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('$account',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Email:',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('$email',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('balance:',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('$balance',
                          style: TextStyle(
                            fontSize: Dimensions.font20*1.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height20*3,),
                    InkWell(
                      onTap: (){
                        setState(() {
                        });
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Transfer()),
                        );
                      },
                      child: Row(
                        children: [
                          Text('Click to transfer money',
                            style: TextStyle(
                                fontSize: Dimensions.font26,
                                fontWeight: FontWeight.w900,
                                color: Colors.teal,
                            ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
