import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFC),
      bottomNavigationBar: Material(
        color: Colors.transparent,
        elevation: 100,
        child: ClipPath(
          child: SizedBox(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.deepPurple,
                          size: 30,
                        ),
                        onPressed: () {
                          setState() {}
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.branding_watermark,
                          size: 30,
                          color: Colors.black54,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.cloud_download,
                          size: 30,
                          color: Colors.black54,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.face,
                          size: 30,
                          color: Colors.black54,
                        ),
                        onPressed: () {}),
                  ],
                )),
            height: 100,
            width: double.infinity,
          ),
          clipper: CurveDraw(),
        ),
      ),
      floatingActionButton: MaterialButton(
        color: Colors.deepPurple,
        padding: EdgeInsets.all(20),
        onPressed: () {},
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CurveDraw extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double sw = size.width;
    double sh = size.height;
    double gapConst = 50;
    print(sw);
    Path path = Path();
    path.moveTo(0, sh);

    //1st curve
    path.lineTo(sw / 2 - sw / 5, 0);
    path.cubicTo(sw / 2 - sw / 8, 0, sw / 2 - sw / 8, sh / 2, sw / 2, sh / 2);
    path.cubicTo(
        sw / 2 + sw / 10, sh / 2, sw / 2 + sw / 7, 0, sw / 2 + sw / 5, 0);

    path.lineTo(sw - sh / 2, 0);

    // path.quadraticBezierTo(
    //     150, size.height - 100, 150, size.height - 110); //2nd Curve IMP
    // path.lineTo(size.width - 150, size.height - 100); //draw semi circle
    // path.quadraticBezierTo(size.width - 150, size.height - 100, size.width - 90,
    //     size.height - 100);
    // path.lineTo(size.width - 60, size.height - 100);

    path.lineTo(sw, sh);
    // path.quadraticBezierTo(
    //     size.width / 2 - 50, size.height / 3, 2 * size.width / 3, 0);
    //path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

// SizedBox(
//         height: 100,
//         width: double.infinity,
//         child: Container(
//           decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 20.0,
//                   spreadRadius: 5.0,
//                   color: Colors.black54.withOpacity(0.2),
//                 )
//               ],
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40), topRight: Radius.circular(40))),
//         ),
//
