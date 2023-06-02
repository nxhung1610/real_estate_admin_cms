import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/real_estate_detail/real_estate_detail_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class WLocation extends StatefulWidget {
  const WLocation({super.key});

  @override
  State<WLocation> createState() => _WLocationState();
}

class _WLocationState extends State<WLocation> {
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocSelector<RealEstateDetailBloc, RealEstateDetailState,
        RealEstate?>(
      selector: (state) {
        return state.estate;
      },
      builder: (context, state) {
        if (state == null) return const SizedBox.shrink();
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.extraWidthDimens,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                s.location,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.kNeutrals_,
                  fontWeight: FontWeight.w700,
                ),
              ),
              AppSize.largeHeightDimens.verticalSpace,
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.extraRadius),
                child: SizedBox(
                  height: 0.2.sh,
                  width: double.infinity,
                  child: BlocSelector<RealEstateDetailBloc,
                      RealEstateDetailState, RealEstate?>(
                    selector: (state) {
                      return state.estate;
                    },
                    builder: (context, state) {
                      if (state == null) return const SizedBox.shrink();
                      return GestureDetector(
                        onTap: () async {
                          final url = Uri.parse(
                              'https://www.google.com/maps/search/?api=1&query=${state.latitude ?? 0},${state.longitude ?? 0}');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {}
                        },
                        child: AbsorbPointer(
                          child: FlutterMap(
                            mapController: mapController,
                            options: MapOptions(
                              center: LatLng(
                                  state.latitude ?? 0, state.longitude ?? 0),
                              zoom: 15,
                              maxZoom: 20,
                              onMapReady: () {},
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    'https://api.mapbox.com/styles/v1/hidenxtt2001/cl8pcaqv2000b14nz5i7fb6w3/tiles/256/{z}/{x}/{y}@2x?access_token={access_token}',
                                additionalOptions: {
                                  "access_token":
                                      AppConfig.instance.accessTokenMap,
                                },
                                backgroundColor:
                                    AppColor.kNeutrals_.withOpacity(0.7),
                                tileProvider: NetworkTileProvider(),
                                maxNativeZoom: 18,
                              ),
                              MarkerLayer(
                                markers: [
                                  Marker(
                                    height: 80.h,
                                    width: 80.w,
                                    point: LatLng(state.latitude ?? 0,
                                        state.longitude ?? 0),
                                    builder: (context) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColor.kPrimary1
                                              .withOpacity(0.4),
                                          border: const Border.fromBorderSide(
                                            BorderSide(
                                              color: AppColor.kPrimary1,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.all(28.r),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.kBackgroundLight,
                                            border: Border.fromBorderSide(
                                              BorderSide(
                                                color: AppColor.kNeutrals_,
                                                width: 7.r,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    rotate: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
