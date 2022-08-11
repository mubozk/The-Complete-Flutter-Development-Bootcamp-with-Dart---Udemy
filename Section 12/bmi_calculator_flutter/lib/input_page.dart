import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: (IconContent(
                      icon: Icon(FontAwesomeIcons.mars),
                      label: 'MALE',
                    )),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconContent(
                    icon: Icon(FontAwesomeIcons.venus),
                    label: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: (Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          (RoundSliderThumbShape(enabledThumbRadius: 15)),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29eb1555),
                      activeTrackColor: Color(0xFFEB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 110,
                      max: 230,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        print(newValue);
                      },
                    ),
                  ),
                ],
              )),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: kInactiveCardColour,
                  cardChild: (Column()),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: kInactiveCardColour,
                  cardChild: (Column()),
                )),
              ],
            ),
          ),
          Container(
              color: kBottomContainerColour,
              height: kBottomContainerHeight,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 10.0),
              child: Text('abc')),
        ],
      ),
    );
  }
}

/*
// BEFORE TERNARY OPERATORS
void updateColour(Gender selectedGender) {

  if (selectedGender == Gender.male) {
    if (maleCardColour == activeCardColour) ;
    maleCardColour = activeCardColour;
    femaleCardColour = inactiveCardColour;
  } else {
    maleCardColour = inactiveCardColour;
  }
  if (selectedGender == Gender.female) {
    if (femaleCardColour == activeCardColour) ;
    femaleCardColour = activeCardColour;
    maleCardColour = inactiveCardColour;
  } else {
    femaleCardColour = inactiveCardColour;
  }
}
 */
