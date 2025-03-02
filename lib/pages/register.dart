import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumberController.text.trim(),
      'name': nameController.text.trim(),
      'password': passwordController.text.trim(),
    };
  }

  @override
  Widget build(BuildContext context) {
    void register() {
      final Map<String, dynamic> data = toJson();
      print("User registered is $data");
      Navigator.pushNamed(context, 'otpVerify');
    }

    const borders = OutlineInputBorder(
        borderSide: BorderSide(width: 10, color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "REGISTER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Phone Number",
                      enabledBorder: borders,
                      focusedBorder: borders),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Name",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Name",
                      enabledBorder: borders,
                      focusedBorder: borders),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Password",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Password",
                      enabledBorder: borders,
                      focusedBorder: borders),
                  keyboardType: TextInputType.text,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: register,
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  fixedSize:
                      const WidgetStatePropertyAll(Size(double.maxFinite, 45))),
              child: const Text(
                "Send OTP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Text(
                    "Already Have Account? Login",
                    style: TextStyle(color: Colors.white60, fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
