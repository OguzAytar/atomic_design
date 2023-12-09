// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//! yıldız butonunu da atomik olarak dışarıya çıkardık.

class RecrangleFloatingButon extends StatelessWidget {
  const RecrangleFloatingButon({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Function(bool isOkey) onPressed;
  final String text;
  //! Butonun Star değeri olduğu için Text istedik.
  //! Butonun tıklanması için ve Değer döndürmesini istediğimiz için Function atadık
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () {
          onPressed(
              true); //! floating action butonun onPressed fonksiyonunda onPressed True döndürüldi
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [const Icon(Icons.star), Text(text)],
        ));
  }
}
