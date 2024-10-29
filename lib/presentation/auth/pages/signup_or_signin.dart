import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/button/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/theme/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/assets/app_vectors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BasicAppBar(),
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  AppVectors.auth2
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    AppImages.authBg
                  ),
                  const Spacer()
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.auth1
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppVectors.logo
                ),
                const SizedBox(
                  height: 55,
                ),
                const Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        onPressed: () {
                      
                        }, 
                        text: "Register"
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size(0, 80)
                        ),
                        onPressed: () {}, 
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: context.isDarkMode ? Colors.white : Colors.black
                          ),
                        )
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 150,)
              ],
            ),
          )
        ],
      ),
    );
  }
}