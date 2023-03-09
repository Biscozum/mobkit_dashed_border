## Mobkit Dashed Border

The Mobkit Dashed Border is a border that provide dashed lines. Same time that package provides use different properties with rounded corner unlike border class. 

## Getting started

#### Import the following package.

```dart
flutter pub add -d mobkit_dashed_border
```

```dart
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
```

## Usage

You can use this package like border class. Below you can see the different types of codes and their outputs.  


#### This sample shows border that has same color ,width and non radius corner
Sample code:
```dart
Container(
    height: 75,
    decoration: const BoxDecoration(
        border:
            DashedBorder.fromBorderSide(dashLength: 10, side: BorderSide(color: Colors.black, width: 1),
        ),
    ),
    child: const Center(
        child: Text(
            'Same color and width',
        ),
    ),
),
```
Output of this code:

<img src="https://raw.githubusercontent.com/Biscozum/mobkit_dashed_border/main/images/type1.png" alt="selectionScroll" />

#### This sample shows border that has same color ,width and radius corner
Sample code:
```dart
Container(
    height: 75,
    decoration: const BoxDecoration(
        border: DashedBorder.fromBorderSide(
            dashLength: 15, side: BorderSide(color: Colors.black, width: 2)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: const Center(
    child: Text(
        'Rounded same color and width',
    ),
    ),
),
```
Output of this code:

<img src="https://raw.githubusercontent.com/Biscozum/mobkit_dashed_border/main/images/type2.png" alt="selectionScroll" />


#### This sample shows border that has different color ,width and radius corner
Sample code:
```dart
Container(
    height: 75,
    decoration: const BoxDecoration(
    border: DashedBorder(
        dashLength: 15,
        left: BorderSide(color: Colors.black, width: 2),
        top: BorderSide(color: Colors.red, width: 2),
        right: BorderSide(color: Colors.orange, width: 2),
        bottom: BorderSide(color: Colors.blue, width: 2),
    ),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(0),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(0),
    ),
    ),
    child: const Center(
    child: Text(
        'Different rounded and color',
    ),
    ),
),
```
Output of this code:

<img src="https://raw.githubusercontent.com/Biscozum/mobkit_dashed_border/main/images/type3.png" alt="selectionScroll" />




