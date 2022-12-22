import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/profile/widgets/container_info_user.dart';

import 'circle_photo.dart';

class ProfilePageHeader extends StatelessWidget {
  const ProfilePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return SizedBox(
          height: 350,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: ContainerInfoUser(
                  name: state.user?.name ?? '',
                  uid: state.user?.uid ?? "",
                ),
              ),
              const Positioned(
                top: 20,
                child: CirclePhoto(
                    urlPhoto:
                        "https://banner2.cleanpng.com/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg"),
              ),
            ],
          ),
        );
      },
    );
  }
}
