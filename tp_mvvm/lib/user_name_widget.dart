import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/user_view_model.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userViewModel = Provider.of<UserViewModel>(context);
    return Text("name : ${userViewModel.userName}");
  }
}
