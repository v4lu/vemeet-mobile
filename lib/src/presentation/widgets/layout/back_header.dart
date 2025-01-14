import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_mobile/core/theme/app_colors.dart';

class BackHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const BackHeader({
    super.key,
    required this.backUrl,
    required this.title,
    this.rightIcons,
    this.onRightIconPressed,
  });

  final String backUrl;
  final String title;
  final List<Widget>? rightIcons;
  final void Function()? onRightIconPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // chevron left icon
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          GoRouter.of(context).go(backUrl);
        },
      ),
      title: Text(title),
      centerTitle: true,
      actions: rightIcons,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: AppColors.border,
          height: 1.0,
        ),
      ),
    );
  }
}
