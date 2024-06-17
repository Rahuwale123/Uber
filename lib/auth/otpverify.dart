import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:uber/auth/info.dart';

class Otpverify extends StatefulWidget {
  const Otpverify({super.key});

  @override
  State<Otpverify> createState() => _OtpverifyState();
}

class _OtpverifyState extends State<Otpverify> {
  TextEditingController pin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter the 4-digit code sent to\nyou at number.",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Changed your mobile number?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 81, 80, 80)),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Pinput(
                    autofocus: true,
                    controller: pin,
                    enabled: true,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    onCompleted: (value) {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Info()));
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 234, 233, 233),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Resend code via SMS",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          )),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 234, 233, 233),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Call me with code",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          )),
                    )),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          size: 40,
                        )),
                   
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          
                          size: 40,
                        )),
                   
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
