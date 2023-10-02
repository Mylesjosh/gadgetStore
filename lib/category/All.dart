import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gadget_store/cart.dart';
import 'package:gadget_store/category/accessories.dart';
import 'package:gadget_store/category/computer.dart';
import 'package:gadget_store/category/phone.dart';
import 'package:gadget_store/category/tablet.dart';
import 'package:gadget_store/details.dart';
import 'package:gadget_store/home.dart';
import 'package:gadget_store/items_model.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class AllPage extends StatefulWidget {


  const AllPage({ Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _UIHomePageState();
}

class _UIHomePageState extends State<AllPage> {
  int cartBadgeAmount = 0;
  late bool showCartBadge;



  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    cartBadgeAmount = cartProvider.cartCount;
    showCartBadge = cartBadgeAmount > 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Center(

          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/gadgetshome.png",
                    width: 70.w,height: 45.h),

              ],
            ),
          ),

        ),
        actions: [
          IconButton(
            icon: badges.Badge(

              badgeContent: Text(cartBadgeAmount.toString(),style: TextStyle(color: Color(0xfffdfdfe)),),

              badgeAnimation: badges.BadgeAnimation.scale(
                animationDuration: Duration(seconds: 1),
                loopAnimation: false,
                curve: Curves.fastOutSlowIn,),

              position: badges.BadgePosition.topEnd(top: -13, end: -5),

              showBadge: showCartBadge,
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.red,
                padding: EdgeInsets.all(5),
                borderSide: BorderSide(color: Color(0xffFFFFFF),),
                elevation: 0,
              ),
              child: Icon(Icons.shopping_cart,color: Colors.black,),
            ),

            tooltip: 'Open shopping cart',

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsCart()));
            },
          ),

        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,


        child: SingleChildScrollView(
          child: Container(
            height: 852,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffFCFCFC),
            child: Column(
                children:[
                  Container(
                    height: 239,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff843667),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/bro.png"),
                            SizedBox(height: 12,),
                            Text("Welcome to Store", style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12.0, color: Color(0xffFFFFFF),
                              letterSpacing: 1.452,
                            ),),

                            SizedBox(height: 6,),
                            Text("Abhair Dung Fungir", style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13.0, color: Color(0xffFFFFFF),
                              letterSpacing: 1.573,
                            ),),

                            SizedBox(height: 6,),
                            Text("abhairdungfungir@gmail.com", style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 9.0, color: Color(0xffFFE0C7),
                              letterSpacing: 1.089,
                            ),),
                          ]
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Categories", style: CustomTextStyle.boldTextStyle),
                        SizedBox(height: 10,),

                        ListTile(title: Text("All"),enableFeedback: true,hoverColor: Colors.black45, selectedTileColor: Color(0xff843667),
                            onTap: (){}),
                        SizedBox(height: 20,),

                        ListTile(title: Text("Smart Phones"),hoverColor: Color(0xff343333), selectedTileColor: Color(0xff843667),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> PhonePage()),);},),
                        SizedBox(height: 20,),

                        ListTile(title: Text("Computers"),hoverColor: Color(0xff343333), selectedTileColor: Color(0xff843667),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ComputerPage()),);},),
                        SizedBox(height: 20,),

                        ListTile(title: Text("Accessories"),hoverColor: Color(0xff343333), selectedTileColor: Color(0xff843667),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> AccessoriesPage()),);},),
                        SizedBox(height: 20,),

                        ListTile(title: Text("Ipads and Tablets"),hoverColor: Color(0xff343333), selectedTileColor: Color(0xff843667),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> TabletPage()),);},),

                        SizedBox(height: 40,),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Image.asset("assets/images/gadgetshome.png", height: 160.h,width: 200.w,),
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                      ],
                    ),
                  ),

                ]
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              color: Color(0xffEDECF2),


            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Column(

                children: [

                  Container(
                    height: 150,
                    width: 343.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff843667),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, bottom: 20.0, left: 20.0, right: 20.0,),
                          child: const Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Gadgets Home", style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),),
                              SizedBox(height: 8,),
                              Text("Find all the phone accessories \nyou need for the New Year!", style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12.0, color: Color(0xffFFFFFF),
                              ),),
                              SizedBox(height: 4,),
                              Text("All at special discounts!", style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFE0C7),

                                letterSpacing: 0.65,
                              ),)
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset("assets/images/phone.png"),
                          ],
                        )
                      ],
                    ),

                  ),

                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffFFFFFF),),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Search",
                        prefixIcon: Icon(CupertinoIcons.search,color: Colors.black,),
                        border: InputBorder.none ,
                      ),

                    ),
                  ),
                  SizedBox(height: 20),

                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 20.0,
                      ),
                      itemCount: items.length ,
                      itemBuilder: (context, index) {

                        return Container(

                          height: 257,
                          width: 166,
                          color: Color(0xffFFFFFF),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0,),
                                child: Container(
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  color: Color(0xffFAFCFF),
                                  child: Center(
                                    child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => (ProductDetails(selected: items[index],))));
                                        },
                                        child: Image.asset(items[index].image,height: 78,)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(items[index].name, style: TextStyle(
                                  color: Color(0xff343333),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                ),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(items[index].description1, style: TextStyle(
                                  color: Color(0xff9C9C9C),
                                  fontSize: 9.0,
                                  fontWeight: FontWeight.w400,
                                ),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(items[index].price.toString() , style: TextStyle(
                                      color: Color(0xff343333),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                    GestureDetector(
                                        onTap: () {
                                          cartProvider.addToCart(items[index]);
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 12,
                                          child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),
                                        ),
                                      ),//child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),


                                  ],
                                ),

                              ),
                            ],
                          ),
                        );
                      }
                  ),

                  SizedBox(height: 10,),


                ],

              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index){Navigator.push(context, MaterialPageRoute(builder: (context) => UIHomePage()));},
          height: 40,
          backgroundColor: Colors.transparent,
          color: Color(0xff843667),
          items: [
            Icon(CupertinoIcons.home),

          ]),
    );
  }
}




class CustomTextStyle {
  static const TextStyle boldTextStyle = TextStyle(
    color: Color(0xff050505),
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.573,
  );

  static const TextStyle normalTextStyle = TextStyle(
    color: Color(0xff050505),
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.452,
  );
}

