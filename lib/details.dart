import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetails();
}

class _ItemsDetails extends State<ItemsDetails> {
  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          iconSize: 40,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '*',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '*',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined),
              label: '*',
            ),
          ]),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined),
            Text(
              ' Ecommerce ',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'HM',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey[600], size: 33),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['images']),
          SizedBox(height: 30),
          Container(
              alignment: Alignment.center,
              child: Text(
                widget.data['title'],
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 5),
          Container(
              alignment: Alignment.center,
              child: Text(
                widget.data['suptitle'],
                style: const TextStyle(color: Colors.grey),
              )),
          SizedBox(height: 10),
          Container(
              alignment: Alignment.center,
              child: Text(
                widget.data['price'],
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 136, 0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'color :',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(width: 5),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Grey',
                ),
                SizedBox(width: 10),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 5),
                Text('Black')
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black,
            ),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: MaterialButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                'Add To Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
