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
            title: Text('Schnitzel Wiener Art\n10€\n'),
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
                onPressed: () {},
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
            color: Color(0xff5c4d4d),
            indent: 2,
            endIndent: 2,
          ),
          const ListTile(
            title: Text('Fanta\n3,50€\n'),
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
