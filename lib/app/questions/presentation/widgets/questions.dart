import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';
import 'package:questionsapp/app/questions/presentation/screens/questions_screen_details.dart';
import 'package:questionsapp/app/questions/presentation/widgets/question_item.dart';

class OfflineQuestionList extends StatefulWidget {
  final List<GetQuestionsListEntity> question;

  OfflineQuestionList({required this.question});

  @override
  State<OfflineQuestionList> createState() => _OfflineQuestionListState();
}

class _OfflineQuestionListState extends State<OfflineQuestionList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.question.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () async {
              final urlLink = widget.question[index].link;
              //navigateToNextScreen(context);
              await Future.delayed(Duration(seconds: 2));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionsScreenDetails(url: urlLink),
                ),
              );
            },
            child: Container(
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey,
              ),
              child: Center(
                child: CustomQuestionItem(
                  question: widget.question,
                  index: index,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
