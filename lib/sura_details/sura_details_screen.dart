import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/sura_details/sura_details_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  SuraDetailsScreen({Key? key}) : super(key: key);
  static const String routName = 'Sura_Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraDetailsArgs =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    if (verses.isEmpty) loadFile(suraDetailsArgs.index);
    return Stack(
      children: [
        Image.asset('assets/images/default_bg.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                // 3l4an ne3red name elsora bel Index bta3ha fe el page bta3etha
                '${suraDetailsArgs.name}',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.black, fontSize: 30),
              )),
          body: verses == 0
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (_, index) {
                    return SuraDetailsItem(verses[index].toString());
                  },
                  itemCount: verses.length,
                ),
        )
      ],
    );
  }

  // 3l3an n Add details Elsora
  void loadFile(int index) async {
    //use index +1 because files txt btbd2 b1
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = [];
    lines.add(content);
    print(lines);
    verses = lines;
    setState(() {});
  }
}

//3l4an negeeb el index bta3 name elsors hn Create class
class SuraDetailsModel {
  String name;
  int index;
  SuraDetailsModel(this.name, this.index);
}
