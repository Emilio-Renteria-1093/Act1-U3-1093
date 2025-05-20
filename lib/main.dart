import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image:
                  'https://raw.githubusercontent.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/refs/heads/main/ChatGPT%20Image%2029%20abr%202025%2C%2022_24_33%201.png',
              title: 'CompuTelNet la mejor dsitribuidor ',
              description:
                  'Estan en la mejor distribuidora de productos y servicios de red y de seguridad privada en equipo de videobigilancia.'),
          makePage(
              page: 2,
              image:
                  'https://raw.githubusercontent.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/refs/heads/main/0520d6da-3b70-4bd5-82e7-541c168d3199-profile_image-300x300.png',
              title: 'Has tu propia casa inteligente con la mejor tecnologia',
              description:
                  'Encontraras todo para poder un entorno tecnoligico al alcance de tu mano.'),
          makePage(
              page: 3,
              image:
              
                  'https://raw.githubusercontent.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/refs/heads/main/descarga%20(razer-producto).jpeg',
              title: 'Las mejores tecnologias para tu hogar',
              description:
                  'Encontraras las mejores y mas nuevas tecnoligias para tu hogar.'),
          makePage(
              page: 4,
              image:
                  'https://raw.githubusercontent.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/refs/heads/main/ChatGPT%20Image%2016%20may%202025%2C%2001_02_55.png',
              title: 'Las mejores accesorios para ti con las mejores marcas',
              description:
                  'Las mejores y mas duraderas marcas que encontraras en el mercado.'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeInUp(
                        child: Text(
                      page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Row(
                        children: <Widget>[
                          for (int i = 0; i < 4; i++)
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15),
                        ),
                      )),
                      SizedBox(height: 20),
                      FadeInUp(
                          child: Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      )),
                      SizedBox(height: 30),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}