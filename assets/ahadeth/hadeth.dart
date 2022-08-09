import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTap extends StatefulWidget {


  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<AhadethModel> Allahadeth=[];

  @override
  Widget build(BuildContext context) {
    if(Allahadeth.isEmpty){ LoadHadethFile();}

    return Column(children: [
      Image.asset('assets/images/hadeth_logo.png'),
 Divider(height: 40,thickness: 3,color:Color(0xFFB7935F)),
      Text('Alhadeth',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      Divider(height: 40,thickness: 3,color: Color(0xFFB7935F),),

      Expanded(
        child: ListView.separated(itemBuilder: (_, index) {
          return HadethItem(Allahadeth[index]);
        },

            separatorBuilder: (_,index){
          return Container(height: 1,margin: EdgeInsets.symmetric(horizontal: 50,),color : Color(0xFFB7935F),
          );
            },
            itemCount : Allahadeth.length),
      )
    ],



    );
  }
  void LoadHadethFile()async{
    // hn3ml bass ll hadeth kolo
 String content= await rootBundle.loadString('assets/ahadeth/ahadeth.txt');
List<String> hadeth=content.trim().split('#\r\n');
for(int i=0;i<hadeth.length;i++)
{
  String allHadethText=hadeth[i];
  allHadethText.trim();
  List<String>  lines= allHadethText.split('\n');
  String title=lines[i];
  lines.removeAt(0);
  AhadethModel ahadethModel=AhadethModel(title, lines) ;
  Allahadeth.add(ahadethModel);

}
setState(() {

});
  }
}
class AhadethModel{
  String title;
  List<String> content;
  AhadethModel(this.title,this.content);
}
