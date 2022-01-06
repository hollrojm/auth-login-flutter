import 'package:flutter/material.dart';
import 'package:flutter_auth/components/components.dart';
import 'package:flutter_auth/constans.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'INGRESAR',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: primaryColor, fontSize: 25),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: 'Correo Electrónico',
            onChanged: (value) {},
          ),
          const TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                icon: Icon(
                  Icons.lock,
                  color: primaryColor,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.visibility, color: primaryColor,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
