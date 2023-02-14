import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
                      child: Center(
                        child: CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.9,
                          center: Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Text(
                                "01",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Active",
                                style: TextStyle(
                                  color: kBlack.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          progressColor: kYellow,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: kWhite,
                      child: Center(
                        child: CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.5,
                          center: Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Text(
                                "05",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pendinig",
                                style: TextStyle(
                                  color: kBlack.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          progressColor: kYellow,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: kWhite,
                      child: Center(
                        child: CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.2,
                          center: Wrap(
                            direction: Axis.vertical,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Text(
                                "04",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Completed",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kBlack.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          progressColor: kYellow,
                        ),
                      ),
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
