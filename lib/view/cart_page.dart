import 'package:clean_arch_example/model/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, value, child) {
      return const CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cart'),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Cart Page'),
            ),
          ),
        ],
      );
    });
  }
}
