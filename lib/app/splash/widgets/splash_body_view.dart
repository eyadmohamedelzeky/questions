import 'package:flutter/material.dart';
import 'package:questionsapp/core/const/app_strings.dart';

class SplsahBodyView extends StatelessWidget {
  const SplsahBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(AppString.ImageLogo),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Please Wait',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
          )
        ],
      ),
    );
  }
}
