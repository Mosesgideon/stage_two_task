import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stage_two_task/features/my_cv.dart';
import 'package:stage_two_task/features/screens/edit_screen.dart';
import 'package:stage_two_task/features/widgets/custom_butt0n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyCv myCv = MyCv.defaultCv();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'HNGx CV ',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,color: Colors.black),
            ),
          ),

        ),
        body: Container(
          padding: const EdgeInsets.only(top: 0,bottom: 10,left: 10,right: 10),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2)
          ]),
          child: Padding(
            padding:  const EdgeInsets.only(top: 0,bottom: 16,left: 16,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 40,),
                    // const Text(
                    //   'HNGx CV ',
                    //   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,color: Colors.black),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Full name:',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      myCv.fullname,
                      style:  TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Slack username:',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      myCv.slackname,
                      style:  TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Github Handle:',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      myCv.githubhandle,
                      style:  TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'A brief personal bio:',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      myCv.bio,
                      style:  TextStyle( fontSize: 14,color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                CustomButton(
                  padding: EdgeInsets.symmetric(horizontal: 6,vertical: 17),
                  // isExpanded: false,

                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Edit CV'),
                        SizedBox(width: 5,),
                        Icon(Icons.edit,size: 15,)
                      ],
                    ), onPressed: (){
                  editCv();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void editCv() async {
    var cv = await Navigator.of(context)
        .push(CupertinoPageRoute(builder: (index) => EditScreen(myCv: myCv)));

    if (cv != null) {
      myCv = cv;
    }


  }
}
