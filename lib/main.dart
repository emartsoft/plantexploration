import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantexploration/widgets/avatar_image.dart';
import 'package:plantexploration/widgets/mid_image.dart';
import 'package:plantexploration/widgets/plant_card.dart';
import 'package:plantexploration/widgets/topbar.dart';

import 'models/new_plants.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Exploration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Rajdhani',
      ),
      home: MyHomePage(title: 'Plant Exploration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NewPlant> initialNewPlants = []
    ..add(NewPlant('Aboli', false, 'aboli.jpg'))
    ..add(NewPlant('Amarylis', true, 'amarylis.jpg'))
    ..add(NewPlant('Clivia', false, 'clivia.jpg'))
    ..add(NewPlant('Lily', false, 'lily.jpg'))
    ..add(NewPlant('Sunflower', false, 'Sunflower.jpg'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 210.0,
              margin: EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
              decoration: BoxDecoration(
                color: Color(0xFF0C9164),
                borderRadius: BorderRadius.circular(30.0),
                border: new Border.all(color: Colors.green),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    TopBar(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (var i = 0; i < initialNewPlants.length; i++)
                            (PlantCard(
                                name: initialNewPlants[i].name,
                                isFavorite: initialNewPlants[i].favourite,
                                imageName: initialNewPlants[i].imageName)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 310.0,
              margin: EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(30.0),
                border: new Border.all(color: Colors.white10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Today\'s Share',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          FlatButton(
                            child: Text('See All'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  MidImage(
                                    imageName: 'thaliana.jpg',
                                    width: 175,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  MidImage(
                                    imageName: 'nightshade.jpg',
                                    width: 175,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              MidImage(
                                imageName: 'spathiphyllum.jpeg',
                                width: 165,
                                height: 220,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150.0,
              margin: EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0.0),
              decoration: BoxDecoration(
                color: Color(0xFFE1E5E9),
                borderRadius: BorderRadius.circular(30.0),
                border: new Border.all(color: Color(0xFFE1E5E9)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Added Friends',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('5 Total'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 4.0, 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Positioned(
                                    child: AvatarImage(
                                      imageName: 'friend1.jpg',
                                    ),
                                  ),
                                  Positioned(
                                    left: 35.0,
                                    child: AvatarImage(
                                      imageName: 'friend2.jpg',
                                    ),
                                  ),
                                  Positioned(
                                    left: 70.0,
                                    child: AvatarImage(
                                      imageName: 'friend3.jpg',
                                    ),
                                  ),
                                ],
                              ),
                              FlatButton(
                                child: Text('+2 more'),
                                onPressed: () {},
                              ),
                              Column(
                                children: <Widget>[
                                  RaisedButton.icon(
                                    elevation: 0.0,
                                    label: Text('Add New'),
                                    icon: Icon(Icons.add),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Refresh',
        backgroundColor: Color(0xFF0C9164),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 35.0,
            ),
          ],
        ),
        elevation: 50.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        color: Color(0xFFE1E5E9),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.lightbulb_outline,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 40.0, 8.0),
              icon: Icon(
                Icons.check_box_outline_blank,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            IconButton(
               padding: EdgeInsets.fromLTRB(48.0, 8.0, 8.0, 8.0),
              icon: Icon(
                Icons.search,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 28.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
