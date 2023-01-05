import 'package:flutter/material.dart';

class DeleteAccountPopUp extends StatelessWidget {
  DeleteAccountPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Are you sure you want to delete your account ?",
            style: Theme.of(context).textTheme.headline5,
          ),
          // no and yes buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => {},
                child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text("No"),
                  ),
                ),
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => {},
                child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text("Yes"),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
