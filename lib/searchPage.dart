import 'package:flutter/material.dart';
import 'package:mpcbiergarten/restaurantPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  late List<Widget> _restaurants;

  @override
  void initState() {
    super.initState();
    _restaurants = <Widget>[
      Card(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 5, top: 5),
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        child: ExpansionTile(
          title: Row(
            children: const [
              Expanded(
                flex: 7,
                child: Text(
                  "Peters Biergarten",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "4/5 ⭐",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        margin: const EdgeInsets.only(left: 10.0),
                        child: const Text(
                          "Leckere Küche mit hausgemachten Speisen!",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: const Icon(
                            Icons.menu_book_outlined
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                const RestaurantPage(name: "Peters Biergarten")
                              )
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      Card(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 5, top: 5),
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        child: ExpansionTile(
          title: Row(
            children: const [
              Expanded(
                flex: 7,
                child: Text(
                  "Josefs Biergarten",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "5/5 ⭐",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        margin: const EdgeInsets.only(left: 10.0),
                        child: const Text(
                          "Da schaut der Peter dumm!",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: const Icon(
                            Icons.menu_book_outlined
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                              const RestaurantPage(name: "Peters Biergarten")
                              )
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Suche ...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: _restaurants,
            )
          )

        ],
      )
    );
  }
}
