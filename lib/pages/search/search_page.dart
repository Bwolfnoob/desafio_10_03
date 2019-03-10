import 'package:desafio_09_03_2019/components/card_room.dart';
import 'package:desafio_09_03_2019/models/item_model.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Alguma coisa",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.grey[200],
                        child: Text("Ok"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.grey[200],
                        child: Text("Limpar"),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ItemModel.items().length,
                itemBuilder: (BuildContext context, int index) {
                  return CardRoom(ItemModel.items().elementAt(index));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
