import 'package:flutter/material.dart';

class Employes extends StatefulWidget {
  const Employes({super.key});

  @override
  State<Employes> createState() => _EmployesState();
}

class _EmployesState extends State<Employes> {
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
        title: Text('Employes',style: TextStyle(fontSize: 20),),
      ),
      body: GridView.builder(
        padding:EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          childAspectRatio: 1,
          mainAxisExtent: 160,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
                   boxShadow: [
                     BoxShadow(
                spreadRadius: 2, 
               color: Colors.grey,
                       blurRadius: 2,

                     ),
                   ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Image.asset('assets/images/employ.jpg',fit: BoxFit.fitWidth,),
                ),
                SizedBox(),
                Text('Name:salman',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                Text('Phone Number:+92376548909',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
              ],
            ),
          );
        },
      ),
    );
  }
}