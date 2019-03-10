import 'package:desafio_09_03_2019/models/item_model.dart';
import 'package:desafio_09_03_2019/pages/detail/detail_page.dart';
import 'package:flutter/material.dart';

class CardRoom extends StatelessWidget {
  final ItemModel item;
  CardRoom(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return DetailPage(item);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 150,
          width: 120,
          child: Row(
            children: <Widget>[
              Hero(
                tag: item.image,
                child: Container(
                  width: 100,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(item.image), fit: BoxFit.fill),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                width: MediaQuery.of(context).size.width - 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "title${item.title}",
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          item.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ),
                    Text(
                      item.date,
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "R\$ ${item.price}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
