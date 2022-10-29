import 'package:flutter/material.dart';
import 'package:expense_project/colors.dart' as color;


class SavingPage extends StatelessWidget {
  const SavingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 360,
              width: 382,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: color.Colors.backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Your Saving Reat', style: textStyle.subtitle2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '10 %',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Saving For This Month',
                        style: textStyle.subtitle2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '100 SR',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Saving Data', style: textStyle.subtitle2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '2022-10-31',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    child: ElevatedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text('Save'),
                      style:ElevatedButton.styleFrom(
                        backgroundColor: color.Colors.backgroundGreenColor,
                        minimumSize: const Size.fromHeight(50),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}