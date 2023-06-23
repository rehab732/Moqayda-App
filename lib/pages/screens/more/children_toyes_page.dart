import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/home_page_shared/main_box_home.dart';
import 'package:moqayda/pages/shared/login/bar.dart';
import 'package:moqayda/utilities/app_color.dart';
import 'package:moqayda/utilities/routes.dart';
class ChildrenToyesPage extends StatefulWidget {
  const ChildrenToyesPage({Key? key}) : super(key: key);

  @override
  State<ChildrenToyesPage> createState() => _ChildrenToyesPageState();
}

class _ChildrenToyesPageState extends State<ChildrenToyesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
        
    return Scaffold(
      appBar: Bar(barname: 'العاب اطفال',),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MainBoxHome(
                    textType: 'ألعاب إلكترونية',
                    iconType: Icons.electric_rickshaw_rounded),
                InkWell(
                    onTap: () => Navigator.of(context).pushNamed(
                          SpeacialRoutes.educationalToyesRoute,
                        ),
                    child: const MainBoxHome(
                        textType: 'ألعاب تعليمية', iconType: Icons.abc)),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const MainBoxHome(
                textType: 'ألعاب حركية', iconType: Icons.handshake_rounded),



               
          ],
        ),
      ),
    );
  }
}
