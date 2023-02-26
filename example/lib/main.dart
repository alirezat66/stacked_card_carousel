import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:stacked_card_carousel_example/blog_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked card carousel',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Stacked card carousel'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  final List<Widget> fancyCards = <Widget>[
    const BlogCard(
      image: 'https://oroton.com/http_i_shgcdn_com/ebf27daa-72bf-4948-8255-8e4f5b9a9377/-/format/auto/-/preview/30',
      title: "Say hello to planets!",
    ),
   const BlogCard(
      image: "https://oroton.com/http_i_shgcdn_com/2dc55eae-cf58-4e75-b6ea-84c877ba30ed/-/format/auto/-/preview/30",
      title: "Don't be sad!",
    ),
   const BlogCard(
      image: "https://oroton.com/http_i_shgcdn_com/9e9d925e-2027-451e-92f2-e59828d22feb/-/format/auto/-/preview/30",
      title: "Go for a walk!",
    ),
 const   BlogCard(
      image: "https://oroton.com/http_i_shgcdn_com/de3e7922-e07d-4321-98b1-9592c10a918f/-/format/auto/-/preview/30",
      title: "Try teleportation!",
    ),
  const  BlogCard(
      image: "https://oroton.com/http_i_shgcdn_com/b9b7face-a703-4428-b11b-397a13c96966/-/format/auto/-/preview/30",
      title: "Enjoy your coffee!",
    ),
  const  BlogCard(
      image: "https://oroton.com/http_i_shgcdn_com/d53930dc-4a15-4136-bfac-f568e70c62f2/-/format/auto/-/preview/30",
      title: "Play with your cat!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: StackedCardCarousel(
              items: fancyCards,
              itemHeight: 470,
              initialOffset: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.image,
    required this.title,
  });

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                child: image,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              OutlinedButton(
                child: const Text("Learn more"),
                onPressed: () => print("Button was tapped"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
