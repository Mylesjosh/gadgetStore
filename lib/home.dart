import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gadget_store/cart.dart';
import 'package:gadget_store/details.dart';
import 'package:gadget_store/items_model.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class UIHomePage extends StatefulWidget {


  const UIHomePage({ Key? key}) : super(key: key);

  @override
  State<UIHomePage> createState() => _UIHomePageState();
}

class _UIHomePageState extends State<UIHomePage> {
  int _cartBadgeAmount = 0;
  late bool _showCartBadge;



  @override
  Widget build(BuildContext context) {
    final items_model = context.read<ItemsModel>();
    final items = items_model.items;
    _showCartBadge = _cartBadgeAmount > 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Center(

          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/gadgetshome.png",
                width: 80.w,height: 45.h),

              ],
            ),
          ),

        ),
        actions: [
          IconButton(
            icon: badges.Badge(

              badgeContent: Text(_cartBadgeAmount.toString(),style: TextStyle(color: Color(0xfffdfdfe)),),

              badgeAnimation: badges.BadgeAnimation.scale(
                animationDuration: Duration(seconds: 1),
                loopAnimation: false,
                curve: Curves.fastOutSlowIn,),

              position: badges.BadgePosition.topEnd(top: -13, end: -5),

              showBadge: _showCartBadge,
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
                  padding: const EdgeInsets.only(left: 1.0,),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Trending", style: CustomTextStyle.boldTextStyle),
                      SizedBox(height: 10,),
                      Text("Best sellers", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("New releases", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Mover and shakers", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 20,),
                      Text("Categories", style: CustomTextStyle.boldTextStyle),
                      SizedBox(height: 10,),
                      Text("Electronics", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Fashion", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Computers", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Mobile phones", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 20,),
                      Text("Program and Features", style: CustomTextStyle.boldTextStyle),
                      SizedBox(height: 10,),
                      Text("Today\'s deals", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Try prime", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Global prime", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Gift cards", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Sell on store", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Latest updates", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 10,),
                      Text("Special discounts", style: CustomTextStyle.normalTextStyle),
                      SizedBox(height: 40,),

                      Image.asset("assets/images/logo2.png"),
                      SizedBox(height: 40,),
                    ],
                  ),
                ),

              ]
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            color: Color(0xffEDECF2),

        ),
        child: ListView(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff843667)
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: const Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ib’s Logics", style: TextStyle(
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
                    SizedBox(width: 100,),
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

            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height:28,
                    width: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xffFFFFFF)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/category.png"),
                        SizedBox(width: 5,),
                        Text("All", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          //letterSpacing: 0.65,
                          color: Color(0xff8B8B8B)
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),

                  Container(
                    height:28,
                    width: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xffFFFFFF)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/category.png"),
                        SizedBox(width: 5,),
                        Text("Computers", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            //letterSpacing: 0.65,
                            color: Color(0xff8B8B8B)
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),

                  Container(
                    height:28,
                    width: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xffFFFFFF)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/category.png"),
                        SizedBox(width: 5,),
                        Text("Speakers", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            //letterSpacing: 0.65,
                            color: Color(0xff8B8B8B)
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),

                  Container(
                    height:28,
                    width: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xffFFFFFF)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/category.png"),
                        SizedBox(width: 5,),
                        Text("Headset", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            //letterSpacing: 0.65,
                            color: Color(0xff8B8B8B)
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0,),
              child: const Row (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Sales", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff343333)
                  ),),

                  Text("See all", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xff2794F9)
                  ),),
                ],

              ),
            ),
            SizedBox(height: 20,),

            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: 2 ,
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
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => (ProductDetails())));
                                            },
                                            child: Image.asset(items[index].image)),
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
                                  child: Text(items[index].description, style: TextStyle(
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
                                      Text(items[index].price , style: TextStyle(
                                        color: Color(0xff343333),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w700,
                                      ),),
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 12,
                                        child: GestureDetector(
                                          onTap: () {if (_cartBadgeAmount > 0) {
                                            final selectedCartItem = items[index]; // Get the selected item
                                            items_model.addToCart(selectedCartItem);}

                                            setState(() {
                                              _cartBadgeAmount++;
                                            });
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 12,
                                            child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),
                                          ),
                                        ),//child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                        );
                }
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0,),
              child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured Products", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff343333)
                  ),),

                  Text("See all", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xff2794F9)
                  ),),
                ],

              ),
            ),
            SizedBox(height: 10,),

            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: items.length-2 ,
                itemBuilder: (context, index) {

                  return Container(
                    height: 257,
                    width: 166,
                        color: Color(0xffFFFFFF),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0),
                                  child: Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xffFAFCFF),
                                    child: Center(
                                      child: Image.asset(items[index+2].image),
                                    ),
                                  ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(items[index+2].name, style: TextStyle(
                                  color: Color(0xff343333),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                ),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(items[index+2].description, style: TextStyle(
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
                                    Text(items[index+2].price , style: TextStyle(
                                      color: Color(0xff343333),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 12,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _cartBadgeAmount++;// widget.cartManager.addItem(items[index]); // Add the selected item to the shared list
                                          });
                                        },
                                        child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF))),
                                      ),
                                    ),
                                  ],

                                ),

                              ),

                            ]
                          ),

                      );
                }
            ),

            SizedBox(height: 40,),

          ],

        ),
      ),
    );
  }
}



/*class ItemsModel {
 final String name;
 final String image;
 final String price;
 final String description;
 
 ItemsModel({required this.name, required this.image, required this.price, required this.description});
}*/

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

