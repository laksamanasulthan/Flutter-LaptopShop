import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile_19650098/model/dartjson.dart';

class DetailScreen extends StatelessWidget {
  final dartjson place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 620) {
        return DetailWebPage(place: place);
      } else {
        return DetailMobilePage(place: place);
      }
    });
  }
}

class DetailMobilePage extends StatelessWidget {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  final dartjson place;

  DetailMobilePage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
                SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back)),
                            ),
                            FavoriteButton(),
                          ],
                        ))),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.paid),
                        SizedBox(height: 8.0),
                        Text(
                          place.price,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.ballot_rounded),
                        SizedBox(height: 8.0),
                        Text(
                          place.spek,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final dartjson place;

  DetailWebPage({required this.place});

  @override
  _DetailWebPageState createState() => _DetailWebPageState(place: place);
}

class _DetailWebPageState extends State<DetailWebPage> {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  final dartjson place;
  final _scrollController = ScrollController();

  _DetailWebPageState({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 64,
            ),
            child: Center(
              child: Container(
                width: 1200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aplikasi Informasi Laptop',
                      style: TextStyle(
                        fontFamily: 'Staatliches',
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(place.imageAsset),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              SizedBox(height: 16),
                              Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                // child: Scrollbar(
                                //   isAlwaysShown: true,
                                //   controller: _scrollController,
                                //   child: ListView(
                                //     scrollDirection: Axis.horizontal,
                                //     children: place.imageUrls.map((url) {
                                //       return Padding(
                                //         padding: const EdgeInsets.all(4.0),
                                //         child: ClipRRect(
                                //           borderRadius:
                                //               BorderRadius.circular(10),
                                //           child: Image.network(url),
                                //         ),
                                //       );
                                //     }).toList(),
                                //   ),
                                // )
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 32),
                        Expanded(
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.monetization_on),
                                      SizedBox(width: 8.0),
                                      Text(
                                        place.price,
                                        style: informationTextStyle,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.ballot_rounded),
                                      SizedBox(width: 8.0),
                                      Text(
                                        place.spek,
                                        style: informationTextStyle,
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      place.description,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Oxygen',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
