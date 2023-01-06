import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/setting_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/settings_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/widgets/delete_account_pop_up.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/widgets/email_pop_up.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/widgets/name_pop_up.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/widgets/password_pop_up.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/settings_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/widgets/sign_out_pop_up.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 50),
          children: [
            ListTile(
              title:
                  Text('Settings', style: Theme.of(context).textTheme.headline5),
            ),
            // update name
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Personal Information',
                      style: Theme.of(context).textTheme.headline6),
                  ListTile(
                    onTap: () =>
                        _showModal(buildContext: context, child: NamePopUp()),
                    title: Text('Name'),
                    subtitle: Text('Tristan Gobert'),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    onTap: () =>
                        _showModal(buildContext: context, child: EmailPopUp()),
                    title: Text('Email'),
                    subtitle: Text('martin.gobert@hotmail.fr'),
                    trailing: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // update password
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password', style: Theme.of(context).textTheme.headline6),
                  ListTile(
                    onTap: () =>
                        _showModal(buildContext: context, child: PasswordPopUp()),
                    title: Text('Password'),
                    subtitle: Text('********'),
                    trailing: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            // settings dark mode
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('App', style: Theme.of(context).textTheme.headline6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dark Mode'),
                      Switch(
                        value: (ThemeMode.system == ThemeMode.dark),
                        onChanged: (value) =>
                            context.read<SettingCubit>().changeTheme(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //delete account
            SizedBox(height: 30),

            // button delete account
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign out',
                      style: Theme.of(context).textTheme.headline6),
                  ListTile(
                    onTap: () => _showModal(
                        buildContext: context, child: SignOutPopUp()),
                    title: Text('Sign Out'),
                    subtitle: Text('Sign out of your account'),
                    trailing: Icon(Icons.delete),
                  ),
                  Text('Delete Account',
                      style: Theme.of(context).textTheme.headline6),
                  ListTile(
                    onTap: () => _showModal(
                        buildContext: context, child: DeleteAccountPopUp()),
                    title: Text('Delete Account'),
                    subtitle: Text('Delete your account'),
                    trailing: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }

  void _showModal({
    required BuildContext buildContext,
    required Widget child,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: buildContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (_) {
        return SettingsProvider(
          child: SettingsListeners(
            child: child,
          ),
        );
      },
    ).whenComplete(() => null);
  }
}
