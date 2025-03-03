import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/enums/menu_action.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your notes'), actions: [
        PopupMenuButton<MenuAction>(onSelected: (value) async {
          switch (value) {
            case MenuAction.logout:
              final shouldLogout = await showLogoutDialog(context);
              if (shouldLogout) {
                AuthService.firebase().logOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  loginRoute,
                  (_) => false,
                );
              }
          }
        }, itemBuilder: (context) {
          return [
            PopupMenuItem<MenuAction>(
              value: MenuAction.logout,
              child: Text('Log out'),
            ),
          ];
        })
      ]),
    );
  }
}

Future<bool> showLogoutDialog(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Log out'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Log out')),
          ],
        );
      }).then((value) => value ?? false);
}
