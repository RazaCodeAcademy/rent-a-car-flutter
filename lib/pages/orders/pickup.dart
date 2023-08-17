import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  const Pickup({super.key});

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          ),
          child:GridView.builder(
            padding: EdgeInsets.only(top:15,bottom: 15,left: 20,right: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15,
              childAspectRatio: 1.4,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1BB83A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined,color: Colors.white,),
                        Text('Pending                   ',style: TextStyle(fontSize:15,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80,),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade500,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(child: Text('1',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
                ],
                
              );
            },
          ),            
        ),
        Expanded(
          child:ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:index%2==0 ? Colors.white: Color(0xffF5F5F5),
                ),
                child: Padding(
                  padding:EdgeInsets.only(left: 16,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8,bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: Amer Amer',style: TextStyle(fontSize: 18,color: Color(0xff00971E)),),
                            Text('Salmiyah Branch',style: TextStyle(fontSize: 14,color: Color(0xff052B0D)),),
                            Text('Number: 12345678',style: TextStyle(fontSize: 14,color: Color(0xff052B0D)),),
                            Text('18-7-2020 -  7:43 PM',style: TextStyle(fontSize: 14,color: Color(0xff052B0D)),),
                           Row(
                            children: [
                              Image.asset('assets/images/knet.png',height: 20,width: 30,),
                              Image.asset('assets/images/truck.png',height: 20,width: 30,),
                            ],
                           ),
                           Row(
                            children: [
                              Icon(Icons.timer_sharp,color: Color(0xff1BB83A),size: 15,),
                              SizedBox(width: 5,),
                              Text('29-7-2020 -  4:00 PM',style: TextStyle(fontSize: 14,color: Color(0xff052B0D)))
                            ],
                           ), 
                          ],
                        ),    
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Color(0xff0F9E2D),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(child: Text('View',style: TextStyle(fontSize: 20,color: Colors.white),)),

                            ),
                            SizedBox(height: 5,),
                            Text('Pending',style: TextStyle(fontSize: 15,color: Color(0xff052B0D)),),
                            SizedBox(height: 8,),
                            Text('80 KD',style: TextStyle(fontSize: 18,color: Color(0xff052B0D),fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ),
      ],
    );
  }
}