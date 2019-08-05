import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
   PlantCard({
    this.name, this.isFavorite, this.imageName
  });

final String name;
  final bool isFavorite;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 8.0, 4.0),
          decoration: BoxDecoration(
            color:  Colors.grey,
            borderRadius: BorderRadius.circular(15.0),
            border: new Border.all(color: Color(0xFF0C9164)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'images/$imageName',
                    width: 95.0,
                    height: 125.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 2.0,
                  left: 2.0,
                  child: InkWell(
                    child: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 85.0,
                  left: 10.0,
                  right: 0.0,
                  bottom: 10.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 1.0, 0.0, 1.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF0C9164),
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(30.0)),
                      border: new Border.all(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
