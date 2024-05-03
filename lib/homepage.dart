import 'package:ecommerce_ui/details.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List categories = [
    {
      'images': 'images/pngegg (33).png',
      'title': 'Men',
      'color': Colors.grey[200],
    },
    {
      'images': 'images/pngegg (34).png',
      'title': 'Women',
      'color': Colors.grey[200],
    },
    {
      'images': 'images/pngegg (38).png',
      'title': 'Eletrical',
      'color': Colors.orange,
    },
    {
      'images': 'images/pngegg (35).png',
      'title': 'Hobbies',
      'color': Colors.grey[200],
    },
    {
      'images': 'images/pngegg (40).png',
      'title': 'Gifts',
      'color': Colors.grey[200],
    }
  ];
  List items = [
    {
      'images': 'images/pngegg (41).png',
      'title': 'Apple Watch G 24',
      'suptitle': 'Smart Watch ',
      'price': '350\$',
    },
    {
      'images': 'images/pngegg (46).png',
      'title': 'Headset N0',
      'suptitle': 'Smart ',
      'price': '499\$',
    },
    {
      'images': 'images/pngegg (32).png',
      'title': 'Headphone N 9',
      'suptitle': 'Not found ',
      'price': '299\$',
    },
    {
      'images': 'images/pngegg (42).png',
      'title': 'Canon Camera H 9',
      'suptitle': 'Cameras',
      'price': '499\$',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[200],
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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'search',
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          prefixIcon: const Icon(Icons.search)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Container(height: 30),
              const Text(
                'categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(height: 20),
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              categories[i]['images'],
                              height: 40,
                              width: 40,
                            ),
                            decoration: BoxDecoration(
                                color: categories[i]['color'],
                                borderRadius: BorderRadius.circular(60)),
                            padding: const EdgeInsets.all(20),
                          ),
                          Container(height: 4),
                          Text(
                            categories[i]['title'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: const Text(
                  'Best Selling',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                ),
                itemCount: items.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemsDetails(data: items[i]),
                      ));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20)),
                            width: 300,
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              items[i]['images'],
                              height: 140,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            items[i]['title'],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(height: 5),
                          Text(
                            items[i]['suptitle'],
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Container(height: 5),
                          Text(
                            items[i]['price'],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 136, 0)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
