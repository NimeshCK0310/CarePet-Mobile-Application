import 'package:flutter/material.dart';

class PetCertificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Pet Certification', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 69, 84, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(191, 70, 112, 211),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildImageSection(),
              SizedBox(height: 20),
              buildTitleSection('Certification Details', Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 10),
              buildParagraphSection('This certificate verifies that the pet described below has been registered in our system and is recognized as an officially certified pet with all the associated benefits and responsibilities.'),
              SizedBox(height: 20),
              buildTitleSection('Pet Information', Color.fromARGB(255, 0, 1, 33)),
              SizedBox(height: 10),
              buildPetDetails(),
              SizedBox(height: 20),
              buildTitleSection('Owner Information', Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 10),
              buildOwnerDetails(),
              SizedBox(height: 20),
              buildContactSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSection() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/certificate.png',
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildTitleSection(String title, Color color) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Widget buildParagraphSection(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        height: 1.4,
      ),
    );
  }

  Widget buildPetDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Name: Max', style: TextStyle(fontSize: 16)),
        Text('Species: Dog', style: TextStyle(fontSize: 16)),
        Text('Breed: Labrador Retriever', style: TextStyle(fontSize: 16)),
        Text('Age: 5 years', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget buildOwnerDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Owner: John Doe', style: TextStyle(fontSize: 16)),
        Text('Address: 123 Happy Street, Joy Town', style: TextStyle(fontSize: 16)),
        Text('Contact: (123) 456-7890', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Additional Resources',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 37, 0, 219),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'For more information or to download a digital copy of the certificate, visit our website or contact our support center.',
          style: TextStyle(
            fontSize: 14,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
