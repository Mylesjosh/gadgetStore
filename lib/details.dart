import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gadget_store/items_model.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  final ItemsModel selected;
  const ProductDetails({required this.selected, Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {
  late ItemsModel selected;
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    selected = widget.selected;
  }

  Widget build(BuildContext context){
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff131312),
        title: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Product Details"),

              ],
            ),
          ),

        ),
      ),

      body: ListView(
        children: [
      ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(color: Color(0xffEDECF2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Center(child: Image.asset(selected.image,fit: BoxFit.fitHeight,)),
                    width: MediaQuery.of(context).size.width,
                    height: 300.h,
                  ),


                    ClipPath(
                          clipper: WaveClipperOne(),
                          child: Container(height:300.h,

                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                             ),

                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0, right: 30.0,top: 30,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(selected.name, style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,

                                  ),),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      },
                                  ),

                                  SizedBox(height: 10,),

                                  Text(selected.description2, style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,

                                  ),),
                                  SizedBox(height: 10,),

                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                          Text("\$299.99", style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,color: Colors.black,
                                          ),),

                                      Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
                                          child:
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {

                                              });
                                              cartProvider.addToCart(selected);
                                            },
                                            child: Text('Add to Cart'),

                                          ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),

                            ),
                          ),
                        ),




                ],
              ),
            );
    }
      ),

        ],
      ),
    );
  }
}