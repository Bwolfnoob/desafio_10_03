import 'package:desafio_09_03_2019/models/item_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final ItemModel item;
  DetailPage(this.item);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Hero(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Image.network(
                widget.item.image,
                fit: BoxFit.fill,
              ),
            ),
            tag: widget.item.image,
          ),
          Positioned(
            top: 35,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .45,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      offset: Offset(1, 1),
                      color: Colors.black.withOpacity(0.2),
                    )
                  ],
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(24),
                width: MediaQuery.of(context).size.width - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          widget.item.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      tag: "title${widget.item.title}",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 150,
                      ),
                      child: Text(
                        "William Shakespeare (Stratford-upon-Avon, 1564 (batizado a 26 de abril) — Stratford-upon-Avon, 23 de abril de 1616)[1] foi um poeta, dramaturgo e ator inglês.",
                        style: TextStyle(height: 1.3),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.item.date,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                stars(2),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "285",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.network(
                                "https://scontent.fcxj2-1.fna.fbcdn.net/v/t31.0-8/665253_471142639597703_534196741_o.jpg?_nc_cat=106&_nc_ht=scontent.fcxj2-1.fna&oh=afe2471283324b32b0f7961f9984071b&oe=5D180660"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      offset: Offset(1, 1),
                      color: Colors.black.withOpacity(0.2))
                ],
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(minWidth: 100),
                    child: Hero(
                      tag: "price${widget.item.price}",
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          "R\$ ${widget.item.price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 1,
                    onPressed: () {},
                    color: Color(0xff353535),
                    child: Text(
                      "Adicionar",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget stars(int i) {
  var yelows = List.generate(
      i,
      (item) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ));

  yelows.addAll(List.generate(
      5 - i,
      (item) => Icon(
            Icons.star,
            color: Colors.grey,
            size: 20,
          )));

  return Row(children: yelows);
}
