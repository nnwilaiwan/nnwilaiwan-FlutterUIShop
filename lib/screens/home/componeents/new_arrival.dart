import 'package:flutter/material.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/constants.dart';
import 'package:stylish/screens/detail/detail_screen.dart';
import 'package:stylish/screens/home/componeents/product_card.dart';
import 'package:stylish/screens/home/componeents/section_title.dart';
import 'package:stylish/screens/home/product_all.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductAllScreen(),
                ));
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                demo_product.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: ProductCard(
                    image: demo_product[index].image,
                    title: demo_product[index].title,
                    price: demo_product[index].price,
                    bgColor: demo_product[index].bgColor,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: demo_product[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
