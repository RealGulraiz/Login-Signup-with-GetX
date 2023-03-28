import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup_getx/login_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 50,),
            Obx((){
              return InkWell(
                onTap: () {
                  controller.loginAPI();
                },
                child: controller.loading.value? CircularProgressIndicator(): Container(
                  height: 45,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Text('Login '),
                  ),
                ),
              );

            } ),
          ],
        ),
      ),
    );
  }
}
