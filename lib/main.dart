import 'package:flutter/material.dart';
import 'package:responsive_design/desktop.dart';
import 'package:responsive_design/mobile.dart';
import 'package:responsive_design/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LayoutBuilder(
              builder: (_, constraints) {
                if (constraints.maxWidth >= 1000) {
                  return const Desktop();
                } else if (constraints.maxWidth < 1066 &&
                    constraints.maxWidth >= 700) {
                  return const Tablet();
                } else {
                  return const Mobile();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Responsive Wrap Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     double spacing = screenWidth < 600 ? 8.0 : 16.0;
//     double runSpacing = screenWidth < 600 ? 4.0 : 8.0;

//     return Scaffold(
//       appBar: AppBar(title: const Text('Responsive Wrap Demo')),
//       body: SingleChildScrollView(
//         // To prevent overflow if content is very long
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Buttons using Wrap:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Wrap(
//               spacing: spacing,
//               runSpacing: runSpacing,
//               alignment: WrapAlignment.start,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('Short Button'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('Medium Length Button'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('A Very Long Button Indeed'),
//                 ),
//                 ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('Another One'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text('And Yet Another'),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               'Chips using Wrap:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Wrap(
//               spacing: spacing,
//               runSpacing: runSpacing,
//               children: const [
//                 Chip(label: Text('Flutter')),
//                 Chip(label: Text('Responsive')),
//                 Chip(label: Text('Web Development')),
//                 Chip(label: Text('UI/UX')),
//                 Chip(label: Text('Widgets')),
//                 Chip(label: Text('Cross-Platform')),
//                 Chip(label: Text('Mobile')),
//                 Chip(label: Text('Tablet')),
//                 Chip(label: Text('Desktop')),
//               ],
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               'Colored Boxes using Wrap:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Wrap(
//               spacing: spacing,
//               runSpacing: runSpacing,
//               children: List.generate(
//                 10,
//                 (index) => Container(
//                   width: 100 + index * 10,
//                   height: 50,
//                   color: Colors.primaries[index % Colors.primaries.length],
//                   child: Center(child: Text('Box ${index + 1}')),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
