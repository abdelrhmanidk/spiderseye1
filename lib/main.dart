import 'package:flutter/material.dart';
import 'package:scanner310/alternatives.dart';
import 'package:scanner310/searchbar.dart';
import 'package:flutter/src/rendering/box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'search',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
            actions: [
              SearchBarWidget(
                hintText: 'Search for products',
                onSearch: (query) {
                  print('Searching for: $query');
                },
              ),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Image.asset('images/logo.png'),
                  // Text(
                  //   _barcodeResult,
                  //   style:
                  //       const TextStyle(fontSize: 16.0, color: Colors.yellowAccent),
                  // ),
                  const SizedBox(height: 20.0),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    icon: const Icon(Icons.arrow_right_alt),
                    label: const Text('hi'),
                    //onPressed: _scanBarcode.map(screen2()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //Navigate to the new screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const alternatives()),
                      );
                    },
                    child: const Text("Alternatives"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}



































































// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:scanner310/alternatives.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'search',
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }











































  // @override
  // Widget build(BuildContext context) {

  //   SearchController searchController = SearchController();

    
  //   return Scaffold(
  //            appBar: AppBar(
  //         title: const Text('Search'),
  //         actions: [
  //           SearchBar(
  //             controller: searchController,
  //             hintText: 'Search for products',
  //             leading:const Icon(Icons.search),
  //             trailing: IconButton(
  //               icon: const Icon(Icons.clear),
  //               onPressed: () {
  //                 searchController.clear();
  //               },
  //             ),
  //           )
  //         ],
  //             ));

  //     body: Container(
  //       decoration: const BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage('images/logo.jpg'),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       //color: Colors.black,
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             //Image.asset('images/logo.png'),
  //             // Text(
  //             //   _barcodeResult,
  //             //   style:
  //             //       const TextStyle(fontSize: 16.0, color: Colors.yellowAccent),
  //             // ),
  //             const SizedBox(height: 20.0),
  //             ElevatedButton.icon(
  //               onPressed: (){},
  //               style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
  //               icon: const Icon(Icons.arrow_right_alt),
  //               label: const Text('hi'),
  //               //onPressed: _scanBarcode.map(screen2()),
  //             ),
  //             ElevatedButton(
  //               onPressed: () {
  //                 //Navigate to the new screen
  //                 Navigator.push(
  //                   context,
  //                   MaterialPageRoute(
  //                       builder: (context) => const alternatives()),
  //                 );
  //               },
  //               child: const Text("Alternatives"),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

