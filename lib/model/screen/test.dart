import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder(
  stream: FirebaseFirestore.instance.collection('imageurl').snapshots(),
  builder: (context,snapshot) {
    return !snapshot.hasData ? CircularProgressIndicator() :
    Container( //1
      color: Colors.white,
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.fit(1),
        //cross axis cell count
        mainAxisSpacing: 8,
        // vertical spacing between items
        crossAxisSpacing: 8,
        // horizontal spacing between items
        crossAxisCount: 2,
        // no. of virtual columns in grid
        itemCount:  snapshot.data?.docs.length,
        itemBuilder: (context, index) => Card(
            color: Colors.white,
            // margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              margin: EdgeInsets.all(4),
              child: ClipRRect(
                // clip the image to a circle
                borderRadius: BorderRadius.circular(8),
                child: FadeInImage.memoryNetwork(
                    fit: BoxFit.cover,
                    placeholder: kTransparentImage,
                    image: snapshot.data?.docs[index].get('url')),
              ),
            ),
            )
      ),
    );
  } );


}