import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //mantener el radio de 16/9
      aspectRatio: 16 / 9,
      child: LayoutBuilder(builder: (_, contraints) {
        return Container(
          //height: 200,
          //color: Colors.red,
          child: Stack(
            children: <Widget>[
              Positioned(
                  //top: 100,
                  top: contraints.maxHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 3,
                        //width: double.infinity,
                        width: contraints.maxWidth,
                        color: const Color(0xffeeeeee),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Bienvenidos",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  "assets/pages/login/clouds.svg",
                  width: contraints.maxWidth,
                  height: contraints.maxHeight * 0.7,
                ),
              ),
              Positioned(
                top: contraints.maxHeight * 0.15,
                left: 5,
                child: SvgPicture.asset(
                  "assets/pages/login/woman.svg",
                  width: contraints.maxWidth * 0.35,
                ),
              ),
              Positioned(
                top: contraints.maxHeight * 0.15,
                right: 5,
                child: SvgPicture.asset(
                  "assets/pages/login/man.svg",
                  width: contraints.maxWidth * 0.50,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
