import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuestionsScreenDetails extends StatefulWidget {
  QuestionsScreenDetails({super.key, required this.url});
  final String url;
  @override
  State<QuestionsScreenDetails> createState() => _QuestionsScreenDetailsState();
}

class _QuestionsScreenDetailsState extends State<QuestionsScreenDetails> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled);

  @override
  void initState() {
    super.initState();
    controller.loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          //
          AwesomeDialog(
              context: context,
              animType: AnimType.topSlide,
              dialogType: DialogType.question,
              body: Center(
                child: Text(
                  ' Are you Sure Want to Close !!.',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              title: 'This is Ignored',
              desc: 'This is also Ignored',
              btnOkOnPress: () {
                SystemNavigator.pop();
              },
              btnCancelOnPress: () {
                Navigator.pop(context);
              },
              btnOkColor: Colors.green)
            ..show();
        },
        child: Icon(
          Icons.exit_to_app,
          color: Colors.brown,
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
