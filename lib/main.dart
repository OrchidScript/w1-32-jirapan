  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/second': (context) => const SecondPage(),
        },
      );
    }
  }

  class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 30,
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(color: Colors.cyan[800]),
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://i.pinimg.com/1200x/93/04/14/930414296655a9f142c3daab03241078.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 150,
                              height: 150,
                              color: Colors.grey,
                              child: Icon(Icons.person,
                                  size: 80, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "จิรพันธุ์ จันทพันธ์",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "jirapan.jantapan@e-tech.ac.th",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ข้อมูลการติดต่อ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        _buildContactRow(
                            Icons.phone, "เบอร์โทรศัพท์", "065-552-5640"),
                        SizedBox(height: 10),
                        _buildContactRow(
                            Icons.cake, "วันเกิด", "22 มีนาคม 2548"),
                        SizedBox(height: 10),
                        _buildContactRow(
                            Icons.pin_drop, "ที่อยู่", "ชลบุรี"),
                        SizedBox(height: 10),
                        _buildContactRow(Icons.school, "การศึกษา",
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)"),
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 12,
                              ),
                            ),
                            child: Text("Go to Second Page"),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ฟังก์ชันช่วยสร้างแถวข้อมูล
    Widget _buildContactRow(IconData icon, String title, String detail) {
      return Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(icon, color: Colors.green),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(detail),
              ],
            ),
          ),
        ],
      );
    }
  }

  class SecondPage extends StatelessWidget {
    const SecondPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            "Jirapan_Jantapan",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.more_horiz, color: Colors.black),
            SizedBox(width: 10)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://i.pinimg.com/1200x/93/04/14/930414296655a9f142c3daab03241078.jpg",
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 90,
                              height: 90,
                              color: Colors.grey,
                              child: Icon(Icons.person, size: 50, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStatItem("5", "กำลังติดตาม"),
                          _buildDivider(),
                          _buildStatItem("828.1 K", "ผู้ติดตาม"),
                          _buildDivider(),
                          _buildStatItem("329.9 K", "ถูกใจ"),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Row(
                  children: [
                    Text(
                      "Jirapan_Jantapan",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.verified, color: Colors.blue, size: 20),
                  ],
                ),

                SizedBox(height: 5),

                Row(
                  children: [
                    Icon(Icons.music_note, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("jirapan32", style: TextStyle(color: Colors.grey)),
                  ],
                ),

                SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFF100),
                          foregroundColor: Colors.black,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          "ติดตาม",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.share, size: 24),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.keyboard_arrow_down, size: 24),
                    ),
                  ],
                ),

                SizedBox(height: 20),


                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Container(
                          color: Colors.grey[200],
                          child: Image.network(
                            "https://i.pinimg.com/736x/7e/55/ac/7e55acecc8c0a407d496489935cb97e9.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: Container(
                          color: Colors.grey[200],
                          child: Image.network(
                            "https://i.pinimg.com/736x/c7/2c/b2/c72cb29c701292c591d9663130279fdb.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    }

    Widget _buildStatItem(String number, String text) {
      return Column(
        children: [
          Text(
            number,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      );
    }

    Widget _buildDivider() {
      return Container(
        height: 20,
        width: 1,
        color: Colors.grey.shade300,
      );
    }
  }