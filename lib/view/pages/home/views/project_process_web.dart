import 'package:auto_size_text/auto_size_text.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

import '../../../../config/constants.dart';
import '../../../../extensions/context_ext.dart';
import '../../../widgets/overlapping_text.dart';
import '../../../widgets/section_title.dart';

class ProjectProcessView extends StatelessWidget {
  const ProjectProcessView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SectionTitle(
            backgroundText: "PROCESS",
            foreGroundText: "PROJECT PROCESS",
            subTitle: "LET'S TALK ABOUT YOUR PROJECT",
          ),
          SizedBox(height: 200),
          _ProcessCard(
            number: "01",
            title: "Discovery & Strategy",
            description:
                "Before any coding starts, I take time to understand the full scope of the product—your goals, your audience, and how the app fits into your business. I ask the right questions to make sure we’re building the right thing from the start.",
          ),
          _ProcessCard(
            isReversed: true,
            number: "02",
            title: "UI/UX Design Approach",
            description:
                "Design isn’t just about good looks—it’s about solving problems. I work closely with designers to create intuitive, responsive, and consistent interfaces that make apps feel smooth and easy to use.",
          ),
          _ProcessCard(
            number: "03",
            title: "Development",
            description:
                "While Flutter is a core strength, I also build robust apps using Kotlin for native Android and React Native when needed. I follow clean architecture and modular principles across stacks, integrate third-party APIs and Firebase, and fine-tune performance to ensure apps are fast, scalable, and production-ready.",
          ),
          _ProcessCard(
            number: "04",
            title: "Testing & Launch",
            description:
                "Once development wraps, I handle app store submissions, ongoing QA, bug fixes, and performance testing. I make sure everything runs smoothly across devices, and your app hits the ground running from day one.",
            isReversed: true,
          ),
        ],
      ),
    );
  }
}

class _ProcessCard extends StatelessWidget {
  const _ProcessCard({
    this.isReversed = false,
    required this.number,
    required this.title,
    required this.description,
  });
  final bool isReversed;
  final String number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final children = context.isMobile
        ? [
            Entry.opacity(
              duration: Constants.smallDelay,
              // delay: Constants.smallDelay,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Entry.opacity(
                    duration: Constants.smallDelay,
                    delay: Constants.smallDelay,
                    child: Transform.scale(
                      scale: 0.8,
                      child: Container(
                        alignment: Alignment.center,
                        child: OverlappingText(
                          text: number,
                          offset: Offset(20, 10),
                        ),
                      ),
                    ),
                  ),
                  AutoSizeText(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(fontSize: 38),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(height: 1.6),
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    color: Colors.white.withOpacity(0.15),
                    height: 100,
                  ),
                ],
              ),
            ),
          ]
        : [
            Expanded(
              flex: 2,
              child: Entry.opacity(
                duration: Constants.smallDelay,
                delay: Constants.smallDelay,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(height: 1.6, fontSize: 48),
                    ),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(height: 1.6),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.15),
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Entry.opacity(
                duration: Constants.smallDelay,
                delay: Constants.smallDelay,
                child: Container(
                  height: 140,
                  alignment:
                      isReversed ? Alignment.centerLeft : Alignment.centerRight,
                  child: OverlappingText(
                    text: number,
                    offset: Offset(20, 10),
                  ),
                ),
              ),
            )
          ];
    return Entry.opacity(
      duration: Constants.smallDelay,
      child: Container(
        constraints: BoxConstraints(maxWidth: 1600),
        padding: EdgeInsets.symmetric(horizontal: context.isMobile ? 20 : 100),
        child: context.isMobile
            ? LayoutBuilder(builder: (context, constraints) {
                return Container(
                  constraints: constraints,
                  alignment: Alignment.center,
                  child: Column(
                    children: children,
                  ),
                );
              })
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isReversed ? children.reversed.toList() : children,
              ),
      ),
    );
  }
}
