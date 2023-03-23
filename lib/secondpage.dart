import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ipl/model.dart';
import 'package:share_plus/share_plus.dart';

class second extends StatefulWidget {
  int i;
  List j;
  List l;
  Color c;

  second(this.i, this.j, this.l, this.c);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  PageController? p;

  GlobalKey _globalKey = GlobalKey();

  Future<Uint8List> _capturePng() async {
    var pngBytes;
    try {
      print('inside');
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.png) as ByteData;
      pngBytes = byteData.buffer.asUint8List();
      return pngBytes;
    } catch (e) {
      print(e);
    }

    return pngBytes;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    p = PageController(initialPage: widget.i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              RepaintBoundary(
                key: _globalKey,
                child: Container(
                  height: 500,
                  width: 500,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: widget.c,
                  ),
                  child: PageView.builder(
                      onPageChanged: (value) {
                        print(value);
                        setState(() {
                          widget.i = value;
                        });
                      },
                      controller: p,
                      itemCount: widget.j.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 400,
                              width: 400,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("${widget.l[widget.i]}"),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "${widget.j[widget.i]}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
          Expanded(
            child: InkWell(
              child: Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  _capturePng().then((value) {
                    print(value);

                    DateTime d = DateTime.now();

                    String imagename =
                        "ipl${d.year}${d.month}${d.day}${d.hour}${d.minute}${d.second}.jpg";
                    print(imagename);

                    String imagepath = "${model.folderpath}/$imagename";

                    File file = File(imagepath);

                    file.writeAsBytes(value).then((value) {
                      Share.shareFiles([file.path]);
                    });
                  });
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
