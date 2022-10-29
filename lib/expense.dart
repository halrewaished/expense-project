import 'package:flutter/material.dart';
import 'package:expense_project/colors.dart' as color;


class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    //this for dropdownMenu
    final items =['Shopping','Restaurant','Cafe','Gifts','Transportation'];
    String? selectedItem = 'Shopping';

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 450,
              width: 414,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: color.Colors.backgroundColor,
                  borderRadius: BorderRadius.circular(10)),

              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Choose Category', style: TextStyle(
                        fontFamily: 'Inter',
                        height: 3,
                        color: color.Colors.disableColor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,

                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(width: 1, color: Colors.green),
                          ),
                        ),
                        value: selectedItem,
                        iconSize: 20,
                        icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.green),
                        isExpanded: true,
                        items: items.map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item, style: TextStyle (fontSize: 16),)
                        ))
                            .toList(),
                        onChanged: (item) => setState(()=> selectedItem= item),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Your Expenses',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          height: 3,
                          color: color.Colors.disableColor,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
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
                    child: Text('Exchange Data', style: TextStyle(
                        fontFamily: 'Inter',
                        height: 3,
                        color: color.Colors.disableColor,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
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

  setState(String? Function() param0) {}
}