import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:architecture/core/configs/app_theme.dart';

class VersionModalWidget extends ModalRoute<void> {
  VersionModalWidget({
    super.settings,
    super.filter,
    super.traversalEdgeBehavior,
    required this.isForceUpdate,
    required this.context,
  });

  final bool isForceUpdate;
  final BuildContext context;

  @override
  Color? get barrierColor => context.appColor.bg300.withOpacity(0.6);

  @override
  bool get barrierDismissible => !isForceUpdate;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: context.appColor.bg300,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '새로운 버전이 있습니다.\n업데이트가 필요합니다.',
                    style: context.textStyle.title20b
                        .copyWith(color: context.appColor.textMain),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          /// TODO: 업데이트 링크로 이동
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                          backgroundColor: context.appColor.accent100,
                        ),
                        child: Text(
                          '업데이트',
                          style: context.textStyle.body16b
                              .copyWith(color: context.appColor.textMain),
                        ),
                      ),
                      if (!isForceUpdate) ...[
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => context.pop(),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide.none,
                            backgroundColor: context.appColor.primary100,
                          ),
                          child: Text(
                            '나중에',
                            style: context.textStyle.body16b
                                .copyWith(color: context.appColor.textMain),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get maintainState => true;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);
}
