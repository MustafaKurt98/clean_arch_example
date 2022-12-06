import 'package:clean_arch_example/model/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, value, child) {
      return const CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Antrenmanlar'),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Antrenmanlar Sayfası'),
            ),
          ),
        ],
      );
    });
  }
}
