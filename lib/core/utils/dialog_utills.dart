import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showLoading(BuildContext context){
  showDialog(
      context: context,
      barrierDismissible: false,
      builder:(context){
    return AlertDialog( ///هيا عبارة عن شكل كدا زي bottomSheet بالظبط  جواة اي حاجة زي تكيست او لودينج ودول بيتكتبوا جواة content وفية حاجة كمان اسمها title:
      content: Row(
        children: [
          Text("Loading..." , style: TextStyle(
             color: Colors.black
          ),),
          Spacer(),
          CircularProgressIndicator(),
        ],
      ),

    );
  });
}

showMessage(BuildContext context, {String? title,
  String? message,
  String? posButtonTitle,
  Function? onPosButtonClick,
  String? negButtonTitle,
  Function? onNegButtonClick,
}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CupertinoAlertDialog( ///تطلعلك الرسالة زي الايفون ios بالظبط
          title: title != null ? Text(title) : null,
          content: message != null ? Text(message) : null,
          actions: [
            if(posButtonTitle != null)
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onPosButtonClick != null) onPosButtonClick();
                  },
                  child: Text(posButtonTitle)),

            if(negButtonTitle != null)
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onNegButtonClick != null) onNegButtonClick();
                  },
                  child: Text(negButtonTitle)),
          ],
        );
      });
}

