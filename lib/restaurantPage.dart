import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {


  final List<Widget> _menu = <Widget>[
    Card(
      clipBehavior: Clip.antiAlias,
      elevation: 8,
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Schnitzel Wiener Art\n10€\n',
              style: TextStyle(fontSize: 20)
            ),
            subtitle: Text(
              'Pommes oder Spätzle als Beilage'
            ),
          ),
          Image.asset('assets/placeholder-image.png'),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                child: const Text('Zur Bestellung hinzufügen'),
                onPressed: () {
                },
              )
            ],
          )
        ],
      ),
    ),
    Card(
      clipBehavior: Clip.antiAlias,
      elevation: 8,
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Fanta\n3,50€\n',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
                'Erfrischungsgetränk'
            ),
          ),
          Image.asset('assets/placeholder-image.png'),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                child: const Text('Zur Bestellung hinzufügen'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name)
      ),
      body: ListView.builder(
        itemCount: _menu.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              _menu[index]
            ],
          );
        },
      ),
    );
  }
}
