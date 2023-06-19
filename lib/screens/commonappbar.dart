import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lbdaap/base/export_all.dart';

class CommonDashBoardAppBar extends StatelessWidget implements PreferredSize {
  const CommonDashBoardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(
            Icons.people,
            color: ColorConstant.black900,
          ),
        )
      ],
      backgroundColor: ColorConstant.orange400,
      centerTitle: false,
      elevation: 0.0,
      leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image.asset('assets/BYTELINK3.png')),
      title: Text(
        "Parastatal KE",
        style: GoogleFonts.roboto(
            color: ColorConstant.black900,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget get child => this;

  @override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
