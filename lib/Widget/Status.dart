import 'package:basic_banking_app/home/actual_transfer.dart';
import 'package:basic_banking_app/utils/dimesions.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatefulWidget {
  const StatusBar({super.key});

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  final int Amount=0;
  final List<String> a = ['aaa','bbb','ccc','ddd','eee','fff','ggg','hhh','iii','jjj'];
  final List<int> b = [10030,20200,30400,2504,895,4046,1504,26248,5465,4578];
  String s1="a";
  int s2 =1;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context,index){
            return Container(
              // height: Dimensions.height20*6,
              // width: Dimensions.width30*6,
              margin: EdgeInsets.only(left: Dimensions.width20*2.25, right: Dimensions.width20, bottom: Dimensions.height10,top: Dimensions.height10),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,),
              child: Row(
                children: [
                  // Images
                  Container(
                    margin: EdgeInsets.only(right: Dimensions.width20, bottom: Dimensions.height10),
                    padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Column(
                      children: [
                        Text('${a[index]}',style: TextStyle(
                          fontSize: Dimensions.font26,
                        ),),
                        Row(
                          children: [
                            Text('${b[index]}',style: TextStyle(
                              fontSize: Dimensions.font20,
                            ),),
                            Text('$Amount',style: TextStyle(
                              fontSize: Dimensions.font20,
                            ),),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                            });

                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ActualTransfer()));
                          },
                          child: Row(
                            children: [
                              Text('Click to transfer money',
                                style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.w800
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // text Container
                ],
              ),
            );
          }),
    );
  }
}
