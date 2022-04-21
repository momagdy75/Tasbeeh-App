import 'package:flutter/material.dart';
import 'package:seb7a/Azkar.dart';
import 'package:shared_preferences/shared_preferences.dart';

int counter=0;
List<Map> counters=[];
int counterone=0;
int countertwo=0;
int counterthree=0;
int counterfour=0;
int counterfive=0;
int countersix=0;
int counterseven=0;
String stringOne="سُـبْحانَ اللهِ وَبِحَمْدِهِ";
String stringTwo="الحَمْـدُ لله";
String stringThree="اللهُ أكْـبَر";
String stringFour=" لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِالله";
String stringFive="أستغفر الله";
String stringSix="لَا إِلَهَ إِلَّا اللَّهُ ";
List<String> listOne=[
  "إِنَّ اللَّهَ وَمَلائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا",
  "مَنْ قَالَ: سُبْحَانَ اللَّهِ وَبِحَمْدِهِ في يومٍ مِائَةَ مَرَّةٍ حُطَّتْ عَنْهُ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ",
  "فَاذْكُرُونِي أَذْكُرْكُمْ وَاشْكُرُوا لِي وَلَا تَكْفُرُونِ",
  " وَرَبَّكَ فَكَبِّرْ ",
  "ألا أدلك على كلمة هي كنز من كنوز الجنة: لا حول ولا قوة إلا بالله",
  "فَقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",
  "أفضل الذكر لا إله إلاّ الله",
];

String subtitle=listOne[1];
Color ResetColor=Colors.brown.shade500;
String x="سُـبْحانَ اللهِ وَبِحَمْدِهِِ";
bool typeone=false;
bool typetwo=true;
bool typethree=false;
bool typefour=false;
bool typefive=false;
bool typesix=false;
bool typeseven=false;

