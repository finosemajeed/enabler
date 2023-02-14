import 'package:enabler/domain/core/color_config.dart';
import 'package:enabler/presentation/works_screen/pages/active_page.dart';
import 'package:enabler/presentation/works_screen/pages/completed_page.dart';
import 'package:enabler/presentation/works_screen/pages/pending_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> _pages = [
  const PendingPage(),
  const CompletedPage(),
  const ActivePage(),
];

Map<int, Widget> children = <int, Widget>{
  0: const Text("Pendig"),
  1: const Text("Completed"),
  2: const Text("Active"),
};
ValueNotifier<int> worksChangeNotifier = ValueNotifier(0);

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: backgroudColor,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Works",
            style: TextStyle(color: kWhite),
          ),
        ),
      ),
      child: Material(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ValueListenableBuilder(
                  valueListenable: worksChangeNotifier,
                  builder: (context, int index, _) {
                    return CupertinoSegmentedControl(
                      children: children,
                      onValueChanged: (value) {
                        worksChangeNotifier.value = value;
                      },
                      selectedColor: kYellow,
                      unselectedColor: CupertinoColors.systemGrey5,
                      borderColor: kOffYellow,
                      groupValue: worksChangeNotifier.value,
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            ValueListenableBuilder(
                valueListenable: worksChangeNotifier,
                builder: (context, int newIndex, _) {
                  return SizedBox(
                    child: _pages[newIndex],
                  );
                })
          ],
        ),
      ),
    );
  }
}
