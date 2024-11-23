import "package:flutter/material.dart";
import '../App_config/app_config.dart';
import '../Components/components.dart';
class BottomDrawerExample extends StatelessWidget {
  const BottomDrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Drawer Example'),
      ),
      body: Center(
        child: CustomButton(text: "Show Drawer", onPressed: () {
      showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows full-height bottom sheet
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      top: Radius.circular(25.0),
      ),
      ),
      backgroundColor: Color(23),
      builder: (context) => BottomDrawerContent(),
      );
      },
        )
      ),
    );
  }
}

class BottomDrawerContent extends StatelessWidget {
  const BottomDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      height: MediaQuery
          .of(context)
          .size
          .height * 0.5,
      // Adjust height
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          // Add the content for your bottom drawer
          Center(
            child: Text(
              'Spend Your Money Smarter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Easily Access Your Money With',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 20), // Adjusted gap to be consistent
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 36,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(width: 10), // Consistent gap between containers
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(width: 10), // Same gap here
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80), // Consistent gap before next section
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent, // No background color
                    side: BorderSide(
                      color: Color(0xFF2B44FB), // Stroke color
                      width: 2, // Stroke width
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          16), // Optional: rounded corners
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Same gap between buttons
              Expanded(
                child: CustomButton(text: "Continue", onPressed: () {}, color: AppColors.primary, isOutlined: false,)
              ),
            ],
          ),
        ],

      ),
    );
  }
}