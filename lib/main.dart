import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List categories = [
    {
      'title': 'Pasta',
      'img':
          'https://static.vecteezy.com/system/resources/previews/016/765/983/non_2x/pasta-fast-food-cartoon-png.png'
    },
    {
      'title': 'Pizza',
      'img':
          'https://www.nicepng.com/png/full/57-575614_pizza-vector-png-cartoon-pizza-slice-png.png'
    },
    {
      'title': 'Burger',
      'img':
          'https://i.pinimg.com/originals/f9/3f/a3/f93fa330c3d76ccb5b0fa94e6d10e3cf.png'
    },
    {
      'title': 'Chicken',
      'img':
          'https://www.clipartmax.com/png/full/59-590024_hm-chicken-by-seracross-harvest-moon-chicken.png'
    }
  ];
  var cindex = 1, bottonbar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Abderrahmane',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                ),
                Text(
                  'Hungry Now ?',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 29, 131, 9),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Find Your Food ...',
                  hintText: 'Pizza',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: Icon(Icons.search),

                  // suffixIcon: Icon(Icons.check),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ...List.generate(
                      categories.length,
                      (index) => GestureDetector(
                            onTap: () {
                              cindex = index;
                              setState(() {});
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              height: 95,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: index == cindex
                                      ? Color.fromARGB(255, 29, 131, 9)
                                      : Colors.transparent,
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.network(
                                          categories[index]['img'])),
                                  Text(
                                    categories[index]['title'],
                                    style: TextStyle(
                                        color: index == cindex
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ))
                ],
              ),
              cart,
              cart,
              cart,
              cart
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  bottonbar = 0;
                  setState(() {});
                },
                icon: Icon(
                  Icons.home_filled,
                  color: bottonbar == 0
                      ? Color.fromARGB(255, 29, 131, 9)
                      : Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  bottonbar = 1;
                  setState(() {});
                },
                icon: Icon(
                  Icons.favorite,
                  color: bottonbar == 1
                      ? Color.fromARGB(255, 29, 131, 9)
                      : Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  bottonbar = 2;
                  setState(() {});
                },
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: bottonbar == 2
                      ? Color.fromARGB(255, 29, 131, 9)
                      : Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  bottonbar = 3;
                  setState(() {});
                },
                icon: Icon(
                  Icons.person,
                  color: bottonbar == 3
                      ? Color.fromARGB(255, 29, 131, 9)
                      : Colors.grey,
                )),
          ],
        ),
      ),
    );
  }

  Column cart = Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Near Me',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            'View more',
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 29, 131, 9),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 190,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mushroom Pizza',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 29, 131, 9),
                            ),
                          ),
                          Text(
                            '120',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 230, 183, 29),
                          ),
                          Text(
                            '4.5 (3K)',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/4/Pepperoni-Dominos-Pizza-PNG-Free-Download.png'),
              ),
            )
          ],
        ),
      )
    ],
  );
}
