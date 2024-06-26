import 'package:flutter/material.dart';

class PetInsurancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Pet Insurance', style: TextStyle(color: Colors.white)),
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
              buildTitleSection('Insurance Details'),
              SizedBox(height: 10),
              buildParagraphSection('Ensure your pet is protected with our comprehensive pet insurance plans, covering everything from routine check-ups to emergency treatments.'),
              SizedBox(height: 20),
              buildTitleSection('Coverage Options'),
              SizedBox(height: 10),
              buildCoverageDetails(),
              SizedBox(height: 20),
              buildQuoteForm(context),
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
          'assets/pet insurance.jpg',  // Ensure this asset is available in your project
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildTitleSection(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
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

  Widget buildCoverageDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Accident & Illness Plan: Covers both minor and major incidents, including surgeries and medications.', style: TextStyle(fontSize: 16)),
        SizedBox(height: 10),
        Text('Wellness Plan: Provides routine health checks and vaccinations.', style: TextStyle(fontSize: 16)),
        SizedBox(height: 10),
        Text('Comprehensive Plan: A combination of both accident coverage and wellness care.', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget buildQuoteForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Get Your Quote', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Your Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Pet\'s Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Pet\'s Age',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Quote Requested'),
                content: Text('Your insurance quote request has been submitted.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
          child: Text('Request Quote'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 69, 84, 255),
          ),
        ),
      ],
    );
  }

  Widget buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 37, 0, 219),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'For more information or to discuss your existing insurance policy, contact our support team.',
          style: TextStyle(
            fontSize: 14,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
