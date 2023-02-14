import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const CustomProgress(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(MdiIcons.filterOutline)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Job List (10)',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kYellow),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: Container(
                                  color: kGreen,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6.0),
                                    child: Text(
                                      'New',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: kWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Wrap(
                                children: const [
                                  Text('1d ago'),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.favorite,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('data'),
                              Text('data'),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('data'),
                              Text('data'),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('data'),
                              Text('data'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomProgress extends StatelessWidget {
  const CustomProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        color: backgroudColor,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: kWhite,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: kWhite,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: kWhite,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 200,
                      color: kWhite,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.wallet),
                          Text(
                            'Earned',
                            style: TextStyle(
                              fontSize: 18,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          const Text(
                            '6000',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 150,
                      color: kWhite,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Feedbacks',
                            style: TextStyle(
                              fontSize: 18,
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          const Text(
                            '12',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroudColor,
      elevation: 0,
      title: Column(
        children: [
          ListTile(
            textColor: kWhite,
            iconColor: kWhite,
            leading: Stack(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user/profile.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: kGreen,
                    radius: 5,
                  ),
                )
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                children: const [
                  Text(
                    'Samuel John',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: kYellow,
                    radius: 12,
                    child: Icon(
                      Icons.expand_more,
                      size: 25,
                      color: kBlack,
                    ),
                  )
                ],
              ),
            ),
            subtitle: Wrap(
              children: const [
                Icon(
                  Icons.location_on,
                  color: kYellow,
                  size: 17,
                ),
                Text(
                  'Trivandrum,palayam',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            trailing: const Icon(Icons.notification_add),
          ),
        ],
      ),
      // expandedHeight: 300,
      // flexibleSpace: const FlexibleSpaceBar(title: Divider()),
    );
  }
}
