import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gadget_store/items_model.dart';
import 'package:provider/provider.dart';

class ProductsCart extends StatefulWidget {

 const ProductsCart({ Key? key}) : super(key: key);
  @override
  State<ProductsCart> createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {

  @override

  Widget build(BuildContext context) {

    final cartProvider = Provider.of<CartProvider>(context);
    int totalquantity = 0;
    double totalprice = 0;
    cartProvider.cartItems.forEach((item) {
      totalprice += item.price*item.quantity;
    });

    cartProvider.cartItems.forEach((item) {
      totalquantity += item.quantity;
    });
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
          child: ListView(padding: const EdgeInsets.only(left: 10.0, right: 13.0,),
            children: [
              SizedBox(height: 25,),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cartProvider.cartItems.length,
                itemBuilder: (context, index){

                  final item = cartProvider.cartItems[index];
                  return Card(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(item.image,height: 120, width: 120,),
                            SizedBox(width: 5.w,),

                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(item.name),
                                SizedBox(height: 5.h,),
                                Text(item.description1),
                                SizedBox(height: 7.h,),
                                Text(item.price.toString()),
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
                                GestureDetector(
                                  onTap: () {
                                    if (item.quantity > 1) {
                                      cartProvider.decrementQuantity(item);
                                    }
                                    else
                                    cartProvider.removeFromCart(item);
                                  },
                                  child: CircleAvatar(radius: 14,
                                    backgroundColor: Color(0xff343333),
                                    child: Center(child: Icon(Icons.remove, color: Color(0xffFFFFFF),)),),
                                ),
                                SizedBox(width: 5,),
                                Text(item.quantity.toString()),
                                SizedBox(width: 5,),

                                GestureDetector(
                                  onTap: (){
                                    cartProvider.incrementQuantity(item);
                                  },
                                  child: CircleAvatar(radius: 14,
                                    backgroundColor: Color(0xff343333),
                                    child: Center(child: Icon(
                                      Icons.add,
                                      color: Color(0xffFFFFFF),
                                    )),),
                                ),
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
                          Text(totalquantity.toString()),
                          SizedBox(height: 5,),
                          Text(totalprice.toString()),
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

