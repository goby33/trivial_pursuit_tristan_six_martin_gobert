import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 149, 120, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/trivial-pursuit-logo.png', width: 200,),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Tristan',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please choose your profile picture',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.go('/picture');
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Take a picture'),
                          WidgetSpan(
                            child: SizedBox(width: 10,),
                          ),
                          WidgetSpan(child: Icon(Icons.add_a_photo)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: ()  async {
                     final toto =  await ImagePicker().pickImage(source: ImageSource.gallery);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'From gallery'),
                          WidgetSpan(
                            child: SizedBox(width: 10,),
                          ),
                          WidgetSpan(child: Icon(Icons.collections)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => context.go('/home'),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Skip this step"),
                          WidgetSpan(
                            child: SizedBox(width: 10,),
                          ),
                          WidgetSpan(child: Icon(Icons.next_week)),]),
                  ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
