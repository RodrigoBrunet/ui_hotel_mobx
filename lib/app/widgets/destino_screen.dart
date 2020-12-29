import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_mobx/app/models/atividade_model.dart';
import 'package:hotel_mobx/app/models/destino_model.dart';

// ignore: must_be_immutable
class DestinoScreen extends StatefulWidget {
  final Destino destinos;
  DestinoScreen({
    Key key,
    this.destinos,
  }) : super(key: key);

  @override
  _DestinoScreenState createState() => _DestinoScreenState();
}

class _DestinoScreenState extends State<DestinoScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //     return <Widget>[
      //       SliverAppBar(
      //         expandedHeight: 320.0,
      //         collapsedHeight: 96.0,
      //         elevation: 6,
      //         forceElevated: true,
      //         floating: false,
      //         pinned: true,
      //         stretch: false,
      //         leadingWidth: 48,
      //         automaticallyImplyLeading: true,
      //         excludeHeaderSemantics: true,
      //         centerTitle: false,
      //         // leading: Icon(
      //         //   Icons.arrow_back,
      //         //   color: Colors.white,
      //         //   size: 24,
      //         // ),
      //         flexibleSpace: FlexibleSpaceBar(
      //             collapseMode: CollapseMode.parallax,
      //             stretchModes: [StretchMode.blurBackground],
      //             titlePadding: EdgeInsets.only(left: 14),
      //             // centerTitle: false,
      //             title: Container(
      //               width: MediaQuery.of(context).size.width,
      //               height: 105,
      //               child: Stack(
      //                 children: [
      //                   Positioned(
      //                     bottom: 24,
      //                     child: Text(
      //                       widget.destinos.cidade.trim(),
      //                       style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 24.0,
      //                       ),
      //                       textAlign: TextAlign.left,
      //                     ),
      //                   ),
      //                   Positioned(
      //                     bottom: 8,
      //                     child: Row(
      //                       children: [
      //                         Icon(
      //                           FontAwesomeIcons.locationArrow,
      //                           size: 6.0,
      //                           color: Colors.white.withOpacity(0.7),
      //                         ),
      //                         SizedBox(
      //                           width: 6,
      //                         ),
      //                         Text(
      //                           widget.destinos.country.trim(),
      //                           style: TextStyle(
      //                             color: Colors.white.withOpacity(0.7),
      //                             fontSize: 14.0,
      //                           ),
      //                           textAlign: TextAlign.left,
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             background: ClipRRect(
      //               borderRadius: BorderRadius.circular(10.0),
      //               child: Image(
      //                 image: AssetImage(widget.destinos.imageUrl),
      //                 fit: BoxFit.cover,
      //               ),
      //             )),
      //       ),
      //     ];
      //   },
      //   body: Center(
      //     child: Text("Sample Text"),
      //   ),
      // ),

      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.0),
                  child: Image(
                    image: AssetImage(widget.destinos.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: Modular.to.pop,
                      color: Colors.black,
                      iconSize: 30.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: Modular.to.pop,
                          color: Colors.black,
                          iconSize: 30.0,
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          onPressed: Modular.to.pop,
                          color: Colors.black,
                          iconSize: 25.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destinos.cidade,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.destinos.country,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.destinos.atividades.length,
                itemBuilder: (BuildContext context, int index) {
                  Atividade atividades = widget.destinos.atividades[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 40.0,
                          top: 5.0,
                          right: 20.0,
                          bottom: 5.0,
                        ),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120,
                                    child: Text(
                                      atividades.nome,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'R\$ ${atividades.price}',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'por noite',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                atividades.tipo,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              _buildRatingStars(atividades.rating),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      atividades.starTimes[0],
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      atividades.starTimes[1],
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(
                              atividades.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
