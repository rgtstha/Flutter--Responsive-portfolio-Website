import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/components/about_view.dart';
import 'package:personal_website/components/contact_view.dart';
import 'package:personal_website/components/home_view.dart';
import 'package:personal_website/components/social_icon.dart';
import 'package:personal_website/components/vertical_nabbar.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/responsive.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  int initalPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: initalPageIndex);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: !Responsive.isMobile(context)
            ? Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: 70,
                    alignment: Alignment.topCenter,
                    child: VerticalNavBar(pageController: pageController),
                  ),
                  MiddleContainer(),
                  RightContainer(pageController: pageController)
                ],
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        width: 70,
                        alignment: Alignment.topCenter,
                        child: VerticalNavBar(pageController: pageController),
                      ),
                      MiddleContainer(),
                    ],
                  ),
                  RightContainer(
                    pageController: pageController,
                  ),
                ],
              ),
      ),
    );
  }
}

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 6,
        child: Container(
          color: kPrimaryColor,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: ClipOval(
                  child: FadeInImage(
                    image: AssetImage('assets/img/mypic.jpg'),
                    placeholder: AssetImage('assets/img/loading.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Ranjit Shrestha",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: 25,
                ),
              ),
              Text(
                "Application Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: FontAwesomeIcons.facebookF,
                    onTap: () {},
                  ),
                  SizedBox(width: 20),
                  SocialIcon(
                    icon: FontAwesomeIcons.instagram,
                    onTap: () {},
                  ),
                  SizedBox(width: 20),
                  SocialIcon(
                    icon: FontAwesomeIcons.twitter,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}

class RightContainer extends StatelessWidget {
  final PageController pageController;

  const RightContainer({Key key, this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 13,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            HomeView(),
            AboutView(),
            ContactView(),
          ],
        ));
  }
}

class Work {
  final String title;
  final String description;
  final IconData icon;

  Work(this.title, this.description, this.icon);
}

class TitleHeading extends StatelessWidget {
  const TitleHeading({Key key, this.text, this.space = 8}) : super(key: key);

  final String text;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: space),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
