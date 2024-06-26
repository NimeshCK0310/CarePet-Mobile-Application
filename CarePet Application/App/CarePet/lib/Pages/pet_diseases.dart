import 'package:face_diseases_app/Pages/dashboard.dart';
import 'package:flutter/material.dart';

class FaceDiseasesPage extends StatelessWidget {
  const FaceDiseasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    "Yeast_Infection",
    "Ticks",
    "Seborrhea",
    "Follicalitis",
    "Disease_Free_Skin"
  ];

  // Description List Here
  var descList = [
    "Yeast infections are common fungal infections usually caused by the overgrowth of Candida species, particularly Candida albicans"
        "  They can affect various parts of the body, but the most common types are vaginal yeast infections, oral thrush, and skin infections.",
    /*2*/ "Ticks are small arachnids that feed on the blood of mammals, birds, and sometimes reptiles and amphibians. "
        " They are known for their potential to transmit various diseases to humans and animals.",
    /*3*/ "Seborrhea, also known as seborrheic dermatitis, is a common skin condition that primarily affects the scalp, "
        " but it can also occur on other oily areas of the body, such as the face, upper chest, and back."
        " It is characterized by red, inflamed skin covered with flaky, white to yellowish scales.",
    /*4*/ "Folliculitis is an inflammation of the hair follicles, typically caused by infection, irritation, or injury. "
        "It can occur anywhere on the body where hair grows, but is most common on the face, scalp, chest, back, buttocks, and legs"
        "\n \n Symptoms :- Seborrheic keratoses are generally asymptomatic, meaning they do not cause specific symptoms such as pain or itching for most individuals",
    /*5*/ "Maintaining disease-free skin involves a combination of proper hygiene, balanced nutrition, regular exercise, hydration, and "
        "protecting your skin from sun exposure. Additionally, staying updated with "
        "vaccinations and promptly treating any skin issues or infections can contribute to overall skin health"
  ];

  // Image Name List Here
  var imgList = [
    "assets/7.jpg",
    "assets/8.jpg",
    "assets/34.jpg",
    "assets/48.jpg",
    "assets/Image_6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Color.fromARGB(255, 250, 250, 250)),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          ),
        ),
        title: Text(
          'Pet Diseases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 69, 84, 255),
      ),

      /**********************************************Body*************************************************/
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            child: Card(
              color: Color.fromARGB(255, 224, 226, 250),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 110,
                    color: Color.fromARGB(255, 214, 221, 234),
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 6, 10, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 21, 21, 21)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showDialogFunc(
    BuildContext context, String img, String title, String desc) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(img,
                  width: 200,
                  height: 200,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error)),
              SizedBox(height: 10),
              Text(desc),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}
