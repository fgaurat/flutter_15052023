import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/user_view_model.dart';

class ChangeNameButton extends StatelessWidget {
  const ChangeNameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          var userViewModel =
              Provider.of<UserViewModel>(context, listen: false);
          userViewModel.userName = "Toto";
        },
        child: const Text("Change !"));
  }
}
