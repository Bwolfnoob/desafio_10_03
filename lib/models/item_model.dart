import 'package:uuid/uuid.dart';

class ItemModel {
  String id;
  final String title;
  final String image;
  final String price;
  final String date;
  bool favorite;

  ItemModel(this.title, this.image, this.price, this.date) {
    id = Uuid().v1();
  }

  static List<ItemModel> list;
  static List<ItemModel> items() {
    if (list != null) {
      return list;
    }

    list = List<ItemModel>();

    list.add(ItemModel(
        "Quarto Legal com muitas coisas e muitas coisas mesmo, e se tiver mais coaisasa?",
        "https://fotos.vivadecora.com.br/decoracao-quarto-de-casal-tapete-creme-casacor2016-104905-square_cover_xsmall.jpg",
        "201,20",
        "07/04/2019"));
    list.add(ItemModel(
        "Quarto cor mais quente",
        "https://fotos.vivadecora.com.br/decoracao-quarto-de-casal-paredes-marrom-carlosrossi-621-square_cover_xsmall.jpg",
        "108,20",
        "07/04/2019"));
    list.add(ItemModel(
        "Quarto mais Bonito",
        "https://www.gazetadopovo.com.br/haus/wp-content/uploads/2018/02/decoracao-de-quarto-com-cores-neutras-13-1002x564.jpg",
        "381,20",
        "07/04/2019"));

    return list;
  }
}
