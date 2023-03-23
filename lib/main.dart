import 'package:flutter/material.dart';
import 'package:ipl/firstpage.dart';
import 'package:ipl/model.dart';

void main() {
  runApp( MaterialApp(
    home: ipl(),
    debugShowCheckedModeBanner: false,
  ));
}

 class ipl extends StatefulWidget {
  const ipl({Key? key}) : super(key: key);

  @override
  State<ipl> createState() => _iplState();
}

class _iplState extends State<ipl> {

  List l = [
    'GT',
    'LSG',
    'RR',
    'RCB',
    'SRH',
    'PBKS',
    'DC',
    'KKR',
    'CSK',
    'MI'
  ];

  var imagelist = [
    "https://nextbigwhat.com/wp-content/uploads/2022/02/Gujarat_Titans_Logo.png",
    "https://static.toiimg.com/thumb/msid-89248103,imgsize-29332,width-400,resizemode-4/89248103.jpg",
    "https://ih1.redbubble.net/image.1678931963.0626/st,small,507x507-pad,600x600,f8f8f8.jpg",
    "https://i.pinimg.com/originals/7c/d7/eb/7cd7ebcfa9f8d976b74535181907fe79.png",
    "https://i.pinimg.com/originals/58/b7/7c/58b77cb23bd9270ee7c5b38c40777523.png",
    "https://cricnerds.com/wp-content/uploads/2021/02/20210217_213237.jpg",
    "https://etimg.etb2bimg.com/photo/74074359.cms",
    "https://i.pinimg.com/originals/45/59/51/455951d968579e6db25e109e1c305727.jpg",
    "https://i.pinimg.com/originals/13/e8/7c/13e87c40ff43ae97c05c436123c7ad37.jpg",
    "https://www.timesofsports.com/wp-content/uploads/2021/12/Mumbai-Indians-logo.png"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    model().permissioncheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IPL'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 25,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return first(index, imagelist[index],);
                      },
                    ),
                  );
                });
              },
              leading: Container(
                height: 70,
                width: 70,
                child: Image.network(imagelist[index]),
              ),
              title: Text("${l[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            );
          },
          itemCount: l.length),
    );
  }
}

