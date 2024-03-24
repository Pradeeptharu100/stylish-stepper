# Stylish Stepper

Stylish Stepper is a Flutter package that provides a customizable stepper widget for your Flutter applications. It allows you to create visually appealing step-by-step progress indicators with ease.

## Getting started

To use this package, follow the steps below:

1. Add the following dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     stylish_stepper: ^1.0.0
For help on adding dependencies, refer to Managing dependencies.

Run flutter pub get to install the package.

Import the package into your code:
import 'package:stylish_stepper/stylish_stepper.dart';
Start using the Stylish Stepper widget in your Flutter app.

Usage 

```Examples 1 :
  const StylishStepper(
                dotIconColor: Colors.green,
                verticalLineLeftPadding: 5,
                verticalLineIconHeight: 150,
                gap: 0,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                header: Text('How Are You'),
              ),

Example code :

    import 'package:flutter/material.dart';
import 'package:stylish_stepper/stylish_stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Stepper',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

``` Change vertical icons:

StylishStepper(
svgIcon: SStepperIcons.line,),

StylishStepper(
svgIcon: SStepperIcons.dot,),



```Full app 
import 'package:flutter/material.dart';
import 'package:stylish_stepper/stylish_stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Stepper',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stylish Stepper'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: dataList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => StylishStepper(
                  contentContainerColor: SSColor.secondary,
                  showLastIcon: true,
                  header: Text(dataList[index]['name']),
                  verticalLineTopPadding: 15,
                  verticalLineLeftPadding: 5.5,
                  verticalLineIconHeight: 200,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataList[index]['name'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        dataList[index]['profession'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        '${dataList[index]['age']}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  dotIconColor: SSColor.secondary,
                ),
              ),
              const SizedBox(height: 20),
              const StylishStepper(
                dotIconColor: Colors.amber,
                verticalLineLeftPadding: 2,
                verticalLineIconHeight: 100,
                assetIcon: 'assets/images/line2.png',
                gap: 0,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                header: Text('How Are You'),
              ),
              const SizedBox(height: 20),
              const StylishStepper(
                dotIconColor: Colors.green,
                verticalLineLeftPadding: 5,
                verticalLineIconHeight: 150,
                gap: 0,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                header: Text('How Are You'),
              ),
              const SizedBox(height: 20),
              const StylishStepper(
                svgIcon: SStepperIcons.dot,
                dotIconColor: SSColor.secondary,
                verticalLineLeftPadding: 5,
                verticalLineIconHeight: 500,
                gap: 0,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'My Name is Pradeep Tharu',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                header: Text('How Are You'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> dataList = [
  {"id": 1, "name": "John", "age": 30, "profession": "Software Engineer"},
  {"id": 2, "name": "Alice", "age": 25, "profession": "Doctor"},
  {"id": 3, "name": "Bob", "age": 35, "profession": "Teacher"},
  {"id": 4, "name": "Emily", "age": 28, "profession": "Graphic Designer"},
  {"id": 5, "name": "Michael", "age": 40, "profession": "Marketing Manager"},
];


Output:

![Screenshot_1711263724](https://github.com/Pradeeptharu100/stylish-stepper/assets/140933324/fa8d1461-6235-4ea4-90f1-c4e1092e8351)
![Screenshot_1711263750](https://github.com/Pradeeptharu100/stylish-stepper/assets/140933324/a16d63c6-9382-4a8d-af35-6af1f6879ca4)
![Screenshot_1711263778](https://github.com/Pradeeptharu100/stylish-stepper/assets/140933324/17f8d0fc-d1ab-4af3-bea7-560260431495)











