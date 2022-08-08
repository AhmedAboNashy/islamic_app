import 'package:flutter/material.dart';
import 'package:islami_app/sura_details/sura_details_screen.dart';


class SuraDetails extends StatelessWidget {
  String name;
  SuraDetails(this.name);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //hn3ml pass le.. name Elsora 3la kol el pages 3la asas El index
        Navigator.pushNamed(context, SuraDetailsScreen.routName,arguments: SuraDetails(name));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$name',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
