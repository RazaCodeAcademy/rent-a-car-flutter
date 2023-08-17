import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: size.height*0.15,
        backgroundColor: Color(0xff00B83A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text('Customers',style: TextStyle(fontSize: 20),),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Customers List',style: TextStyle(fontSize: 20,color:Color(0xff00B83A)),),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:index%2==0? Colors.white:Color(0xffEAEAEA),
                      boxShadow: [
                        BoxShadow(
                          color: 
                         Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Customer name:Ali',style: TextStyle(fontSize: 18,color: Color(0xff00971E)),),
                          SizedBox(height: 5,),
                          Text('Phone number:23466788',style: TextStyle(fontSize: 15,color: Color(0xff00971E)),),
                          Text('Order date / Time: 17-9-2020 / 7:20 PM',style: TextStyle(fontSize: 15,color:Color(0xff00971E)),),
                          Text('Customre location:Map link',style: TextStyle(fontSize: 15,color:Color(0xff00971E)),),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}