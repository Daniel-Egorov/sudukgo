import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sudokgo/src/options_screen/add_friend_dialog.dart';
import 'package:sudokgo/src/widgets/sudokgo_app_bar.dart';

class FriendRequestsScreen extends StatefulWidget {
  const FriendRequestsScreen({super.key});

  @override
  State<FriendRequestsScreen> createState() => _FriendRequestsScreenState();
}

class _FriendRequestsScreenState extends State<FriendRequestsScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: SudokGoAppBar.create(
        context: context,
        title: Text(
          'friend requests',
          style: TextStyle(
            fontSize: 32.0,
            color: Theme.of(context).colorScheme.onBackground
          ),
        ),
        backOnPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      body: SafeArea(
        child: ListView(
          children: const [],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AddFriendDialog()
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        child: const Icon(
          Icons.add_rounded,
          size: 35.0,
        ),
      ),
    );
  }
}
