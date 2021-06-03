import 'package:flutter/material.dart';
import 'planets.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: Color(0xFFB6B2DF), fontSize: 9.0, fontWeight: FontWeight.w400);
    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );
    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 8.0),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xFF00C6FF),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Row(
                  children: <Widget>[
                    new Image.asset("assets/img/ic_distance.png", height: 12.0),
                    new Container(width: 8.0),
                    new Text(planet.distance, style: regularTextStyle),
                  ],
                ),
              ),
              new Expanded(
                child: new Row(
                  children: <Widget>[
                    new Image.asset("assets/img/ic_gravity.png", height: 12.0),
                    new Container(width: 8.0),
                    new Text(planet.gravity, style: regularTextStyle),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0))
          ]),
    );
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: new Stack(
        children: <Widget>[planetCard, planetThumbnail],
      ),
    );
  }
}
