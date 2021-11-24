import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomcontainerHeight = 50.0;
const activecard = Color(0xFF1D1E33);
const bottomContainerColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //untuk pilihan jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableWidget(
                  color: activecard,
                  cardchild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableWidget(
                  color: activecard,
                  cardchild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                )),
              ],
            )),

            //untuk mengatur tinggi
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableWidget(color: activecard)),
              ],
            )),
            //untuk berat dan umur
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableWidget(color: activecard)),
                Expanded(child: ReusableWidget(color: activecard)),
              ],
            )),

            //untuk tombol calculate
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: bottomContainerColor, //(0XFF1D1E33),
              ),
              height: bottomcontainerHeight,
              width: double.infinity,
              child: Text("CALCULATE"),
            ),
          ],
        ));
  }
}

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0XFF8D8E98),
            ))
      ],
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.cardchild});

  final Color color;
  final Widget? cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, //(0XFF1D1E33),
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
