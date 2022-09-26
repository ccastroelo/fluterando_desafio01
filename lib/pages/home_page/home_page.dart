// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:desafio01/app_style.dart';
import 'package:desafio01/pages/home_page/home_page_data_mock.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppStyle(isLite: false).highLightColor,
        selectedLabelStyle: AppStyle(isLite: false).bottomBarStyle,
        backgroundColor: AppStyle(isLite: false).backGroundColor,
        unselectedLabelStyle: AppStyle(isLite: false).bottomBarStyle,
        unselectedItemColor: AppStyle(isLite: false).highLightColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bullseye),
            label: 'Atividades',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.github),
            label: 'Repositórios',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Sobre o Dev',
          ),
        ],
        currentIndex: 1,
        onTap: (value) {},
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 13, 0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              height: 110,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 45,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Atividades',
                            style: AppStyle(isLite: false).headLine1Style,
                          ),
                          Text(
                            'Fluterando Masterclass',
                            style: AppStyle(isLite: false).descriptionStyle,
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.solidMoon,
                            size: 31,
                            color: AppStyle(isLite: false).highLightColor,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                  child: Column(
                children: HomePageDataMock.data
                    .map((e) => OptionCard(
                        icon: e["icon"],
                        exercise: e["exercise"].toString(),
                        title: e["title"],
                        description: e["description"]))
                    .toList(),
              )),
            ))
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.icon,
    required this.exercise,
    required this.title,
    required this.description,
  }) : super(key: key);

  final IconData icon;
  final String exercise;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppStyle(isLite: false).cardColor,
            border: Border.all(color: AppStyle(isLite: false).cardColor),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        height: 220,
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 43,
                    height: 43,
                    color: AppStyle(isLite: false).primaryColor,
                    child: Icon(
                      icon,
                      size: 31,
                      color: AppStyle(isLite: false).backGroundColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  title,
                  style: AppStyle(isLite: false).headLine2Style,
                ),
                const Spacer(),
                Text("Exercícios:",
                    style: AppStyle(isLite: false).exerciseStyle),
                const SizedBox(
                  width: 4,
                ),
                Text(exercise, style: AppStyle(isLite: false).descriptionStyle)
              ],
            ),
            Spacer(),
            Text(description, style: AppStyle(isLite: false).bodyTextStyle),
            Spacer(),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.github,
                  size: 20,
                  color: AppStyle(isLite: false).highLightColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Acessar código fonte',
                  style: AppStyle(isLite: false).descriptionStyle,
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppStyle(isLite: false).primaryColor,
                          border: Border.all(
                              color: AppStyle(isLite: false).primaryColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 18),
                        child: Text(
                          'Ver mais',
                          style: AppStyle(isLite: false).moreStyle,
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
