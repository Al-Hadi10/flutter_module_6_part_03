import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <String> student = [
    'Hadi',
    'Hafia',
    'ertt',
    'retyu',
    'jalal',
    'hasina',
    'bubu',
    'Kader',
    'Kalam',
    'Khokon',
    'hemel',
    'Hasan',
    'jayed',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
      ),
      body: Scrollbar(
        thickness: 20, 
        radius: Radius.circular(10),
        child: ListView.separated(
          itemCount: student.length,
            itemBuilder: (context,index)
          {
            return ListTile(
              title: Text(student[index]),
            );
          },
          separatorBuilder: (context,index){
            return Divider();
          } ,
        ),
      
    ),
    );
  }
}

// class HomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Home Screen'),
//       ),
//       body: Scrollbar(
//         thickness: 20, 
//         radius: Radius.circular(10),
//         child:
//           // GridView.builder(
//           //   itemCount: 50,
//           //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //       crossAxisCount: 2),
//           //   itemBuilder: (context, index){
//           //     return Column(
//           //       children: [
//           //         Text(index.toString()),
//           //         Icon(Icons.adb_sharp),
//           //       ],
//           //     );
//           //   },
//           //
//           // ),
//         // ListView.builder(
//         //   itemCount: 30,
//         //     itemBuilder: (context, index)
//         // {
//         //   return ListTile(
//         //     title: Text('Item number $index'),
//         //   );
//         //
//         // },
//         // ),
//         ListView.separated(
//           itemCount:20 ,
//         itemBuilder: (context,index){
//             return ListTile(
//               title: Text('Item Number $index'),
//             );
//         },
//         separatorBuilder: (context, index){
//             return Column(
//               children: [
//                 Text(index.toString()),
//               ],
//             );
//         },),
//       ),
//     );
//   }
//
// }