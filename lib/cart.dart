import 'package:flutter/material.dart';

import 'package:gadget_store/items_model.dart';
import 'package:provider/provider.dart';

class ProductsCart extends StatefulWidget {

 const ProductsCart({Key? key}) : super(key: key);
  @override
  State<ProductsCart> createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {
  @override
  Widget build(BuildContext context) {final itemsModel = context.watch<ItemsModel>();
    return Consumer<ItemsModel>(builder: (context, value, child) =>
       Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff131312),
          title: Text("My Cart", style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 10, fontWeight: FontWeight.w600 ),),
          actions: [Image.asset("assets/images/cart.png"),],
        ),

        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
          child: ListView(
            children: [
              SizedBox(height: 15,),

            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20.0,
                  crossAxisCount: 1,
                ),
                itemCount: value.cart.length,
                itemBuilder: (context, index){

                  final ItemsModel cartItem = value.cart[index];

                  final String Itemname = cartItem.name;
                  final String Itemprice = cartItem.price;
                  final String Itemdes = cartItem.description;
                  final String Itemimg = cartItem.image;


                  return Container(
                    height: 99,
                    width: 343,
                    child: Row(
                      children: [
                        Image.asset(Itemimg),
                        SizedBox(width: 20,),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(Itemname),
                            SizedBox(height: 5,),
                            Text(Itemdes),
                            SizedBox(height: 10,),
                            Text(Itemprice),
                          ],
                        ),

                        SizedBox(width: 12,),

                        Column(mainAxisAlignment: MainAxisAlignment.end,
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
            )


            ]
          ),
        ),


      ),
    );
  }
}

