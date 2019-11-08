import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(Uygulamam());

double yukseklikYuzde;
double genislikYuzde;

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Moda uygulaması",
      home: AnaTasarim(),
    );
  }
}

class AnaTasarim extends StatefulWidget {
  @override
  _AnaTasarimState createState() => _AnaTasarimState();
}

class _AnaTasarimState extends State<AnaTasarim>
    with SingleTickerProviderStateMixin {
  TabController kontrolcu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kontrolcu = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    kontrolcu.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    yukseklikYuzde = MediaQuery.of(context).size.height / 100;
    genislikYuzde = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            controller: kontrolcu, tabs: [
          Tab(icon: Icon(Icons.more,color: Colors.grey,size: 32,),),
          Tab(icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 32,),),
          Tab(icon: Icon(Icons.comment,color: Colors.grey,size: 32,),),
          Tab(icon: Icon(Icons.cake,color: Colors.grey,size: 32,),),
        ]),
      ),
      appBar: AppBar(
        title: Text(
          "Moda uygulaması ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
              onPressed: () {
                debugPrint("kameraya basyi");
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: yukseklikYuzde * 25,
            //color: Colors.lightBlue,
            child: ListView(
              padding: EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                durumYuvarklak(
                    "dosyalar/model1.jpeg", "dosyalar/chanellogo.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model2.jpeg", "dosyalar/louisvuitton.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model3.jpeg", "dosyalar/chloelogo.png"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model1.jpeg", "dosyalar/chanellogo.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model2.jpeg", "dosyalar/louisvuitton.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model3.jpeg", "dosyalar/chloelogo.png"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model1.jpeg", "dosyalar/chanellogo.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model2.jpeg", "dosyalar/louisvuitton.jpg"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
                durumYuvarklak(
                    "dosyalar/model3.jpeg", "dosyalar/chloelogo.png"),
                SizedBox(
                  width: genislikYuzde * 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 10,
              child: Container(
                height: yukseklikYuzde * 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage("dosyalar/model1.jpeg"),
                              radius: genislikYuzde * 9),
                          SizedBox(
                            width: genislikYuzde * 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Daisy",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 21)),
                                Text("32 sn önce",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15)),
                              ],
                            ),
                          ),
                          Container(
                            child: IconButton(
                                icon: Icon(Icons.more_vert), onPressed: () {}),
                          ),
                          SizedBox(
                            height: yukseklikYuzde * 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: yukseklikYuzde * 2,
                      ),
                      Text(
                          "tüm muhteşem hikayeler iki şekilde başlar:" ,
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      SizedBox(
                        height: yukseklikYuzde * 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Hero(
                            tag: "dosyalar/modelgrid1.jpeg",
                            child: Material(
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResimDetay(resimYolu: "dosyalar/modelgrid1.jpeg")));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9),
                                  child: Image.asset(
                                    "dosyalar/modelgrid1.jpeg",
                                    fit: BoxFit.fill,
                                    height: yukseklikYuzde * 35,
                                    width: genislikYuzde * 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: genislikYuzde * 3,
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Hero(
                                  tag: "dosyalar/modelgrid2.jpeg",
                                  child: Material(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResimDetay(resimYolu: "dosyalar/modelgrid2.jpeg")));
                                      },
                                      child: Image.asset(
                                        "dosyalar/modelgrid2.jpeg",
                                        fit: BoxFit.fill,
                                        height: yukseklikYuzde * 16,
                                        width: genislikYuzde * 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: yukseklikYuzde * 2,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9),
                                child: Hero(
                                  tag: "dosyalar/modelgrid3.jpeg",
                                  child: Material(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResimDetay(resimYolu:"dosyalar/modelgrid3.jpeg" ,)));
                                      },
                                      child: Image.asset(
                                        "dosyalar/modelgrid3.jpeg",
                                        fit: BoxFit.fill,
                                        height: yukseklikYuzde * 16,
                                        width: genislikYuzde * 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "#hashtag",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.brown.withOpacity(.5),
                            ),
                            SizedBox(
                              width: genislikYuzde * 4,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "#filan",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.brown.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.reply,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: genislikYuzde * 2,
                            ),
                            Text(
                              "763",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: genislikYuzde * 10,
                            ),
                            Icon(
                              Icons.comment,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: genislikYuzde * 2,
                            ),
                            Expanded(
                                child: Text("763",
                                    style: TextStyle(color: Colors.grey))),
                            SizedBox(
                              width: genislikYuzde * 2,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Text(" 7.6K", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: genislikYuzde * 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget durumYuvarklak(String modelResmi, String kanalLogosu) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(modelResmi),
              radius: genislikYuzde * 11,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundImage: AssetImage(kanalLogosu),
                radius: genislikYuzde * 4,
              ),
            )
          ],
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            "Takip Et",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.brown,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        )
      ],
    );
  }
}
