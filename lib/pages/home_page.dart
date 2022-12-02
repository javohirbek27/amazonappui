import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: const Image(
          width: 100,
          image: AssetImage("assets/images/amazon_logo.png"),
        ),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.mic),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10,),
              color: const Color(0xFF018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Color(0xFF018197),),
                        ),
                      ),
                    ),
                   Icon(Icons.camera_alt, color: Color(0xFF018197),),
                  ],
                ),
              ),
            ),
            Expanded(
                child:ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.blueGrey,
                      child: Row(
                        children: const [
                          Icon(Icons.location_on, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Delivery to Uzbekistan, Republic off", style: TextStyle(color: Colors.white),),
                        ],
                      )
                    ),
                    Container(
                      color: Colors.white,
                      height: 140,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 180,
                            color: Colors.white,
                            child: const Center(
                              child: Text("We ship 45 million production", style: TextStyle(fontSize: 16),),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    bottomLeft: Radius.circular(70),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/image_1.jpeg"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              )),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 160,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(" Sign in for the best experience",
                          style: TextStyle(fontSize: 18,
                          ),
                          ),
                          const SizedBox(height: 15,),
                          MaterialButton(
                            height: 50,
                              onPressed: () {},
                              minWidth: double.infinity,
                            color: Colors.orange,
                            child: const Text("Sign in", style: TextStyle(fontSize: 18),),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Create an account", style:TextStyle(fontSize: 18,))
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Deal of the Day", style: TextStyle(fontSize: 27,),),
                          SizedBox(height: 16,),
                            Image(image: AssetImage("assets/images/item_7.jpeg"),
                            fit: BoxFit.cover,
                              height: 240,
                              width: double.infinity,
                            ),
                          SizedBox(height: 16,),
                          Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 17),),
                          SizedBox(height: 6,),
                          Text("\$10.99 - \$70.99", style: TextStyle(fontSize: 17,),)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Best sellers in electronics", style: TextStyle(fontSize: 22),),
                          SizedBox(
                            height: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                    child:Column(
                                  children: const [
                                    Expanded(
                                        child: Image(
                                            image: AssetImage("assets/images/item_7.jpeg"),
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                        child: Image(
                                            image: AssetImage("assets/images/item_6.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_5.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_4.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                  ],
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