String y="اللهم صلي علي نبينا محمد";
double textwidth=200;
double fontsize=100;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  _readone();
  _readtwo();
  _readthree();
  _readfour();
  _readfive();
  _readsix();
  _readseven();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("المسبحة", style: TextStyle(fontWeight: FontWeight.bold,),),
      centerTitle: true,
      backgroundColor: Colors.brown.shade500,

    ),
      drawer: Drawer(child: Material(color: Colors.brown.shade400,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SafeArea(
                  child: ExpansionTile(
                    title: Text("المسبحة",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),),
                    children:
                       [
                        BuildMenuItem(
                            Title: Text("الصلاة علي النبي", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(
                              "إِنَّ اللَّهَ وَمَلائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white,
                                  height: 1.5),),
                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = y;
                                counter = counterone;
                                textwidth = 260;
                                typeone = true;
                                typetwo = false;
                                typethree = false;
                                typefour = false;
                                typefive = false;
                                typesix = false;
                                typeseven = false;
                                subtitle = listOne[0];
                                Navigator.of(context).pop();
                              });
                            }
                        ),
                        BuildMenuItem(
                            Title: Text("$stringOne", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(
                              "مَنْ قَالَ: سُبْحَانَ اللَّهِ وَبِحَمْدِهِ في يومٍ مِائَةَ مَرَّةٍ حُطَّتْ عَنْهُ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white,
                                  height: 1.5),),

                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringOne;
                                counter = countertwo;
                                typetwo = true;
                                typeone = false;
                                typethree = false;
                                typefour = false;
                                typefive = false;
                                typesix = false;
                                typeseven = false;
                                subtitle = listOne[1];
                                Navigator.of(context).pop();
                              });
                            }),
                        BuildMenuItem(
                            Title: Text("$stringTwo", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(
                                "فَاذْكُرُونِي أَذْكُرْكُمْ وَاشْكُرُوا لِي وَلَا تَكْفُرُونِ",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 1.5)
                            ),
                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringTwo;
                                counter = counterthree;
                                typeone = false;
                                typetwo = false;
                                typethree = true;
                                typefour = false;
                                typefive = false;
                                typesix = false;
                                typeseven = false;
                                subtitle = listOne[2];
                                Navigator.of(context).pop();
                              });
                            }),
                        BuildMenuItem(
                            Title: Text("$stringThree", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(" وَرَبَّكَ فَكَبِّرْ ",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 1.5)
                            ),
                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringThree;
                                typeone = false;
                                typetwo = false;
                                typethree = false;
                                typefour = true;
                                typefive = false;
                                typesix = false;
                                typeseven = false;
                                subtitle = listOne[3];
                                counter = counterfour;
                                Navigator.of(context).pop();
                              });
                            }),
                        BuildMenuItem(
                            Title: Text("$stringFour", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(
                                "ألا أدلك على كلمة هي كنز من كنوز الجنة: لا حول ولا قوة إلا بالله",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 1.5)),

                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringFour;
                                typeone = false;
                                typetwo = false;
                                typethree = false;
                                typefour = false;
                                typefive = true;
                                typesix = false;
                                typeseven = false;
                                textwidth = 260;
                                subtitle = listOne[4];
                                counter = counterfive;
                                Navigator.of(context).pop();
                              });
                            }
                        ),
                        BuildMenuItem(
                            Title: Text("$stringFive", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text(
                                "فَقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 1.5)),

                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringFive;
                                typeone = false;
                                typetwo = false;
                                typethree = false;
                                typefour = false;
                                typefive = false;
                                typesix = true;
                                typeseven = false;
                                counter = countersix;
                                Navigator.of(context).pop();
                                subtitle = listOne[5];
                              });
                            }
                        ),
                        BuildMenuItem(
                            Title: Text("$stringSix", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),),
                            Subtitle: Text("أفضل الذكر لا إله إلاّ الله",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 1.5)),

                            Icon: Icons.book,
                            function: () {
                              setState(() {
                                x = stringSix;
                                typeone = false;
                                typetwo = false;
                                typethree = false;
                                typefour = false;
                                typefive = false;
                                typesix = false;
                                typeseven = true;
                                counter = counterseven;
                                subtitle = listOne[6];
                                Navigator.of(context).pop();
                              });
                            }
                        ),
                       ],
                   childrenPadding: EdgeInsets.all(2),
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    trailing: Icon(Icons.arrow_drop_down),

                  ),
                ),
                ExpansionTile(title:Text("أدعية",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),),
                children: [
                  BuildMenuItem(Title: Text("أدعية", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),), Subtitle:Text(""), Icon: Icons.ac_unit, function:(){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return Azkar();
                      })
                  );} ),


                ],
                  trailing:Icon(Icons.arrow_drop_down),
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,

                )
              ],
            ),

          ),
        ),
        ),),

      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Home.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("$counter", style: TextStyle(
                    color: Colors.brown.shade300,
                    fontWeight: FontWeight.bold,
                    fontSize: fontsize,
                  ),),
                ),
                Text(
                  "عدد التسبيحات", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: 'Arabic',
                    color: Colors.brown),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(decoration: BoxDecoration(),

                    height: 55,
                    width: textwidth,

                    child: ElevatedButton(onPressed: () {
                      setState(() {
                        if (typeone) {
                          counterone++;
                          counter = counterone;
                    _saveone();
                        }
                        if (typetwo) {
                          countertwo++;
                          counter = countertwo;
                          _savetwo();
                        }
                        if (typethree) {
                          counterthree++;
                          counter = counterthree;
                          _savethree();
                        }
                        if (typefour) {
                          counterfour++;
                          counter = counterfour;
                          _savefour();
                        }
                        if (typefive) {
                          counterfive++;
                          counter = counterfive;
                          _savefive();
                        }
                        if (typesix) {
                          countersix++;
                          counter = countersix;
                          _savesix();
                        }
                        if (typeseven) {
                          counterseven++;
                          counter = counterseven;
                          _saveseven();
                        }

                        if (counter >= 100000) {
                          fontsize = 70;
                        }
                        else if (counter < 100000) {
                          fontsize = 100;
                        }

                      });

                    },
                      child: Text("$x", style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arabic'),),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.brown.shade500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("$subtitle", style: TextStyle(fontSize: 18,
                      fontFamily: 'Arabic',
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      height: 2.5),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 20),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [


                      Container(decoration: BoxDecoration(),

                        height: 55,
                        width: 130,

                        child: ElevatedButton(onPressed: () {
                          setState(() {
                            showAlert(context);
                          });
                        },
                          child: Text("Reset", style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arabic'),),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ResetColor),
                          ),
                        ),

                      ),



                    ],),
                )


              ],
            ),


          ],
        ),
      ),


    );
  }

  Widget defaultIcon(IconData icon, Color color) {
    return (
        Icon(icon, color: color,)
    );
  }

  Widget defaultText(Text text) {
    return (text);
  }


  Widget BuildMenuItem(
      {required Text Title, required Text Subtitle, required IconData Icon, required Function() function}) {
    final Color = Colors.white;
    return ListTile(
      leading: defaultIcon(Icon, Color),
      title: defaultText(Title),
      onTap: function,
      subtitle: defaultText(Subtitle),
    );
  }

  showAlert(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Are you sure you want to reset?"), actions: [
      TextButton(child: Text("Sure"), onPressed: () {
        setState(() {
          if (typeone) {
            counterone = 0;
            counter = counterone;
            _saveone();

          }
          if (typetwo) {
            countertwo = 0;
            counter = countertwo;
            _savetwo();
          }
          if (typethree) {
            counterthree = 0;
            counter = counterthree;
            _savethree();
          }
          if (typefour) {
            counterfour = 0;
            counter = counterfour;
            _savefour();
          }
          if (typefive) {
            counterfive = 0;
            counter = counterfive;
            _savefive();
          }
          if (typesix) {
            countersix = 0;
            counter = countersix;
            _savesix();
          }
          if (typeseven) {
            counterseven = 0;
            counter = counterseven;
            _saveseven();
          }
          Navigator.of(context).pop();
        });
      },),
      TextButton(child: Text("Cancel"), onPressed: () {
        Navigator.of(context).pop();
      },)
    ],);
    showDialog(context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
  _saveone() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '0';
    final value = counterone;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _savetwo() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '1';
    final value = countertwo;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _savethree() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '2';
    final value = counterthree;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _savefour() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '3';
    final value = counterfour;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _savefive() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '4';
    final value = counterfive;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _savesix() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '5';
    final value = countersix;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _saveseven() async{
    final prefs = await SharedPreferences.getInstance();
    final key = '6';
    final value = counterseven;
    prefs.setInt(key, value);
    print('saved $value');
  }
  _readone() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '0';
    final value = prefs.getInt(key) ?? 0;
    counterone=value;
  }
  _readtwo() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '1';
    final value = prefs.getInt(key) ?? 0;
    countertwo=value;
  }
  _readthree() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '2';
    final value = prefs.getInt(key) ?? 0;
    counterthree=value;
  }
  _readfour() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '3';
    final value = prefs.getInt(key) ?? 0;
    counterfour=value;
  }
  _readfive() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '4';
    final value = prefs.getInt(key) ?? 0;
    counterfive=value;
  }
  _readsix() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '5';
    final value = prefs.getInt(key) ?? 0;
    counterseven=value;
  }
  _readseven() async {
    final prefs = await SharedPreferences.getInstance();
    final key = '6';
    final value = prefs.getInt(key) ?? 0;
    counterseven=value;
  }
}