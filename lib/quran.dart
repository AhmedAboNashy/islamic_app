import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/main.dart';
class quran extends StatelessWidget {

  List<String> suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Image.asset('assets/images/qur2an_screen_logo.png')),
      Divider(thickness: 3,color: Color(0xFFB7935F),),
       Text('Suras',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400,),),
      Divider(thickness: 3,color: Color(0xFFB7935F),),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(suraName[index],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
            separatorBuilder:  (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(thickness: 2,color: Color(0xFFB7935F))),
            itemCount: suraName.length
        ),
      )
    ],);

  }
}