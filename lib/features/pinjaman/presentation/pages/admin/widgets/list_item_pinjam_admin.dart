import 'package:flutter/material.dart';
import 'package:flutter_app/core/res/app_constant.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/format_time.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_admin_entity.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/shared_widgets/get_status_color.dart';

class ListItemPinjamAdmin extends StatelessWidget {
  final PinjamanAdminEntity pinjam;
  final VoidCallback onActionTap;
  const ListItemPinjamAdmin({
    super.key,
    required this.pinjam,
    required this.onActionTap,
  });
  @override
  Widget build(BuildContext context) {
    final statusColor = getStatusColor(pinjam.status);
    final isPending = pinjam.status == 'pending';
    return Card(
      margin: const EdgeInsets.only(bottom: Dimens.paddingMedium),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        side: BorderSide(
          color: statusColor.withValues(alpha: isPending ? 1.0 : 0.5),
          width: isPending ? 2.5 : 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'ID: ${pinjam.id}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.paddingSmall,
                    vertical: Dimens.paddingExtraSmall,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(Dimens.radiusSmall),
                  ),
                  child: Text(
                    pinjam.status.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.fontSizeCaption,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: Dimens.paddingMedium),
            Row(
              children: [
                const Icon(Icons.person, size: Dimens.iconSize * 0.8),
                const SizedBox(width: Dimens.paddingSmall),
                Expanded(
                  child: Text(
                    pinjam.nasabahNamaLengkap,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Text(
                    formatIsoToIdDateTime(pinjam.createdAt),
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Dimens.paddingSmall),
            Text(
              AppStrings.jumlahPinjaman,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              AppConstant.numberFormat.format(pinjam.jumlahPinjaman),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: Dimens.fontSizeTitle,
              ),
            ),
            const SizedBox(height: Dimens.paddingMedium),
            if (isPending)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: onActionTap,
                    icon: const Icon(
                      Icons.rate_review,
                      size: Dimens.iconSize * 0.8,
                    ),
                    label: const Text(AppStrings.tinjauProses),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimens.paddingMedium,
                        vertical: Dimens.paddingSmall,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.radiusSmall),
                      ),
                      textStyle: const TextStyle(
                        fontSize: Dimens.fontSizeCaption,
                      ),
                    ),
                  ),
                ],
              ),
            if (pinjam.status == 'rejected')
              Padding(
                padding: const EdgeInsets.only(top: Dimens.paddingSmall),
                child: Text(
                  AppStrings.catatanAdmin(pinjam.catatanAdmin),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.red.shade900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
