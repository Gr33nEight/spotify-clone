import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/theme/assets/app_images.dart';
import 'package:spotify_clone/core/configs/theme/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify_clone/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.chooseModeBg
                )
              )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo
                  ),
                ),
                const Spacer(),
                const Text(
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                 GestureDetector(
                  onTap: () {
                    context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ), 
                            ),
                          ),
                          const Text("Dark Mode", style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                        },
                        child: Column(
                          children: [
                            ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: SvgPicture.asset(
                                    AppVectors.sun,
                                    fit: BoxFit.none,
                                  ),
                                ), 
                              ),
                            ),
                            const Text("Light Mode", style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                      )
                    ],
                                   ),
                 ),
                const SizedBox(
                  height: 80,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => const SignupOrSigninPage())
                      );
                  },
                  text: "Continue"
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}