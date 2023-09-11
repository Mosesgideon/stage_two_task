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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'About Me',
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
                child: CustomButton(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  isExpanded: false,

                    child: Text('Edit CV'), onPressed: (){
                  editCv();
                }),
              )
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


  }
}
