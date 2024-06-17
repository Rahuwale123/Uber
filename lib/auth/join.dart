import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uber/auth/otpverify.dart';

class Join extends StatefulWidget {
  const Join({super.key});

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter your mobile number",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: IntlPhoneField(
                  controller: number,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Otpverify()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(11, 11))),
                    child: const Center(
                        child: Text(
                      "continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                    child: Text("Or"),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 234, 233, 233),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(11, 11))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with google",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 234, 233, 233),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(11, 11))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apple),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 234, 233, 233),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(11, 11))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with gmail",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Expanded(child: Divider()),
              ),
              const Expanded(
                
                  child: const Text(
                "By proceeding, you consent to get calls, whatsapp or SMS messages, including by automated means, from Uber and its affliates to the number provided",
                style: TextStyle(fontSize: 14, color: Color.fromARGB(221, 57, 57, 57)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
