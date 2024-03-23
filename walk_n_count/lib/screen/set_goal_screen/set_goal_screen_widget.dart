import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'set_goal_screen_model.dart';
export 'set_goal_screen_model.dart';

class SetGoalScreenWidget extends StatefulWidget {
  const SetGoalScreenWidget({super.key});

  @override
  State<SetGoalScreenWidget> createState() => _SetGoalScreenWidgetState();
}

class _SetGoalScreenWidgetState extends State<SetGoalScreenWidget> {
  late SetGoalScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetGoalScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryText,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 28.0,
            ),
          ),
          title: Text(
            'Set Goal',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 28.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      'Steps',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 22.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Set your step goal, break sedentary chains, thrive.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0x7FFFFFFF),
                          fontSize: 16.0,
                        ),
                  ),
                ),
                const Spacer(flex: 2),
                Container(
                  width: 160.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryText,
                      width: 2.0,
                    ),
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.minus,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).alternate,
                      size: 20.0,
                    ),
                    incrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.plus,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).alternate,
                      size: 20.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                    ),
                    count: _model.countControllerValue ??=
                        FFAppState().stepCount,
                    updateCount: (count) async {
                      setState(() => _model.countControllerValue = count);
                      await Future.wait([
                        Future(() async {
                          setState(() {
                            FFAppState().stepCount =
                                _model.countControllerValue!;
                          });
                        }),
                        Future(() async {
                          setState(() {
                            FFAppState().stepCount =
                                _model.countControllerValue!;
                          });
                        }),
                      ]);
                    },
                    stepSize: 500,
                    minimum: 2000,
                    maximum: 15000,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'one day step',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0x7FFFFFFF),
                          fontSize: 12.0,
                        ),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
