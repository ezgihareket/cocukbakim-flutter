import 'package:flutter/material.dart';

import 'model/item.dart';

class GridItemDetails extends StatelessWidget {
  final Item item;

  GridItemDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(item.name),
      ),
      backgroundColor: Color(0xFF761322),
      body: ListView(
        children: <Widget>[
          HeaderBanner(this.item),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
            child: Text(
              item.desc,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),

          GetTags(),

        ],
        // ),
        //],
      ),
    );
  }
}

class GetTags extends StatelessWidget {
  GetTags();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 10.0),
      height: 35.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () => {
              Navigator.pop(context),
            },
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Geri',
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF761322),fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SetTagsItem extends StatelessWidget {
  final String tag;

  SetTagsItem(this.tag);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: 100.0,
        height: 35.0,
        margin: EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF761322),
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            tag,
            style: TextStyle(fontSize: 16.0, color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  final Item item;

  HeaderBanner(this.item);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      child: Container(
        height: 260.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            HeaderImage(this.item.imageUrl2),
            HeaderContent(this.item),
          ],
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  final String imageUrl2;

  HeaderImage(this.imageUrl2);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl2,
      width: 600.0,
      height: 380.0,
      fit: BoxFit.cover,
    );
  }
}



class HeaderContent extends StatelessWidget {
  final Item item;

  HeaderContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        //color: Colors.black.withOpacity(0.1),
        constraints: BoxConstraints.expand(
          height: 110.0,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Text(
                          item.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //child:
        ),
      ),
    );
  }
}

