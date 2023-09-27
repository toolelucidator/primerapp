//THIS IS A CHANGE FROM DEMO TICKET TO DEVELOP
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primerapp/presenter/controller/login_controller.dart';

class SearchPage extends GetView<LoginPageController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Login Page'),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        validator: controller.emailValidator,
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (value) {
                          controller.email = value! as RxString;
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        validator: controller.passwordValidator,
                        obscureText: true,
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (value) {
                          controller.password = value! as RxString;
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: MaterialButton(
                          color: Colors.cyanAccent,
                          onPressed: controller.submitAttempt,
                          child: Text('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
        ));
    //Center(child: Text(Get.find<LoginPageController>().title.value)));
  }
}
