import 'package:aabdoo/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
        ],
      ),
    );
  }
}
