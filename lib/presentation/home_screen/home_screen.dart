import 'package:enabler/presentation/home_screen/widgets/custom_appbar.dart';
import 'package:enabler/presentation/home_screen/widgets/custom_progeress.dart';
import 'package:enabler/presentation/widgets/custom_job_tile.dart';
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
                const CustomJobTile(),
                const CustomJobTile(),
                const CustomJobTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
