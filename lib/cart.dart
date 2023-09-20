import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gadget_store/items_model.dart';

class ProductsCart extends StatefulWidget {

 const ProductsCart({Key? key}) : super(key: key);
  @override
  State<ProductsCart> createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff131312),
          title: Center(
            child: Text("My Cart", style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20, fontWeight: FontWeight.w600 ),),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
          child: ListView(
            children: [
              SizedBox(height: 25,),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index){

                  /*final ItemsModel cartItem = value.cart[index];

                  final String Itemname = cartItem.name;
                  final String Itemprice = cartItem.price;
                  final String Itemdes = cartItem.description1;
                  final String Itemimg = cartItem.image;*/


                  return Card(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(access[index].image,height: 120, width: 200,),
                            SizedBox(width: 5.w,),

                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(access[index].name),
                                SizedBox(height: 5.h,),
                                Text(access[index].description1),
                                SizedBox(height: 7.h,),
                                Text(access[index].price),
                              ],
                            ),
                          ],
                        ),

                       // SizedBox(width: 10.w,),

                        Column(mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(radius: 14,
                                  backgroundColor: Color(0xff343333),
                                  child: Center(child: Icon(Icons.remove, color: Color(0xffFFFFFF),)),),
                                SizedBox(width: 5,),
                                Text("1"),
                                SizedBox(width: 5,),
                                CircleAvatar(radius: 14,
                                  backgroundColor: Color(0xff343333),
                                  child: Center(child: Icon(Icons.add, color: Color(0xffFFFFFF),)),),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  );
                }
            ),

              SizedBox(height: 20,),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Item Quantity:"),
                          SizedBox(height: 5,),
                          Text("Total:")
                        ],
                      ),

                      Column(
                        children: [
                          Text("4"),
                          SizedBox(height: 5,),
                          Text("\$2099.99")
                        ],
                      ),
                    ],
                  ),

                ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Check Out'),


                ),
              ),
              SizedBox(height: 20.h,),

            ]
          ),
        ),


      );
  }
}

