import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_demo/app_drawer.dart';
import 'package:widgets_demo/custom_text_form_field/custom_text_form_field.dart';

class Badges extends StatelessWidget {
  Badges({super.key});

  void _showDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          //return CupertinoDialogAction(child: Text('Dialog'));
          return CupertinoActionSheet(
            title: const Text('Action sheet'),
            message: const Text('This is an action sheet'),
            cancelButton: TextButton(
              //clipBehavior: Clip.hardEdge,
              child: const Text('cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          );
        });
  }

  //controllers for email and password textfield
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 209, 217),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Badges'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: InkWell(
                onTap: () {
                  _showDialog(context);
                },
                child: const Badge(
                  label: Text('500'),
                  child: Icon(Icons.notification_add),
                ),
              ),
            )
          ],
        ),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CustomTextFormField(
                label: "Email/Phone",
                borderStyle: BorderStyle.solid,
                textInputType: TextInputType.emailAddress,
                controller: emailController,
                // validator: emailPhoneVal,
              ),
            ],
          ),
        ));
  }
}
