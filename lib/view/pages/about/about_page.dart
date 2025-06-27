import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

import '../../../extensions/context_ext.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/section_title.dart';
import '../home/views/footer_view.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedNavWrapper(
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 200, left: 50, right: 50),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1024),
                child: Column(
                  children: [
                    SectionTitle(
                      backgroundText: "ABOUT",
                      foreGroundText: "A Brief History of Gert",
                      subTitle: "Bio",
                    ),
                    SizedBox(height: 140),
                    context.isTablet || context.isMobile
                        ? _mobileView(context)
                        : _largeView(context),
                  ],
                ),
              ),
            ),
          ),
          FooterView(),
        ],
      ),
    );
  }

  Widget _largeView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Entry.offset(
          yOffset: -400,
          delay: Duration(milliseconds: 300),
          duration: Duration(seconds: 2),
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.6,
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Colors.white,
                ],
              ),
            ),
            child: Image.asset(
              'assets/images/me.png',
            ),
          ),
        ),
        SizedBox(width: 50),
        Expanded(
          child: Entry.offset(
            yOffset: 400,
            delay: Duration(milliseconds: 300),
            duration: Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "A BRIEF PROFILE OF GERT",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontFamily: "Goku",
                        ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Gert Haxhija is a mobile developer with over 8 years of experience building performant, scalable apps across platforms using Flutter, Kotlin, and React Native. He’s passionate about crafting clean, intuitive apps, especially in healthcare, fintech, and marketplace domains.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Gert is always learning—whether it’s integrating the latest Firebase features or exploring FlutterFlow to speed up MVP delivery. He believes each project is a chance to grow and sharpen his skills through feedback, collaboration, and hands-on problem-solving.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "In every role, Gert brings strong attention to architecture, UI/UX quality, and reliable API integration, aiming to deliver apps that are both beautiful and battle-tested in production.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _mobileView(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.6,
              colors: [
                Theme.of(context).colorScheme.secondary,
                Colors.white,
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/me.png',
          ),
        ),
        SizedBox(height: 50),
        Text(
          "A BRIEF PROFILE OF GERT",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontFamily: "Goku",
                fontSize: 18,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "Gert Haxhija is a mobile developer with over 8 years of experience building performant, scalable apps across platforms using Flutter, Kotlin, and React Native. He’s passionate about crafting clean, intuitive apps, especially in healthcare, fintech, and marketplace domains.",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "Gert is always learning—whether it’s integrating the latest Firebase features or exploring FlutterFlow to speed up MVP delivery. He believes each project is a chance to grow and sharpen his skills through feedback, collaboration, and hands-on problem-solving.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "In every role, Gert brings strong attention to architecture, UI/UX quality, and reliable API integration, aiming to deliver apps that are both beautiful and battle-tested in production.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
