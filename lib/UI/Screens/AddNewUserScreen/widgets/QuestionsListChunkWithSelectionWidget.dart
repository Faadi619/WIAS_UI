import 'package:flutter/material.dart';
import 'package:wias/UI/Screens/AddNewUserScreen/widgets/QuestionsFieldWithSelectionWidget.dart';

class QuestionsWithSelectionChunkListWidget extends StatelessWidget {
  final List<String> questions;
  final int pageviewIndex;

  QuestionsWithSelectionChunkListWidget({
    required this.questions,
    required this.pageviewIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return QuestionsFieldWithSelectionWidget(
          question: questions[index],
          questionNumber: (pageviewIndex * 5) + (index + 1),
        );
      },
    );
  }
}
