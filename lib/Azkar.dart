import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Azkar extends StatefulWidget {
  const Azkar({Key? key}) : super(key: key);

  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("أدعية متنوعة",style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor:Colors.brown.shade500,
      ),
      body:
      Container(child:
         Stack(children: [
         Container(
         decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage("assets/images/Home.png"),
          fit: BoxFit.cover),
           
    ),
    )
           ,
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(children: [
                    BuildAzkarItem(title: "دعاء لبس الثوب", subtitle:"الحمد لله الذي كساني هذا ورزقنيه من غير حول مني ولا قوة"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء الكرب", subtitle:"لا إله إلا الله العظيم الحليم، لا إله إلا الله رب العرش العظيم، لا إله إلا الله رب السماوات،ورب الأرض ورب العرش الكريم,اللهم رحمتك أرجو فلا تكلني إلى نفسي طرفة عين وأصلح لي شأني كله،لا إله إلا أنت سبحانك إني كنت من الظالمين"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء قضاء الدين", subtitle:"اللهم اكفنى بحلالك عن حرامك وأغننى بفضلك عمن سواك"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء الريح", subtitle:"اللهم إنى أسألك خيرها، وخير ما فيها، وخير ما أرسلت به، وأعوذ بك من شرها، وشر ما فيها وشر ما أرسلت به"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء الرعـد", subtitle:"سبحان الله الذي يسبح الرعد بحمده والملائكة من خيفته"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء زيارة القبور", subtitle:"السلام عليكم أهل الديار من المؤمنين والمسلمين، وإنا إن شاء الله بكم لاحقون ويرحم الله المستقدمين منا والمستأخرين، أسأل الله لنا ولكم العافية"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء نزول المطر", subtitle:"اللهم صيباَ نافعاَ"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاءالركوب", subtitle:"سبحان الذي سخر لنا هذا وما كنا له مقرنين وإنا إلى ربنا لمنقلبون"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعـاء من استصعب عليه أمر", subtitle:"اللهم لاسهل إلا ماجعلته سهلا وأنت تجعل الحزن إذا شئت سهلا"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "الدعاء عند افطار الصائم", subtitle:"ذهب الضمـأ ، وأبتلت العروق ، وثبت الأجر إن شاء الله "),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعاء من أصيب بمصيبة", subtitle:"إنا لله وإنا إليه راجعون اللهم أجرني في مصيبتي واخلف لي خيرا منها"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "الدعاء للمريض", subtitle:"أسأل الله العظيم رب العرش العظيم أن يشفيك"),
                  Divider(color: Colors.brown,thickness: 2,),
                  BuildAzkarItem(title: "دعـاء الغـضـب", subtitle:"أعوذ بالله من الشيطان الرجيـم"),
                  Divider(color: Colors.brown,thickness: 2,),

                ],),
              ),
            ),
         ],



         )
      )
    );


  }
Widget BuildAzkarItem({required String title, required String subtitle}){
    return (Column(
      children: [
      Text("$title",style: TextStyle(fontWeight: FontWeight.bold,fontSize:32,color: Colors.brown ),),
      Text("$subtitle",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.black,fontFamily:'Arabic',height: 2),textDirection: TextDirection.rtl,)
    ],));
}
}
