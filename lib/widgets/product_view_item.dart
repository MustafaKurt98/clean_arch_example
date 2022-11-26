import 'package:clean_arch_example/constants.dart';
import 'package:clean_arch_example/model/app_state_model.dart';
import 'package:clean_arch_example/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProductRowItem extends StatelessWidget {
  const ProductRowItem(
      {super.key, required this.product, required this.lastItem});

  final Product product;
  final bool lastItem;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: CustomPaddings.all,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: CustomBorderRadius.primaryBorderRadius,
            child: Image.asset(
              product.assetName,
              package: product.assetPackage,
              fit: BoxFit.cover,
              width: ResponsiveWidthHeightSizes.widthTenth,
              height: ResponsiveWidthHeightSizes.heightTenth,
            ),
          ),
          Expanded(
              child: Padding(
            padding: CustomPaddings.only,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Styles.productRowItemName,
                  maxLines: 1,
                ),
                Text('\$${product.price}', style: Styles.productRowTotal),
              ],
            ),
          )),
          CupertinoButton(
            padding: SmallPaddings.zero,
            child: const Icon(
              CupertinoIcons.plus_circled,
              semanticLabel: 'Add',
            ),
            onPressed: () {
              final model = Provider.of<AppStateModel>(context, listen: false);
            },
          ),
        ],
      ),
    );
    if (lastItem) {
      return row;
    }
    return Column(children: [
      row,
      Padding(padding: CustomPaddings.only, child: Container(
        height: 1,
        color: CupertinoColors.systemGrey4,
      )),
    ],);
  }
}
