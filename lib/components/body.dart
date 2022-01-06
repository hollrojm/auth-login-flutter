import 'package:flutter/material.dart';
import 'package:flutter_auth/components/components.dart';
import 'package:flutter_auth/constans.dart';
import 'package:flutter_auth/screens/screens.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'BIENVENIDO',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: primaryColor),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'INGRESAR',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            //SizedBox(height: 30,),
            RoundedButton(
              text: 'REGISTRATE',
              textColor: Colors.black,
              color: primaryLightColor,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
