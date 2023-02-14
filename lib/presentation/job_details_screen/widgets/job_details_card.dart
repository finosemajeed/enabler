
import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class JobDetailsCard extends StatelessWidget {
  const JobDetailsCard({
    super.key,
    this.jobType,
    this.jobDescription,
    this.price,
    this.postedTime,
  });

  final String? jobType;
  final String? jobDescription;
  final String? price;
  final String? postedTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: kWhite,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      jobType ?? 'Ceiling Light Repair',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                      ),
                    ),
                    Wrap(
                      children: [
                        Text(postedTime ?? '8 hrs ago'),
                        const SizedBox(width: 10),
                        const Icon(Icons.favorite, color: kYellow)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  jobDescription ??
                      'tell carefully eight sing equal built common quiet strange due cook wear tin exist officer fire feed funny wonderful breathe nation barn torn carry',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlack,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Amount',
                            style: TextStyle(
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            price ?? '800 per day',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Audio instruction',
                            style: TextStyle(
                              color: kBlack.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            children: [
                              const CircleAvatar(
                                backgroundColor: kYellow,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: kWhite,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kBlack),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/user/voice.png'),
                                        Image.asset('assets/user/voice.png'),
                                        const SizedBox(width: 4),
                                        Text(
                                          '00:30',
                                          style: TextStyle(
                                            color: kBlack.withOpacity(0.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
