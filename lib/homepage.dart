import 'package:flutter/material.dart';
import 'dataDummy.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menerima username dari route arguments
    final String username =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../assets/images/greeting.png',
              fit: BoxFit.contain,
              height: 150,
            ),
          ],
        ),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman detail
                Navigator.pushNamed(context, '/detail');
              },
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                            text: "Apa itu Bank Sampah Keliling?\n",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "Bank Sampah akan hadir di dekat rumah Anda, ",
                        ),
                        TextSpan(
                          text: "Pelajari teknisnya lebih lanjut",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // List Jadwal Pengambilan Sampah
            Text(
              "Jadwal Pengambilan Sampah:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: scheduleList.length,
                itemBuilder: (context, index) {
                  final schedule = scheduleList[index];
                  return Card(
                    elevation: 1,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Image.network(
                        schedule.imageUrl,
                        width: 50,
                        height: 50,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.image_not_supported);
                        },
                      ),
                      title: Text(schedule.wasteBankName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Area: ${schedule.coverageArea}"),
                          Text(
                              "Tanggal: ${schedule.implementationDate} (${schedule.startTime} - ${schedule.endTime})"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
