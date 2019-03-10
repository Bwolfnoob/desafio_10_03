import 'package:desafio_09_03_2019/components/card_floating.dart';
import 'package:desafio_09_03_2019/models/item_model.dart';
import 'package:desafio_09_03_2019/pages/search/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                fullscreenDialog: true,
                builder: (BuildContext context) {
                  return SearchPage();
                }));
          },
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://webcomunica.site/wp-content/uploads/2019/02/maravilhoso-decorar-papel-de-parede-sala-de-estar-construplace-decoracao-de-parede-de-sala.jpg"),
                fit: BoxFit.fill)),
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 180,
            child: ListView.builder(
              physics: PageScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CardFloating(ItemModel.items().elementAt(index));
              },
            ),
          ),
        ),
      ),
    );
  }
}
