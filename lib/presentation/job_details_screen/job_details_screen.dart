import 'package:enabler/domain/core/color_config.dart';
import 'package:enabler/presentation/job_details_screen/widgets/action_button.dart';
import 'package:enabler/presentation/job_details_screen/widgets/job_details_card.dart';
import 'package:enabler/presentation/job_details_screen/widgets/workers_image.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Job Details'),
        backgroundColor: backgroudColor,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const JobDetailsCard(),
          const WorkersImages(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'About Customer',
              style: TextStyle(
                fontSize: 18,
                color: kWhite,
              ),
            ),
          ),
          ListTile(
            textColor: kWhite,
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/user/profile.png'),
            ),
            title: const Text("Samuel John"),
            subtitle: Text(
              'Swathi, karakulam Jn Kachani,Near Temple,TVM,pin - 680522',
              style: TextStyle(
                color: kWhite.withOpacity(0.5),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(Icons.call),
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  backgroundColor: kWhite,
                  child: Icon(
                    Icons.message,
                    color: kBlack,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            color: kWhite,
          ),
          const ActionButton(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SliderButton(
                backgroundColor: kYellow,
                radius: 80,
                label: const Text('SWIPE TO CONFIRM'),
                action: () {},
                icon: const Icon(Icons.navigate_next, size: 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
