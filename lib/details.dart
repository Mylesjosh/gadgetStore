import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff131312),
        title: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/text.png"),

              ],
            ),
          ),

        ),
        actions: [
          Image.asset("assets/images/cart.png"),
        ],
      ),

      body: ListView(
        children: [
      GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: 1 , 
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xffF5FAFF),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Image.asset("assets/images/headphone.png"),
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Airpods Max", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,

                      ),),
                      SizedBox(height: 20,),

                      Text("Apple-designed dynamic driver provides high-fidelity audio.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear. The sound is amazing and the bass super. This is perfect for the new year as a gift as well.", style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,

                      ),),
                      SizedBox(height: 40,),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              Text("\$299.99", style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,color: Color(0xff843667)
                              ),),

                          Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
                              child:
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
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),


              ],
            );
    }
      ),

        ],
      ),
    );
  }
}