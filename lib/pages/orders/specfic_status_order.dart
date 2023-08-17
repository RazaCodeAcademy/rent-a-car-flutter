
import 'package:flutter/material.dart';

class SpacficStatuOrder extends StatefulWidget {
  SpacficStatuOrder({Key? key}) : super(key: key);

  @override
  State<SpacficStatuOrder> createState() => _SpacficStatuOrderState();
}

class _SpacficStatuOrderState extends State<SpacficStatuOrder> {

   String branchdropdownvalue='All Branches';
  List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("All Branches"),value: "All Branches"),
    DropdownMenuItem(child: Text("Lahore"),value: "Lahore"),
    DropdownMenuItem(child: Text("Karachi"),value: "Karachi"),
    DropdownMenuItem(child: Text("Islambad"),value: "Islambad"),
    DropdownMenuItem(child: Text("Peshawar"),value: "Peshawar"),
  ];
  return menuItems;
}

 String processingdropdownvaluse='Processing';
  List<DropdownMenuItem<String>> get processingdropdownItems{
  List<DropdownMenuItem<String>> processingmenuItems = [
    DropdownMenuItem(child: Text("Processing"),value: "Processing"),
    DropdownMenuItem(child: Text("Process"),value: "Process"),
    DropdownMenuItem(child: Text("On Going"),value: "On Going"),
    DropdownMenuItem(child: Text("Stay"),value: "Stay"),
    DropdownMenuItem(child: Text("Completed"),value: "Completed"),
  ];
  return processingmenuItems;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
         Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff00C444),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )
          ),
          child: Padding(
            padding:EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,color: Colors.white,),
                    Text('Orders',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.search,color: Colors.white,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15,right: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: TextStyle(fontSize: 15,color: Colors.white),
                            dropdownColor: Color(0xff00C444),
                            icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                            iconSize: 30,
                            isExpanded: true,
                            hint: Text('All Branches'),
                            value: branchdropdownvalue,
                            items:dropdownItems ,
                            onChanged: (String? value){
                              setState(() {
                                branchdropdownvalue=value!;
                              });
                            }
                            ),
                        ),
                      ),
                    ),
                     Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15,right: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: TextStyle(fontSize: 15,color: Colors.white),
                            dropdownColor: Color(0xff00C444),
                            icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                            iconSize: 30,
                            isExpanded: true,
                            hint: Text('Processing'),
                            value: processingdropdownvaluse,
                            items:processingdropdownItems ,
                            onChanged: (String? value){
                              setState(() {
                                processingdropdownvaluse=value!;
                              });
                            }
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), 
         ),
        Expanded(
          child:ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:index%2==0? Colors.white:Color(0xffA9B2AB),
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
                              Text('Name: Amer Amer',style: TextStyle(fontSize: 20,color: Color(0xff00971E)),),
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
                ),
              );
            },
          ),
          ),
      ],
     ),
    );
  }
}