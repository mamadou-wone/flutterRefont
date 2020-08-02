import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// DAY39
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}

// final dummySnapshot = [
//   {"name": "Mégatron", "votes": 15},
//   {"name": "Baba", "votes": 14},
//   {"name": "Badou", "votes": 11},
//   {"name": "Laye", "votes": 10},
//   {"name": "Elzo", "votes": 1},
// ];

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Baby Names',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey[700],
//         centerTitle: true,
//         title: Text(
//           'BabyBoom',
//           style: TextStyle(
//               fontFamily: 'Roboto',
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.white),
//         ),
//         actions: <Widget>[
//           Icon(
//             Icons.settings,
//             color: Colors.white,
//             size: 25.0,
//           )
//         ],
//       ),
//       body: _buildBody(context),
//     );
//   }

//   Widget _buildBody(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: Firestore.instance.collection('baby').snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) return LinearProgressIndicator();

//         return _buildList(context, snapshot.data.documents);
//       },
//     );
//   }

//   Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//     return ListView(
//       padding: const EdgeInsets.only(top: 20.0),
//       children: snapshot.map((data) => _buildListItem(context, data)).toList(),
//     );
//   }

//   Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
//     final record = Record.fromSnapshot(data);
//     return Padding(
//       key: ValueKey(record.name),
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child: ListTile(
//           title: Text(record.name),
//           trailing: Text(record.votes.toString()),
//           onTap: () =>
//               record.reference.updateData({'votes': FieldValue.increment(1)}),
//         ),
//       ),
//     );
//   }
// }

// // NULL null
// class Record {
//   // final int test;
//   final String name;
//   final int votes;
//   final DocumentReference reference;

//   Record.fromMap(Map<String, dynamic> map, {this.reference})
//       : assert(map['name'] != null),
//         assert(map['votes'] != null),
//         name = map['name'],
//         votes = map['votes'];

//   Record.fromSnapshot(DocumentSnapshot snapshot)
//       : this.fromMap(snapshot.data, reference: snapshot.reference);

//   @override
//   String toString() => "Record<$name:$votes>";
// }

// class MyApp extends StatefulWidget {
//   // GOOD

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FriendlyChat',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.red,
//       ),
//       onGenerateRoute: (settings) {
//         switch (settings.name) {
//           case "/":
//             return PageTransition(
//                 child: new SplashScreen(
//                     seconds: 5,
//                     navigateAfterSeconds: new HomePage(),
//                     title: new Text(
//                       'Vroom Vroom',
//                       style: TextStyle(
//                           fontFamily: 'Roboto',
//                           fontSize: 35.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                     backgroundColor: Colors.blueGrey[600],
//                     styleTextUnderTheLoader: new TextStyle(),
//                     loaderColor: Colors.white),
//                 type: PageTransitionType.rightToLeft);
//             break;
//           case "/home":
//             return PageTransition(
//                 child: HomePage(), type: PageTransitionType.fade);
//             break;
//           case "/test":
//             return PageTransition(
//                 child: Favories(), type: PageTransitionType.fade);
//             break;
//           default:
//             return null;
//         }
//       },
//     );
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold();
// }
