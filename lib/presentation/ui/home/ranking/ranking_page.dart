import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/ranking_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/ranking_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_listener.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_provider.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {

  @override
  Widget build(BuildContext context) {
    return RankingProvider(
      child: RankingListeners(
        child: BlocBuilder<RankingCubit, RankingState>(
          builder: (context, state) {
            if (state is RankingStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                      onChanged: (text) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                        hintText: 'Recherché un pseudo',
                      )),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.listUsersModel!.list_users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://banner2.cleanpng.com/20180625/req/kisspng-computer-icons-avatar-business-computer-software-user-avatar-5b3097fcae25c3.3909949015299112927133.jpg',
                            ),
                          ),
                          title: Text(state.listUsersModel!.list_users[index].name),
                          subtitle: Text("Score : ${state.listUsersModel!.list_users[index].score}"),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
