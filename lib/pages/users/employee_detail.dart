import 'package:flutter/material.dart';

class EmployeeDetail extends StatefulWidget {
  const EmployeeDetail({super.key});

  @override
  State<EmployeeDetail> createState() => _EmployeeDetailState();
}

class _EmployeeDetailState extends State<EmployeeDetail> {
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
        title: Text('Employes Detail',style: TextStyle(fontSize: 20),),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 10,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             RichText(
                  text: TextSpan(
                    text: 'Name:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Amar Amar',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                 
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                    RichText(
                  text: TextSpan(
                    text: 'Phone No:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' +923045868694',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                   SizedBox(height: 10,),
                    RichText(
                  text: TextSpan(
                    text: 'Document Type:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Passport',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                   SizedBox(height: 10,),
                    RichText(
                  text: TextSpan(
                    text: 'Document No:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 939874849',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                   SizedBox(height: 10,),
                    RichText(
                  text: TextSpan(
                    text: 'Driving license No:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 98748484',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                    RichText(
                  text: TextSpan(
                    text: 'License Expiry:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 29/09/2030',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
          ],
        ),
      ),
    );
  }
}