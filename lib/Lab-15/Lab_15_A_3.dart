import 'package:flutter/material.dart';

class DisplayImages extends StatelessWidget {

  //List which we are going to display
  List<String> imagePaths = ['https://picsum.photos/200','https://picsum.photos/200','https://picsum.photos/200','https://picsum.photos/200'];

  @override
  Widget build(BuildContext context) {

    //Using Gridview
    // return Scaffold(
    //   body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //   children: [
    //     Image.network(imagePaths[0]),
    //     Image.network(imagePaths[1]),
    //     Image.network(imagePaths[2]),
    //     Image.network(imagePaths[3]),
    //   ],
    //   )
    // );
    //using GridView.builder
    return Scaffold(
      body: GridView.builder(
        itemCount: imagePaths.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,mainAxisExtent:350),
        itemBuilder: (context, index) => Container(
            color: Colors.black,
            child: Image.network(imagePaths[index])
        ),
      ),
    );
  }
}
