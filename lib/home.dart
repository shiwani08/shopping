import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // Call the AppBar builder method
      backgroundColor: Colors.white,
      body: Column(
        // make this code readable here by extracting the method
        children: [
          searchBar(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w900,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          // Handle tap on the leading icon
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            "assets/icons/arrow.svg",
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 20),
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/three-dots-vertical.svg',
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
  Widget searchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 30, right: 30), // Margin for the container
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11), // Shadow color with opacity
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15),
          hintText: 'Search Pav Bhaji',
          hintStyle: const TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 17,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 20, // Set the desired width
              height: 20, // Set the desired height
              child: SvgPicture.asset("assets/icons/search.svg"), // Icon asset
            ),
          ),
          suffixIcon: SizedBox(
            // Remove width from Container
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Add a vertical line using VerticalDivider
                  const VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  // Ensure the Padding widget is correctly closed
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 20, // Set the desired width
                      height: 20, // Set the desired height
                      child: SvgPicture.asset("assets/icons/cross.svg"),
                    ),
                  ), // Ensure the Padding widget is correctly closed
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), // Makes the border curved
            borderSide: BorderSide.none, // Removes the border
          ),
        ),
      ),
    );
  }
}

