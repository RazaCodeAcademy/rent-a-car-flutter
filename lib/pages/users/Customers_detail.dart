import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/vehicles/reservations.dart';

class CustomersDetail extends StatefulWidget {
  CustomersDetail({Key? key}) : super(key: key);

  @override
  State<CustomersDetail> createState() => _CustomersDetailState();
}

class _CustomersDetailState extends State<CustomersDetail> {
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
        title: Text('Customers Detail',style: TextStyle(fontSize: 20),),
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
                    text: 'Email:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Salmansheikh0875@gmail.com',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
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
                    text: 'Nationality:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Pakistan',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
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
                    text: 'Identity No:',
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
                    text: 'Expiry Date:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 21/09/2030',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
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
                    text: 'Driving License:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 0999887766',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MontS')),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20,),
                   SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff0F9E2D),
                                  shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => ReservationsScreen())));
                                },
                                child: Text(
                                        'Check Reservation',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white,fontFamily: 'MontB',),
                                      ),
                              ),
                            ),
          ],
        ),
      ),
    );
  }
}