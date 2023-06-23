import 'package:flutter/material.dart';

import '../../shared/login/bar.dart';
import '../../shared/myproduct/my_product_for_mokayda.dart';

class MyProductsForMoqaydaPage extends StatelessWidget {
  const MyProductsForMoqaydaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Bar(barname: 'منتجاتى للمقايضة'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.034),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyProductForMoqaydaCard(),
                    MyProductForMoqaydaCard(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyProductForMoqaydaCard(),
                    MyProductForMoqaydaCard(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyProductForMoqaydaCard(),
                    MyProductForMoqaydaCard(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyProductForMoqaydaCard(),
                    MyProductForMoqaydaCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}