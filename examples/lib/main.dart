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
