import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Bank Sampah Keliling'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              '../assets/images/header.png',
              height: 200,
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Apa itu Bank Sampah Keliling?\n",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Bank sampah keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling menggunakan kendaraan khusus untuk mengumpulkan sampah dari rumah ke rumah atau dari lokasi yang telah ditentukan.\n\n",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Dengan demikian, bank sampah keliling memiliki peran penting dalam mengedukasi masyarakat tentang pentingnya pengelolaan sampah yang berkelanjutan dan membantu mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Dengan demikian, bank sampah keliling memiliki peran penting dalam mengedukasi masyarakat tentang pentingnya pengelolaan sampah yang berkelanjutan dan membantu mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
