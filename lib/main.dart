import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyAccord",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAccord"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                contentBackgroundColor: Colors.deepOrangeAccent,
                collapsedTitleBackgroundColor: Colors.deepOrange,
                expandedTitleBackgroundColor: Colors.indigoAccent,
                contentBorder: Border.all(),
                contentPadding: EdgeInsets.all(10.0),
                contentBorderRadius:
                BorderRadius.all(Radius.elliptical(20.0, 20.0)),
                textStyle: TextStyle(color: Colors.tealAccent),
                titlePadding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5.0),
                title: "India",
                content:
                    "India (Hindi: Bhārat), officially the Republic of India (Hindi: Bhārat Gaṇarājya) is a country in South Asia. It is the second-most populous country, the seventh-largest country by land area, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast.",
              ),
              GFAccordion(
                collapsedIcon: Text("Show"),
                expandedIcon: Text("Hide"),
                contentBackgroundColor: Colors.pinkAccent,
                collapsedTitleBackgroundColor: Colors.pink,
                expandedTitleBackgroundColor: Colors.indigoAccent,
                title: "USA",
                content:
                    "United States, officially United States of America, abbreviated U.S. or U.S.A., byname America, country in North America, a federal republic of 50 states. Besides the 48 conterminous states that occupy the middle latitudes of the continent, the United States includes the state of Alaska, at the northwestern extreme of North America, and the island state of Hawaii, in the mid-Pacific Ocean.",
              ),
              GFAccordion(
                // collapsedIcon: Icon(Icons.add),
                // expandedIcon: Icon(Icons.minimize),
                contentBackgroundColor: Colors.redAccent,
                collapsedTitleBackgroundColor: Colors.red,
                expandedTitleBackgroundColor: Colors.indigoAccent,
                title: "Russia",
                content:
                    "Russia or the Russian Federation is a transcontinental country located in Eastern Europe and Northern Asia. It extends from the Baltic Sea in the west to the Pacific Ocean in the east, and from the Arctic Ocean in the north to the Black and Caspian seas in the south. Russia covers 17,125,191 square kilometres (6,612,073 sq mi), spanning more than one-eighth of the Earth's inhabited land area, stretching eleven time zones, and bordering 16 sovereign nations. Moscow is the country's capital and largest city; other major cities include Saint Petersburg, Novosibirsk, Yekaterinburg, Kazan, Nizhny Novgorod, Chelyabinsk and Samara.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
