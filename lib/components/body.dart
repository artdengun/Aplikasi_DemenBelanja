import 'package:desain_awal/constants.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

// 17. kita buat body kemudian kita panggil di splasshscreen
class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // 19 kita  buat column untuk menampilkan background si screen
    // 23. tambahkan widget dengan tulisan safe area
    return SafeArea(
      // 25 kita tambahan widget dengan diganti tulisan SizeBox
      child: SizedBox(
        // 26 lebarnya tengah
        width: double.infinity,
        // 31 kita tambahkan splash content dengan extractWidget
        // 39 kita tambahkan PageView
        child: PageView.builder(
          itemBuilder: (context, index) => SplashContent(
            // 36 kita masukan ke spalshcontent
            image: "assets/images/splash_1.png",
            text: "Belanja Asyik, Duit Aman! Let's Go",
          ),
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    // 33 tambahkan add final
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  // 32 tambahkan nilai

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 20. widget expanded akan memenuhi seluruh coulumn mengikuti
        // match-parentnya yaitu column
        // Expanded(
        //   flex: 3,
        //   child: Container(
        //     color: Colors.black,
        //   ),
        // ),
        // Expanded(
        //   flex: 2,
        //   child: SizedBox(),
        // ),
        // batas 20 --
        // ini digunakan untuk mengatur layout jarak

        // 21. pembuatan jodol , lari ke splassh screen
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              // 30 kita mengatur spasi unutk text
              Spacer(),
              Text(
                "DEMEN BELANJA",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(27),
                    // 23 tambahkan warna di color sini .
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
              // 24 tambahkan teks tentang penjualan

              // 34 kita ganti dengan text
              Text(text),
              // 29 kita mengatur spasi dengan flex 3
              Spacer(
                flex: 3,
              ),
              // 27 kita tambahkan image gambar

              // 35 kit aganti dengai image
              Image.asset(
                image,
                // 28  kita mengatur lebar
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(300),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        )
      ],
    );
  }
}
