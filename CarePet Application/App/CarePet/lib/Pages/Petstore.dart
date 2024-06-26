
import 'package:face_diseases_app/Pages/petfood.dart';
import 'package:face_diseases_app/Pages/pets.dart';
import 'package:flutter/material.dart';

import 'otherthings.dart';

//import 'Place.dart';
//import 'Guide.dart';
//import 'Accommodation.dart';

class SimpleAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Pet Store'),
        //centerTitle: true,

        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.indigoAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.shopping_bag), text: 'Pet Food'),
            Tab(icon: Icon(Icons.pets), text: 'Pets'),
            Tab(icon: Icon(Icons.shopping_cart), text: 'Other Things'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          PetFoodsScreen(),
          PetsScreen(),
          Other(),
          //PlacePage(),
          //GuidePage(),
          //AccommodationPage(),
        ],
      ),
    ),
  );
}