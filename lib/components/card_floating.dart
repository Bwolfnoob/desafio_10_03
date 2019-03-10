import 'package:desafio_09_03_2019/models/item_model.dart';
import 'package:desafio_09_03_2019/pages/detail/detail_page.dart';
import 'package:flutter/material.dart';

class CardFloating extends StatefulWidget {
  final ItemModel item;

  CardFloating(this.item);

  @override
  _CardFloatingState createState() => _CardFloatingState();
}

class _CardFloatingState extends State<CardFloating> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return DetailPage(widget.item);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 20),
        child: Card(
          elevation: 1,
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            width: MediaQuery.of(context).size.width - 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: "title${widget.item.title}",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      widget.item.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.item.date,
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: <Widget>[
                    Hero(
                      tag: "price${widget.item.price}",
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          "R\$ ${widget.item.price}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
