import 'package:flutter/material.dart';

import '../theme/colors.dart';

class TimePicker extends StatefulWidget {
  TimePicker({
    Key? key,
  }) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  late final String timeHour = '${selectedTime.hour}';
  late final String timeMinute = selectedTime.minute < 10
      ? '0${selectedTime.minute}'
      : '${selectedTime.minute}';
  late final String timePeriod = selectedTime.period.name.toUpperCase();
  late final timeString = '$timeHour:$timeMinute $timePeriod';

  late final timeController = TextEditingController(text: timeString);
  final locationController = TextEditingController();

  void _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
        timeController.text = selectedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gel Al Seçimi',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: GreyColors.dark,
                ),
          ),
          const SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.only(
              right: 14.0,
              left: 14.0,
              top: 11.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                  width: 1.0,
                  color: GreyColors.buttonGrey,
                  style: BorderStyle.solid),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paketinizi alma zamanı',
                  style: Theme.of(context).textTheme.overline,
                ),
                TextField(
                  readOnly: true,
                  controller: timeController,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: GreyColors.dark),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIconConstraints:
                        BoxConstraints.loose(const Size(100, 20)),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    prefixIconConstraints:
                        BoxConstraints.tight(const Size(34, 20)),
                    prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Image.asset('assets/icons/clock.png')),
                    suffixIcon: TextButton(
                      style: ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        foregroundColor: MaterialStateProperty.all(
                          PrimaryColors.darkGreen,
                        ),
                      ),
                      child: Text(
                        'Değiştir',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: PrimaryColors.darkGreen),
                      ),
                      onPressed: () {
                        _selectTime(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: locationController,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: GreyColors.dark),
            decoration: InputDecoration(
              enabledBorder: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder!
                  .copyWith(
                      borderSide:
                          const BorderSide(color: GreyColors.buttonGrey)),
              contentPadding: const EdgeInsets.only(top: 5.0),
              suffixIconConstraints: BoxConstraints.loose(const Size(100, 20)),
              prefixIcon: Image.asset('assets/icons/house.png'),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: TextButton(
                  style: ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    foregroundColor: MaterialStateProperty.all(
                      PrimaryColors.darkGreen,
                    ),
                  ),
                  child: Text(
                    'Değiştir',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: PrimaryColors.darkGreen),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
