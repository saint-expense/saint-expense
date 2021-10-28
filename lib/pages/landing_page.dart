import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: queryData.size.width / 10,
              vertical: queryData.size.height / 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Set your Financial Goals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Track your expenses',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          18,
                        ),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.arrow_right_alt, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset("assets/images/landing.png"),
        ],
      ),
    );
  }
}
