import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/ranking_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/ranking_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_listener.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/ranking_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/ranking/widget/avatar_player.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RankingProvider(
      child: RankingListeners(
        child: BlocBuilder<RankingCubit, RankingState>(
          builder: (context, state) {
            if (state is RankingStateFailed) {
              return const Center(
                child: Text("Error"),
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 if (state is RankingStateLoading)
                   Expanded(flex: 9, child: Center(
                     child: CircularProgressIndicator(),
                   ),),

                  if (state is RankingStateReady)
                    Expanded(
                      flex: 9,
                      child: (state.listUsersModel!.length > 0)
                          ? ListView.builder(
                        itemCount: state.listUsersModel!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: AvatarPlayer(
                              path: state.listUsersModel![index].pathPhoto,
                            ),
                            title: Text(state.listUsersModel![index].name ??
                                "undefined"),
                            subtitle: Text(
                                "Score : ${state.listUsersModel![index].score}"),
                          );
                        },
                        // TODO
                      )
                          : Center(
                        child: Text("sorry, not found player", style: Theme.of(context).textTheme.headline6,),
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: (text) => context
                          .read<RankingCubit>()
                          .searchProfiles(text: searchController.text),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            searchController.clear();
                            await context.read<RankingCubit>().getProfiles();
                          },
                          icon: Icon(Icons.clear),
                        ),
                        border: InputBorder.none,
                        hintText: 'looking for a player',
                      ),
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
