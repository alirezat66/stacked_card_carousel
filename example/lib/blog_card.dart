import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                image,
                width: MediaQuery.of(context).size.width - 40,
                height: 470,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 24,
                left: 24,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 88,
                  child: Text(
                    title,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
