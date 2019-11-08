import 'package:flutter/material.dart';

class ResimDetay extends StatefulWidget {
  var resimYolu;

  ResimDetay({this.resimYolu});

  @override
  _ResimDetayState createState() => _ResimDetayState();
}

class _ResimDetayState extends State<ResimDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Hero(
          tag: widget.resimYolu,
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.resimYolu), fit: BoxFit.cover))),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3,
          left: MediaQuery.of(context).size.width / 3,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Lamineted",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.navigate_next,color: Colors.white,)
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          left: 15,
          child: Material(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              width: MediaQuery.of(context).size.width - 15,
              height: 200,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.width / 4,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.grey, width: 1),
                            image: DecorationImage(
                                image: AssetImage(
                              "dosyalar/dress.jpg",
                            ))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "LAMINETED",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Louis vanteddi",
                            style: TextStyle(fontSize: 21, color: Colors.grey),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Burada gereksiz bir açıklama olabilir ama bir buton iki butondan iyimidir",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "\$6500",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
