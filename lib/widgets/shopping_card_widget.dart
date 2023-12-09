// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atomic_design/core/components/buttons/rectangle_floating_button.dart';
import 'package:flutter/material.dart';

import 'package:atomic_design/models/shop/shop_model.dart';
import 'package:atomic_design/widgets/components/card_row_column.dart';

//! Sayfada kullanmak için nihai card bu kısımda

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({
    Key? key,
    required this.onPressed,
    required this.model,
  }) : super(key: key);
  //final VoidCallback onPressed;
  final Function(bool isOkey) onPressed;
  final Shop model;

  //!
  @override
  Widget build(BuildContext context) {
    return CardRowColumn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Placeholder(
                child: Container(
              color: const Color.fromARGB(255, 173, 255, 118),
            )),
          ),
          tisortText(context),
          buildRowForeground()
        ],
      ),
    );
  }

//! CardRowColumn da bulunan fiyat ve Buton kısmı
  Row buildRowForeground() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(model.price),
        //! rectangleFloatingButton bizden Text ve onPressed istedi ve isOkey içerisinde bir değer döndürdü
        RecrangleFloatingButon(
          onPressed: (isOkey) => onPressed(
              isOkey), //! bu widgeti kullanacak yerler için de Function onPressed istedik
          text: //!ve rectangleFloatingButton tıklandığında onPressed function u isOkey değeri ile birlikte kullanacağı yere gönderildi...
              model.star,
        )
      ],
    );
  }

  Text tisortText(BuildContext context) {
    return Text(
      model.produc,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
