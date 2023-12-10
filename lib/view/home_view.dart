import 'dart:developer';
import 'package:atomic_design/models/shop/shop_model.dart';
import 'package:atomic_design/widgets/shopping_card_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BlackCameraButon(
            //   onPressed: () {},
            // ),
            Expanded(
                child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ShoppingCard(
                      model:
                          Shop(produc: 'Tişört', price: '129.99', star: '4.3'),
                      onPressed: (isOkey) {
                        if (isOkey == false) {
                          log('Buton False Değeri döndürdi');
                        } else {
                          log(index.toString());
                        }
                      },
                    ));
              },
            ))
          ],
        )));
  }

  // ListView listWievBuild() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     shrinkWrap: true,
  //     itemBuilder: (context, index) {
  //       return AspectRatio(
  //           aspectRatio: 16 / 9,
  //           child: ShoppingCard(
  //             model: Shop(produc: 'Tişört', price: '129.99', star: '4.3'),
  //             onPressed: (isOkey) {},
  //           ));
  //     },
  //   );
  // }

//!
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Atomic Dizayn'),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
