import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';
import 'package:moqayda/utilities/routes.dart';

import '../../shared/login/bar.dart';
import '../../shared/preview_content.dart';

class EducationalToyesPage extends StatelessWidget {
  const EducationalToyesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'ألعاب تعليمية',),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.of(context).pushNamed(
                          SpeacialRoutes.educationalProductDetailsRoute),
                      child: const PreviewContentCard()),
                  const PreviewContentCard(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PreviewContentCard(),
                  PreviewContentCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
