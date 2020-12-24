import 'package:flutter/material.dart';

class CurrencySelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(
                iconEnabledColor: Colors.amber,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Real'),
                  ),
                  DropdownMenuItem(
                    child: Text('Dólar'),
                  ),
                  DropdownMenuItem(
                    child: Text('Euro'),
                  ),
                  DropdownMenuItem(
                    child: Text('Bitcoin'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
