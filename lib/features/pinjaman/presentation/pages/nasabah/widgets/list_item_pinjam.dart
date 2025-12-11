import 'package:flutter/material.dart';
import 'package:flutter_app/core/res/app_constant.dart';
import 'package:flutter_app/core/res/app_strings.dart';
import 'package:flutter_app/core/style/dimens.dart';
import 'package:flutter_app/core/util/format_time.dart';
import 'package:flutter_app/features/pinjaman/domain/entities/pinjaman_nasabah_entity.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/shared_widgets/get_status_color.dart';

class ListItemPinjam extends StatelessWidget {
  final PinjamanNasabahEntity pinjam;
  const ListItemPinjam({super.key, required this.pinjam});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: Dimens.paddingMedium),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        side: BorderSide(color: getStatusColor(pinjam.status), width: 1.5),
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
                  flex: 4,
                  child: Text(
                    'ID: ${pinjam.id}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: Dimens.paddingMedium),
                Flexible(
                  flex: 6,
                  child: Text(
                    formatIsoToIdDateTime(pinjam.createdAt),
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const Divider(height: Dimens.paddingMedium),
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
            const SizedBox(height: Dimens.paddingSmall),
            Row(
              children: [
                const Icon(Icons.info_outline, size: Dimens.iconSize * 0.7),
                const SizedBox(width: Dimens.paddingSmall),
                Expanded(
                  child: Text(
                    'Status:',
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.paddingSmall,
                    vertical: Dimens.paddingExtraSmall,
                  ),
                  decoration: BoxDecoration(
                    color: getStatusColor(pinjam.status).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(Dimens.radiusSmall),
                  ),
                  child: Text(
                    pinjam.status.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: getStatusColor(pinjam.status),
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.fontSizeBody,
                    ),
                  ),
                ),
              ],
            ),
            _buildInspectorDetail(context),
          ],
        ),
      ),
    );
  }

  Widget _buildInspectorDetail(BuildContext context) {
    final isFinalStatus =
        pinjam.status == 'approved' || pinjam.status == 'rejected';

    if (!isFinalStatus ||
        pinjam.inspectorId == '-' ||
        pinjam.inspectedAt == '-') {
      return const SizedBox.shrink();
    }

    final statusColor = getStatusColor(pinjam.status);

    final formattedTime = formatIsoToIdDateTime(pinjam.inspectedAt!);

    return Container(
      margin: const EdgeInsets.only(top: Dimens.paddingMedium),
      padding: const EdgeInsets.all(Dimens.paddingSmall),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(Dimens.radiusSmall),
        border: Border.all(color: statusColor.withValues(alpha: 0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.inspeksiTitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: statusColor,
            ),
          ),
          const SizedBox(height: Dimens.paddingExtraSmall),

          Row(
            children: [
              const Icon(
                Icons.verified_user_outlined,
                size: Dimens.iconSize * 0.7,
              ),
              const SizedBox(width: Dimens.paddingSmall),
              Flexible(
                child: Text(
                  'Pemeriksa: ${pinjam.inspectorNamaLengkap!}',
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          Row(
            children: [
              const Icon(
                Icons.access_time_outlined,
                size: Dimens.iconSize * 0.7,
              ),
              const SizedBox(width: Dimens.paddingSmall),
              Flexible(
                child: Text(
                  'Waktu: $formattedTime',
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
