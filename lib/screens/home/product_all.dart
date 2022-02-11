import 'package:flutter/material.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/constants.dart';
import 'package:stylish/screens/detail/detail_screen.dart';
import 'package:stylish/screens/home/componeents/product_card.dart';

class ProductAllScreen extends StatelessWidget {
  const ProductAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          "All Product",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.grey.shade200,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(demo_product.length, (index) {
              return Container(
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
                        ));
                  },
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
