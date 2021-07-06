import 'package:flutter/material.dart';

import 'grid_item_details.dart';
import 'model/item.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(this.item),
          ),
        );
      },
      /*child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 12.0,
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Ink.image(
              image: AssetImage(item.imageUrl),
              height: 500,
              fit: BoxFit.cover,

            ),
            Text(

              item.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
                height: 3,
              ),

            ),
          ],
        ),
      ),
    );
  }
}

/*class HeaderContent extends StatelessWidget {
  final Item item;

  HeaderContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


