import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomJobTile extends StatelessWidget {
  const CustomJobTile({
    super.key,
    this.tileType,
    this.jobName,
    this.jobPlace,
    this.workerName,
    this.postedDate,
    this.jobPrice,
  });

  final String? tileType;
  final String? jobName;
  final String? jobPlace;
  final String? workerName;
  final String? postedDate;
  final String? jobPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kOffYellow),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          tileType ?? 'New',
                          style: const TextStyle(
                            fontSize: 12,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Text(postedDate ?? '1d ago'),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.favorite,
                        size: 18,
                        color: kOffYellow,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    jobName ?? 'Cieling Light Repairing',
                    style: const TextStyle(
                      fontSize: 24,
                      color: kBlack,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 18,
                        color: kBlack,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        jobPlace ?? 'Trivandrum,Palyam',
                        style: const TextStyle(
                          fontSize: 14,
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'price per day',
                        style: TextStyle(
                          fontSize: 10,
                          color: kBlack,
                        ),
                      ),
                      Text(
                        jobPrice ?? '800',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      const Icon(
                        MdiIcons.account,
                        size: 18,
                        color: kBlack,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        workerName ?? 'Dipeesh',
                        style: const TextStyle(
                          fontSize: 14,
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/job_details_screen');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: kYellow,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 3),
                          child: Text(
                            'View Details',
                            style: TextStyle(
                              fontSize: 12,
                              color: kBlack,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
