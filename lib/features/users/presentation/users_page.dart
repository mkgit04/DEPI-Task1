import 'package:cloud_firestore/cloud_firestore.dart'
    show FirebaseFirestore, QuerySnapshot;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:task1_flutter/features/users/cubit/users_cubit.dart';

import '../cubit/users_state.dart'
    show UserState, UserLoading, UserLoaded, UserError;

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const CircularProgressIndicator();
            }
            if (state is UserLoaded) {
              Stream<QuerySnapshot> collectionStream = FirebaseFirestore
                  .instance
                  .collection('users')
                  .snapshots();

              return StreamBuilder<QuerySnapshot>(
                stream: collectionStream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final users = snapshot.data!.docs
                      .map((doc) => doc.data())
                      .toList();
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final Map<String, dynamic>? user =
                          users[index] as Map<String, dynamic>?;
                      return ListTile(
                        title: Text(
                          "${((user!['name']) ?? 'No Name')} - Age: ${(user['age'] ?? 'N/A')}",
                        ),
                      );
                    },
                  );
                },
              );

              // return ListView.builder(
              //   itemCount: state.users.length,
              //   itemBuilder: (context, index) {
              //     final user = state.users[index];
              //     return ListTile(
              //       title: Text(
              //         "${(user['name'] ?? 'No Name')} - Age: ${(user['age'] ?? 'N/A')}",
              //       ),
              //     );
              //   },
              // );
            }
            if (state is UserError) {
              return Text(state.errorMessage);
            }
            return const Text('No data');
          },
        ),
      ),
    );
  }
}
