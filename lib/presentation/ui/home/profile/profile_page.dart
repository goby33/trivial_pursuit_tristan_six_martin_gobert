import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/profile_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/profile_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/widgets/profile_page_header.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/widgets/profile_page_main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileProvider(
      child: ProfileListeners(
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProfileCubit>().getProfile();
                },
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 20),
                  children: [
                    ProfilePageHeader(
                      name: state.user!.name,
                      uid: state.user!.uid,
                      photoUrl: null,
                    ),
                    ProfilePageMain(
                      score: state.user!.score,
                      numberGoodAnswers: state.user!.numberGoodAnswer,
                      numberDayLogged: state.user!.numberDayLogged,
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
