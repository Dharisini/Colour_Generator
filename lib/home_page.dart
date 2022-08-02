import 'package:flutter/material.dart';
import 'package:navigation/list_item.dart';
import 'package:navigation/shades_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //navigator to go to new page

  void navigateToShadePage(BuildContext context, MaterialAccentColor _color) {
    //can also do Navigator.push();
    //buildcontext context take sthe data
    //material page route takes a builder that builds the page
    // builder takes a BuildContext
    //needs to work on on tap
    //materialaccentcolor takes the color that were clicking

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return shadesPage(color: _color);
    }));
  }

  void navigateToShadePageStatic(
      BuildContext context, MaterialAccentColor _color) {
    Navigator.of(context).pushNamed("/shades_page", arguments: _color);
  }

  void navigateToselect_colors(BuildContext context) {
    Navigator.of(context).pushNamed("/color_picker");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colours"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {
              // print(Colors.accents.elementAt(index));
              //element index is basically the index of the the accents
              navigateToShadePageStatic(
                  context, Colors.accents.elementAt(index));
            },
            child: Listitem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToselect_colors(context);
        },
        tooltip: 'Add colour',
        child: const Icon(Icons.colorize),
      ),
    );
  }
}

//(children: [
//   Listitem(color:Color.fromARGB(255, 233, 227, 150),),
//   Listitem(color: Colors.amberAccent,),
//   Listitem(color: Colors.yellow,),

// ]),

// appBar: AppBar(

//   // title: Text(widget.title),
// ),
// body: Center(

//   child: Column(

//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       const Text(
//         'You have pushed the button this many times:',
//       ),
//       Text(
//         // '$_counter',
//         style: Theme.of(context).textTheme.headline4,
//       ),
//     ],
//   ),
// ),
// floatingActionButton: FloatingActionButton(
//   onPressed: _incrementCounter,
//   tooltip: 'Increment',
//   child: const Icon(Icons.add),
// ),
