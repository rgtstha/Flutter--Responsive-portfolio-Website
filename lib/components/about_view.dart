import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/Model/Work.dart';
import 'package:personal_website/components/title_heading.dart';

import '../constants.dart';
import '../responsive.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  List<Work> _works = [
    Work(
      "UX/UI Design",
      "Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales.",
      FontAwesomeIcons.pencilAlt,
    ),
    Work(
      "Application Development",
      "Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales.",
      FontAwesomeIcons.database,
    ),
    Work(
      "SEO",
      "Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales.",
      FontAwesomeIcons.search,
    ),
    Work(
      "Content Writing",
      "Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales.",
      FontAwesomeIcons.connectdevelop,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 50, right: 50),
      child: ListView(
        children: [
          Text(
            "About Me",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30),
          Text(aboutDescription),
          SizedBox(height: 20),
          Text(
            "What I Do",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            itemCount: _works.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: Responsive.isMobile(context)
                  ? 300
                  : Responsive.isTablet(context)
                      ? 400
                      : 200,
            ),
            itemBuilder: (_, index) {
              final work = _works[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(work.icon, size: 40, color: kPrimaryColor),
                  FittedBox(child: TitleHeading(text: work.title)),
                  Text(work.description),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
