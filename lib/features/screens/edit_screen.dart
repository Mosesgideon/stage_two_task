import 'package:flutter/material.dart';
import 'package:stage_two_task/features/my_cv.dart';
import 'package:stage_two_task/features/widgets/custom_butt0n.dart';
import 'package:stage_two_task/features/widgets/text_input_widget.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({
    super.key,
    required this.myCv,
  });

  final MyCv myCv;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  void initState() {
    updateFields();
    super.initState();
  }

  final fullnameController = TextEditingController();
  final slackusernameController = TextEditingController();
  final githubhandleController = TextEditingController();
  final personalbioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
            color: Colors.black,
          ),
        ),
        shadowColor: Colors.black,
        title: const Text(
          'Edit CV Screen',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Full name:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              OutlinedFormField(
                hint: 'Full name',
                controller: fullnameController,
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
              OutlinedFormField(
                hint: 'Slack name',
                controller: slackusernameController,
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
              OutlinedFormField(
                hint: 'github handle',
                controller: githubhandleController,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'A brief personal bio:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                maxLines: 9,
                textInputAction: TextInputAction.done,
                controller: personalbioController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        gapPadding: 2,
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: 'brief bio',
                    prefixIconColor: Colors.grey,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 13)),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 18),
                onPressed: () {
                  updateCv();
                },
                child: const Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateFields() {
    fullnameController.text = widget.myCv.fullname;
    slackusernameController.text = widget.myCv.slackname;
    githubhandleController.text = widget.myCv.githubhandle;
    personalbioController.text = widget.myCv.bio;

  }

  void updateCv() {
    Navigator.pop(
        context,
        MyCv(
            fullname: fullnameController.text,
            slackname: slackusernameController.text,
            githubhandle: githubhandleController.text,
            bio: personalbioController.text));
  }
}
