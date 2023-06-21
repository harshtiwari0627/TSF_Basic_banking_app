import 'package:basic_banking_app/utils/dimesions.dart';
import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override

  bool isRememberMe = false;

  Widget account1(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Sender Account Number',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: Dimensions.height10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.account_balance,
                color: Color(0xff5ac18e),
              ),
              hintText:'Account Number',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget account2(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Recievers Account Number',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: Dimensions.height10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.account_balance,
                color: Color(0xff5ac18e),
              ),
              hintText:'Account Number',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget amount(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Amount in Rupees',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: Dimensions.height10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.currency_rupee,
                color: Color(0xff5ac18e),
              ),
              hintText:'Account Number',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        )
      ],
    );
  }


  Widget buildLoginBtn(){
    return Container(
      height: Dimensions.height20*4,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(Dimensions.radius30)
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: () async {
          Navigator.pop(context);
          Navigator.pop(context);
        },
        child: Text(
          'Transfer Money',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferring'),

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
              child: Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(Dimensions.width30*1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: Dimensions.height20*2,),
                        account1(),
                        SizedBox(height: Dimensions.height20,),
                        account2(),
                        SizedBox(height: Dimensions.height20,),
                        amount(),
                        SizedBox(height: Dimensions.height20,),
                        buildLoginBtn(),
                      ],
                    ),
                  ),
                ),
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
