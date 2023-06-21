import 'package:basic_banking_app/Database/sql_helper.dart';
import 'package:flutter/material.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({super.key});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {

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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();


  void _showForm(int? id) async {
    if(id !=null){
      final existingdata = _data.firstWhere((element) => element['id']==id);
      _account_number.value = existingdata['account_number'];
      _balance.value = existingdata['balance'];
      _email.value = existingdata['email'];
      _name.value = existingdata['name'];
    }

    showModalBottomSheet(context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_)=>Container(
          padding: EdgeInsets.only(top:15,left:15,right:15,
          bottom: MediaQuery.of(context).viewInsets.bottom+120),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _account_number,
                  decoration: const InputDecoration(hintText: 'Account Number'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _balance,
                  decoration: const InputDecoration(hintText: 'Balance'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _name,
                  decoration: const InputDecoration(hintText: 'Name'),
                ),
                const SizedBox(
                  height: 10,
                ),
                // ElevatedButton(onPressed: () async {
                //   if(account_number==null){
                //     await _addItem();
                //   }
                //   if(_account_number!=null){
                //
                //   }
                // })

              ],
            )
        ),
    );
  }
  final int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Data'),

      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
                decoration: BoxDecoration(
                ),
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
      // routes: {
      //   '/chat':(context)=>ChatPage()
      // },
    );
  }
}
