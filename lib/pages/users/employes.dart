import 'package:flutter/material.dart';
import 'package:rent_a_car/controllers/user/user_employee.dart';
import 'package:rent_a_car/models/user/useremployee.dart';
import 'package:rent_a_car/pages/users/employee_detail.dart';

import '../../controllers/user/users_customer.dart';

class Employes extends StatefulWidget {
  const Employes({super.key});

  @override
  State<Employes> createState() => _EmployesState();
}

class _EmployesState extends State<Employes> {
  late Future<UserEmployeeResponceModel> response;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  response=getData();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: size.height * 0.15,
        backgroundColor: Color(0xff00B83A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text(
          'Employes',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                // SizedBox(height: 5,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => EmployeeDetail())));
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:index%2==0 ? Colors.white: Color(0xffEAEAEA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: ListTile(
                      tileColor: Colors.white,
                      autofocus: true,
                      // isThreeLine: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Text(
                        'Salman',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff00B83A),
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '+923076543876',
                        style: TextStyle(fontSize: 15, fontFamily: 'MontS',color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


//  RichText(
//                 text: TextSpan(
//                   text: 'Name:',
//                   style: TextStyle(fontSize: 18,color: Color(0xff00B83A)),
//                   children: [
//                     TextSpan(text: ' Amar Amar',style: TextStyle(fontSize: 15,color: Colors.black)),
//                   ],
//                 ),
//                 ),