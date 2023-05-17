import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/change_name_button.dart';
import 'package:tp_mvvm/user.dart';
import 'package:tp_mvvm/user_name_widget.dart';
import 'package:tp_mvvm/user_view_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Column(
    //   children: [UserNameWidget(), ChangeNameButton()],
    // );

    return ChangeNotifierProvider<UserViewModel>(
      create: (context) {
        var u = User("fred");
        var vm = UserViewModel(u);
        return vm;
      },
      child: const Column(
        children: [UserNameWidget(), ChangeNameButton()],
      ),
    );
  }
}
