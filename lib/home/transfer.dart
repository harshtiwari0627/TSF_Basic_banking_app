import 'package:basic_banking_app/Database/sql_helper.dart';
import 'package:basic_banking_app/Widget/Status.dart';
import 'package:basic_banking_app/utils/dimesions.dart';
import 'package:flutter/material.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({super.key});

  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {


  List<Map<String,dynamic>> _data = [];

  bool _isLoading = true;

  void _refreshData() async {
    final Data = await SQLHelper.getItems();
    setState(() {
      _data = Data;
      _isLoading = false;
    });
  }

  @override
  void initState(){
    super.initState();
    _refreshData();
    print("${_data.length}");

  }

  final TextEditingController _account_number = TextEditingController();
  final TextEditingController _balance = TextEditingController();

  void _showForm(int? id) async {
    if(id !=null){
      final existingdata = _data.firstWhere((element) => element['id']==id);
      _account_number.value = existingdata['account_number'];
      _balance.value = existingdata['balance'];
    }
  }
  final int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Balance'),

      ),
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

          StatusBar(),
        ],
      ),
      // routes: {
      //   '/chat':(context)=>ChatPage()
      // },
    );
  }
}
