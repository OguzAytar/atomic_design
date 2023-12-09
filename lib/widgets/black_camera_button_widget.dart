// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:atomic_design/core/components/buttons/camera_button.dart';

//? 2. katman tasarım bu kısım sıyah butonu tasarlayacak ve black buton kullanılmasıgerektiğinde bu çağırılacak

class BlackCameraButon extends StatelessWidget {
  const BlackCameraButon({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed; //! Dışarıdan business dan gelecek

  @override
  Widget build(BuildContext context) {
    return CameraButon(
      onPressed: onPressed,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white60,
      child: cameraIcon(),
    );
  }

  Center cameraIcon() {
    return const Center(
      child: Icon(
        Icons.camera,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
