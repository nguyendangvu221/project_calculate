import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen/ui.dart';

class DataButton1 extends StatelessWidget {
  final Function(String) onPress;
  final List<String> data;
  const DataButton1({required this.onPress, required this.data, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (data.length == 4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: (() => onPress(data[0])),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: Color.fromARGB(85, 182, 169, 169),
            ),
            child: Text(
              data[0],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          TextButton(
            onPressed: (() => onPress(data[1])),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Color.fromARGB(85, 182, 169, 169),
            ),
            child: Text(
              data[1],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          TextButton(
            onPressed: (() => onPress(data[2])),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Color.fromARGB(85, 182, 169, 169),
            ),
            child: Text(
              data[2],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          TextButton(
            onPressed: (() => onPress(data[3])),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Color.fromARGB(85, 182, 169, 169),
            ),
            child: Text(
              data[3],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      );
    } else if (data.length == 3) {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (() => onPress(data[0])),
              child: Text(
                data[0],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (() => onPress(data[1])),
              child: Text(
                data[1],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: TextButton(
                onPressed: (() => onPress(data[2])),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Color.fromARGB(170, 0, 0, 0)),
                child: Text(
                  data[2],
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      throw "insert 3 or 4 data";
    }
  }
}
