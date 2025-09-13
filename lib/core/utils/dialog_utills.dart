import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isLoadingDialogVisible = false;
void showLoading(BuildContext context, {Key? key}) async {
  if(isLoadingDialogVisible) return;
  isLoadingDialogVisible = true;
  await showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          key: key,
          content: const Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              Text("Loading...")
            ],
          ),
        );
      });

}
Future<void> hideLoading(BuildContext context) async{
  if(isLoadingDialogVisible){
    Navigator.pop(context);
    isLoadingDialogVisible = false;
  }
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

