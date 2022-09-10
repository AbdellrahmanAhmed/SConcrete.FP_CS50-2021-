# SConcrete-FP_CS50_2021
#### Video Demo:  <https://youtu.be/4heYFwU-wc4>
#### Github Url:  <https://github.com/AbdellrahmanAhmed/SConcrete.FP_CS50-2021-.git>
## Description:
> SConcrete is FLUTTER APP
I am ABDELRAHMAN AHMED ABDELDAIM
From [Luxor-Egypt](https://en.wikipedia.org/wiki/Luxor).

#### I programmed this App to help engineers calculate steel reinforcement in concrete quickly without using a computer only by phone.

I used Dart language to program it

My main goal is that I noticed that the engineer would solve a problem, either by calculating it manually or using a computer.

So I thought to myself, why don't I design a program on the phone that shortens all this time

In the future I will add the rest of the topics

And make the application output the results in its drawing to be closer to the computer

And add the accounts feature in it

And maybe store the data on FireBase to reduce its size


## ASSETS

The project consists of several files, I start with the ASSETS file because I love the design

This file contains the images of the project, whether backgrounds or normal images, which I designed using Adobe XD and Adobe Illustrator, and then made the natural storage location within the file itself so that I save the design and it is automatically saved within the program and needs powers that we add in the pubspec.yaml file

```
   assets:
     - assets/splashscreen/
     - assets/home/
```
We also add in this file the packages used in the program

```
   cupertino_icons: ^1.0.2
   animated_neumorphic: ^0.1.1
   flutter_spinkit: ^5.1.0
   dismiss_keyboard_on_tap: ^1.0.1
   advance_text_field: ^0.0.5
   share: ^2.0.4
```
## packages

the packages
It is used to facilitate, such as when I wanted to share the solution with friends, for example, I used a package
```
   share: ^2.0.4
```

They facilitate operations, but you need experience to deal with them because they do not always work
There are code developed by me based on previous packages such as sATextFiled developed based on AdvanceTextFieldType are in my constants file sa_constants.dart
There are others, but in a previous project

Examples of codes developed by me based on other packages are also in the sa_animated_neumorphic_container file.




## Data transfer

The hardest thing for me in all programming languages, but here I solved the problem through the following code
```
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              BracketesSolve(
                Qu: Qu,
                a: a,
                b: b,
                Fcu: Fcu,
                Fy: Fy,
                i: i,
                Nu: Nu,
                t: t,
                z: z,
              )),
    );
```

Where he stored the data in variables and then made the following code compulsorily request this data and store it for him

## variable data

One of the things that I enjoyed the most, as we notice it when changing the diameter of the rebar, as changing the value changes everything on the page and it was done by
```
      onChanged: (String newValue) {
        setState(() {
          currentFi = newValue;
        });
      }
```

full code

```
  DropdownButton<String> buildDropdownFi() {
    return DropdownButton<String>(
      iconEnabledColor: sAColor3,
      focusColor: sAColor3,
      dropdownColor: sAColor1,
      iconDisabledColor: sAColor3,
      borderRadius: BorderRadius.circular(10.0),
      enableFeedback: true,
      autofocus: false,
      isDense: true,
      value: currentFi,
      icon: Icon(Icons.arrow_downward,color: sAColor3,),
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
      ),
      onChanged: (String newValue) {
        setState(() {
          currentFi = newValue;
        });
      },
      items: <String>['10', '12', '16', '18']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

```
Exists in bracketssolve_screen.dart





