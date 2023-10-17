import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';

class CustomQuestionItem extends StatelessWidget {
  CustomQuestionItem({required this.question, required this.index});

  final List<GetQuestionsListEntity> question;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Question No ${index + 1}',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          textAlign: TextAlign.center,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          '${question[index].title}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen,
          ),
        ),
      ],
    );
  }
}