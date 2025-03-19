// import 'package:advanced/core/helpers/extensions.dart';
// import 'package:advanced/core/routing/routes.dart';
// import 'package:advanced/core/themeing/colors.dart';
// import 'package:advanced/core/themeing/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class GetStartedButton extends StatelessWidget {
//   const GetStartedButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 12.w),
//       child: TextButton(
//         onPressed: () {
//           context.pushNamed(Routes.loginScreen);
//         },
//         style: ButtonStyle(
//           shape: WidgetStateProperty.all(
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           ),
//           backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
//           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           minimumSize: WidgetStateProperty.all(Size(double.infinity, 52)),
//         ),

//         child: Text("Get Started", style: Styles.font16WhiteW600),
//       ),
//     );
//   }
// }
