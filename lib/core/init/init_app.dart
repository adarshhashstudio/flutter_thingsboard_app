import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thingsboard_app/constants/assets_path.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/context/tb_context_widget.dart';
import 'package:thingsboard_app/widgets/tb_progress_indicator.dart';

class ThingsboardInitApp extends TbPageWidget {
  ThingsboardInitApp(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);

  @override
  _ThingsboardInitAppState createState() => _ThingsboardInitAppState();
}

class _ThingsboardInitAppState extends TbPageState<ThingsboardInitApp> {
  @override
  void initState() {
    super.initState();
    initTbContext();
  }

  @override
  Widget build(BuildContext context) { 
    return Container(
      alignment: Alignment.center,
      color:Color(0xfffDD400),
      child:  SvgPicture.asset(
                                        ThingsboardImage.polwaxLogin,                       
                                        height: 180,
                                        width: 180,
                                        colorFilter: ColorFilter.mode(
                                            Theme.of(context).primaryColor,
                                            BlendMode.srcIn),
                                        ) // TbProgressIndicator(size: 50.0),
    );
  }
}
