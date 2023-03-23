import 'package:flutter/material.dart';
import 'package:ipl/secondpage.dart';

class first extends StatefulWidget {
  int i;
  String l;

  first(this.i, this.l);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List GT = [
    "Shubman Gill",
    "Sai Sudharsan",
    "Devid Miller",
    "Hardik Pandya",
    "Rahul Tewatia",
    "Matthew Wade",
    "Rashid Khan",
    "Yash Dayal",
    "Alzarri Joseph",
    "Lockie Ferguson",
    "Mohammed Shami"
  ];
  List LSG = [
    "Evin Lewis",
    "Manish Pandey",
    "Marcus Stoinis",
    "Deepak Hooda",
    "Krunal Pandya",
    "Ayush Badoni",
    "Jason Holder",
    "KL Rahul",
    "Quinton De Kock",
    "Ravi Bishnoi",
    "Avesh Khan"
  ];
  List RR = [
    "Devdutt Padikkal",
    "Shimron Hetmyer",
    "Yashavi Jaiswal",
    "Riyan Parag",
    "James Neesham",
    "Ravichandran Ashwin",
    "Jos Buttler",
    "Sanju Samson",
    "Navdeep Saini",
    "Prasidh Krishna",
    "Trent Boult"
  ];
  List RCB = [
    "Virat Kholi",
    "Faf du Plessis",
    "Rajat Patidar",
    "Glenn Maxwell",
    "Mahipal Lomror",
    "Shahbaz Ahmed",
    "Wanindu Hasaranga",
    "Dinesh Karthik",
    "Mohammed Siraj",
    "Harshal Patel",
    "Josh HazleWood"
  ];
  List SRH = [
    "Kane williamson",
    "Rahul Tripathi",
    "Priyam Garg",
    "Abdul Samad",
    "Washington Sundar",
    "Marco Janson",
    "Abhishek Sharma",
    "Nicholas Pooran",
    "umaran Malik",
    "Katik Tyagi",
    "T Natarajan"
  ];
  List PBKS = [
    "Mayank Agarwal",
    "Shikhar Dhawan",
    "Liam Livingstone",
    "Shahrukh Khan",
    "HarPreet Brar",
    "Rishi Dhawan",
    "Bhanuka RajaPaKsa",
    "Jonny Bairstow",
    "Arshdeep Singh",
    "Odean Smith",
    "kagiso Rabada"
  ];
  List DC = [
    "Prithvi Shaw",
    "David Warner",
    "Yash Dhull",
    "Rovman Powall",
    "Lalit yadav",
    "Axar Patel",
    "Rishabh Pant",
    "Anrich Nortje",
    "Shardul Thakur",
    "Mustafizur Rahman",
    "Chetan Sakariya"
  ];
  List KKR = [
    "Shreyas Iyer",
    "Nitish Rana",
    "Aaron Finch",
    "VanKatesh Iyer",
    "Andre Russell",
    "Sam Billing",
    "Pat Cummins",
    "Sunil Narine",
    "Tim SouThee",
    "Varun ChaKaravarthy",
    "Umesh Yadav"
  ];
  List CSK = [
    "Ruturaj Gaikwad",
    "Ambati Rayudu",
    "Moeen Ali",
    "Dwayne Bravo",
    "Sivam Dube",
    "Dwaine Pretorius",
    "Ravindra Jadeja",
    "Robin Uthappa",
    "MS Dhoni",
    "Deepak chahar",
    "Chris Jordan"
  ];
  List MI = [
    "Rohit Sharma",
    "Suryakumar Yadav",
    "Tilak Varma",
    "Dewald Brevis",
    "Kieron Pollard",
    "Tim David",
    "Daniel Sams",
    "Ishan Kishan",
    "Jasprit Bumrah",
    "Jaydev Unadkat",
    "Tymal Mills"
  ];

  List gtimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3761.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20592.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/187.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2740.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1749.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/290.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2885.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20591.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3098.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3729.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/94.png"
  ];

  List lsgimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/872.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/123.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/964.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1556.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3183.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20586.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1075.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1125.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/834.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/19351.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1561.png"
  ];

  List rrimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5430.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1705.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/13538.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/4445.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20615.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/8.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/509.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/258.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3824.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5105.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/969.png"
  ];

  List rcbimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/164.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/24.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5471.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/282.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2970.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/13803.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3082.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/102.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3840.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/157.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/857.png"
  ];

  List srhimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/440.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3838.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3775.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/19352.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2973.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/17068.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3760.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1703.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/15154.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/10059.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3831.png"
  ];

  List pbksimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/158.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/41.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3644.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/7779.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5441.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1088.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20604.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/506.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/4698.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20600.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1664.png"
  ];

  List dcimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3764.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/170.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20623.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3333.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/6870.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1113.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2972.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5433.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1745.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1594.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/11062.png"
  ];

  List kkrimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1563.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2738.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/167.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/8540.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/177.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2756.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/488.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/203.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/307.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5432.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/59.png"
  ];

  List cskimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5443.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/100.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1735.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/25.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/5431.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20573.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/9.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/127.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/140.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1299.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3319.png"
  ];

  List miimage = [
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/107.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/108.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20594.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/20593.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/210.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/4524.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/4649.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/2975.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/1124.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/86.png",
    "https://assets.iplt20.com/ipl/IPLHeadshot2022/3319.png"
  ];

  List color = [
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.pinkAccent,
    Colors.red,
    Colors.deepOrange,
    Colors.red,
    Colors.blue,
    Colors.deepPurple,
    Colors.yellow,
    Colors.lightBlue
  ];

  List prashant = [];

  List temp = [];
  int? pos;

  @override
  void initState() {
    super.initState();
    pos = widget.i;
    if (pos == 0) {
      temp = GT;
      prashant = gtimage;
    }
    if (pos == 1) {
      temp = LSG;
      prashant = lsgimage;
    }
    if (pos == 2) {
      temp = RR;
      prashant = rrimage;
    }
    if (pos == 3) {
      temp = RCB;
      prashant = rcbimage;
    }
    if (pos == 4) {
      temp = SRH;
      prashant = srhimage;
    }
    if (pos == 5) {
      temp = PBKS;
      prashant = pbksimage;
    }
    if (pos == 6) {
      temp = DC;
      prashant = dcimage;
    }
    if (pos == 7) {
      temp = KKR;
      prashant = kkrimage;
    }
    if (pos == 8) {
      temp = CSK;
      prashant = cskimage;
    }
    if (pos == 9) {
      temp = MI;
      prashant = miimage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return second(index, temp, prashant,color[widget.i]);
          },
        ),
      );
    });
      body: GridView.builder(
        itemCount: 11,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {

            },
            child: GridTile(
              child: Image.network("${prashant[index]}"),
              footer: Container(
                color: Colors.white54,
                child: Text(
                  "${temp[index]}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
