import 'package:clean_arch_example/model/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Home'),
          ),
          child: Center(
            child: FutureBuilder(
              future: model.loadProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: model.availableProducts.length,
                    itemBuilder: (context, index) {
                      return Text(model.availableProducts[index].name);
                    },
                  );
                } else {
                  return const CupertinoActivityIndicator();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
