import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/image/bg_welcome.png",fit: BoxFit.fill,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 1), //2/6
                  Text(
                    "Let's Play a Q&A.",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  // Text("Trust me, it must be fun",style: Theme.of(context).textTheme.subtitle1.copyWith(
                  //     color: Colors.white)),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341).withOpacity(0.8),
                      labelText: "Enter your title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(), // 1/6
                  GestureDetector(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start It",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
