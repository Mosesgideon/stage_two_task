import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stage_two_task/features/my_cv.dart';
import 'package:stage_two_task/features/screens/edit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyCv myCv = MyCv.defaultCv();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'My CV',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black),
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
              // const SizedBox(
              //   height: 40,
              // ),


               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Full name:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    myCv.fullname,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Slack username:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    myCv.slackname,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Github Handle:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    myCv.githubhandle,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'A brief personal bio:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    myCv.bio,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 1))
                      ]),
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white)),
                      onPressed: () {
                        editCv();
                      },
                      child: const Text(
                        'Edit CV',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
            ],
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

    setState(() {});
  }
}
