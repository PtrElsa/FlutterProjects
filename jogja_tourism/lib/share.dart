import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareButton extends StatefulWidget {
  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
      return IconButton(
        icon: Icon( Icons.share,
            color: Colors.white),
        onPressed: (){
          Share.share("Please visit in https://www.alodiatour.com/ and Share with someone you want to take to the tourist spot you choose.");
        },
      );

  }
}
