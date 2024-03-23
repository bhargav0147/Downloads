import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setting_screen_model.dart';
export 'setting_screen_model.dart';

class SettingScreenWidget extends StatefulWidget {
  const SettingScreenWidget({super.key});

  @override
  State<SettingScreenWidget> createState() => _SettingScreenWidgetState();
}

class _SettingScreenWidgetState extends State<SettingScreenWidget> {
  late SettingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingScreenModel());
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
          title: Text(
            'Setting',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Set_Goal_Screen');
                      },
                      child: Text(
                        'Activity goals',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 30.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Set_Goal_Screen');
                            },
                            child: Container(
                              width: 100.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFAppState().stepCount.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.mode_edit,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 10.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFAppState().heartCount.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.mode_edit,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Set_Goal_Screen');
                      },
                      child: Text(
                        'About you',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 30.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: const Color(0x33121212),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController1 ??=
                                  FormFieldController<String>(null),
                              options: const ['Male', 'Female', 'Other'],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue1 = val),
                              width: double.infinity,
                              height: double.infinity,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                  ),
                              hintText: 'Gender',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 1.0,
                              borderRadius: 10.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final datePickedDate = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: getCurrentTimestamp,
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (datePickedDate != null) {
                                safeSetState(() {
                                  _model.datePicked = DateTime(
                                    datePickedDate.year,
                                    datePickedDate.month,
                                    datePickedDate.day,
                                  );
                                });
                              }
                            },
                            child: Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      () {
                                        if (_model.datePicked != null) {
                                          return dateTimeFormat(
                                              'yMMMd', _model.datePicked);
                                        } else if (FFAppState().birthday != '') {
                                          return FFAppState().birthday;
                                        } else {
                                          return 'Birthday';
                                        }
                                      }(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: const Color(0x33121212),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController2 ??=
                                  FormFieldController<String>(
                                _model.dropDownValue2 ??=
                                    FFAppState().weight != null
                                        ? FFAppState().weight.toString()
                                        : ' ',
                              ),
                              options: const [
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6',
                                '7',
                                '8',
                                '9',
                                '10',
                                '11',
                                '12',
                                '13',
                                '14',
                                '15',
                                '16',
                                '17',
                                '18',
                                '19',
                                '20',
                                '21',
                                '22',
                                '23',
                                '24',
                                '25',
                                '26',
                                '27',
                                '28',
                                '29',
                                '30',
                                '31',
                                '32',
                                '33',
                                '34',
                                '35',
                                '36',
                                '37',
                                '38',
                                '39',
                                '40',
                                '41',
                                '42',
                                '43',
                                '44',
                                '45',
                                '46',
                                '47',
                                '48',
                                '49',
                                '50',
                                '51',
                                '52',
                                '53',
                                '54',
                                '55',
                                '56',
                                '57',
                                '58',
                                '59',
                                '60',
                                '61',
                                '62',
                                '63',
                                '64',
                                '65',
                                '66',
                                '67',
                                '68',
                                '69',
                                '70',
                                '71',
                                '72',
                                '73',
                                '74',
                                '75',
                                '76',
                                '77',
                                '78',
                                '79',
                                '80',
                                '81',
                                '82',
                                '83',
                                '84',
                                '85',
                                '86',
                                '87',
                                '88',
                                '89',
                                '90',
                                '91',
                                '92',
                                '93',
                                '94',
                                '95',
                                '96',
                                '97',
                                '98',
                                '99',
                                '100',
                                '101',
                                '102',
                                '103',
                                '104',
                                '105',
                                '106',
                                '107',
                                '108',
                                '109',
                                '110',
                                '111',
                                '112',
                                '113',
                                '114',
                                '115',
                                '116',
                                '117',
                                '118',
                                '119',
                                '120',
                                '121',
                                '122',
                                '123',
                                '124',
                                '125',
                                '126',
                                '127',
                                '128',
                                '129',
                                '130',
                                '131',
                                '132',
                                '133',
                                '134',
                                '135',
                                '136',
                                '137',
                                '138',
                                '139',
                                '140',
                                '141',
                                '142',
                                '143',
                                '144',
                                '145',
                                '146',
                                '147',
                                '148',
                                '149',
                                '150',
                                '151',
                                '152',
                                '153',
                                '154',
                                '155',
                                '156',
                                '157',
                                '158',
                                '159',
                                '160',
                                '161',
                                '162',
                                '163',
                                '164',
                                '165',
                                '166',
                                '167',
                                '168',
                                '169',
                                '170',
                                '171',
                                '172',
                                '173',
                                '174',
                                '175',
                                '176',
                                '177',
                                '178',
                                '179',
                                '180',
                                '181',
                                '182',
                                '183',
                                '184',
                                '185',
                                '186',
                                '187',
                                '188',
                                '189',
                                '190',
                                '191',
                                '192',
                                '193',
                                '194',
                                '195',
                                '196',
                                '197',
                                '198',
                                '199',
                                '200',
                                '201',
                                '202',
                                '203',
                                '204',
                                '205',
                                '206',
                                '207',
                                '208',
                                '209',
                                '210',
                                '211',
                                '212',
                                '213',
                                '214',
                                '215',
                                '216',
                                '217',
                                '218',
                                '219',
                                '220',
                                '221',
                                '222',
                                '223',
                                '224',
                                '225',
                                '226',
                                '227',
                                '228',
                                '229',
                                '230',
                                '231',
                                '232',
                                '233',
                                '234',
                                '235',
                                '236',
                                '237',
                                '238',
                                '239',
                                '240',
                                '241',
                                '242',
                                '243',
                                '244',
                                '245',
                                '246',
                                '247',
                                '248',
                                '249',
                                '250',
                                '251',
                                '252',
                                '253',
                                '254',
                                '255',
                                '256',
                                '257',
                                '258',
                                '259',
                                '260',
                                '261',
                                '262',
                                '263',
                                '264',
                                '265',
                                '266',
                                '267',
                                '268',
                                '269',
                                '270',
                                '271',
                                '272',
                                '273',
                                '274',
                                '275',
                                '276',
                                '277',
                                '278',
                                '279',
                                '280',
                                '281',
                                '282',
                                '283',
                                '284',
                                '285',
                                '286',
                                '287',
                                '288',
                                '289',
                                '290',
                                '291',
                                '292',
                                '293',
                                '294',
                                '295',
                                '296',
                                '297',
                                '298',
                                '299',
                                '300',
                                '301',
                                '302',
                                '303',
                                '304',
                                '305',
                                '306',
                                '307',
                                '308',
                                '309',
                                '310',
                                '311',
                                '312',
                                '313',
                                '314',
                                '315',
                                '316',
                                '317',
                                '318',
                                '319',
                                '320',
                                '321',
                                '322',
                                '323',
                                '324',
                                '325',
                                '326',
                                '327',
                                '328',
                                '329',
                                '330',
                                '331',
                                '332',
                                '333',
                                '334',
                                '335',
                                '336',
                                '337',
                                '338',
                                '339',
                                '340',
                                '341',
                                '342',
                                '343',
                                '344',
                                '345',
                                '346',
                                '347',
                                '348',
                                '349',
                                '350',
                                '351',
                                '352',
                                '353',
                                '354',
                                '355',
                                '356',
                                '357',
                                '358',
                                '359',
                                '360',
                                '361',
                                '362',
                                '363',
                                '364',
                                '365',
                                '366',
                                '367',
                                '368',
                                '369',
                                '370',
                                '371',
                                '372',
                                '373',
                                '374',
                                '375',
                                '376',
                                '377',
                                '378',
                                '379',
                                '380',
                                '381',
                                '382',
                                '383',
                                '384',
                                '385',
                                '386',
                                '387',
                                '388',
                                '389',
                                '390',
                                '391',
                                '392',
                                '393',
                                '394',
                                '395',
                                '396',
                                '397',
                                '398',
                                '399',
                                '400',
                                '401',
                                '402',
                                '403',
                                '404',
                                '405',
                                '406',
                                '407',
                                '408',
                                '409',
                                '410',
                                '411',
                                '412',
                                '413',
                                '414',
                                '415',
                                '416',
                                '417',
                                '418',
                                '419',
                                '420',
                                '421',
                                '422',
                                '423',
                                '424',
                                '425',
                                '426',
                                '427',
                                '428',
                                '429',
                                '430',
                                '431',
                                '432',
                                '433',
                                '434',
                                '435',
                                '436',
                                '437',
                                '438',
                                '439',
                                '440',
                                '441',
                                '442',
                                '443',
                                '444',
                                '445',
                                '446',
                                '447',
                                '448',
                                '449',
                                '450'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue2 = val),
                              width: double.infinity,
                              height: double.infinity,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                  ),
                              hintText: FFAppState().weight != null
                                  ? FFAppState().weight.toString()
                                  : 'Weight',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 1.0,
                              borderRadius: 10.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 65.0,
                            decoration: BoxDecoration(
                              color: const Color(0x33121212),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController3 ??=
                                  FormFieldController<String>(null),
                              options: const ['Male', 'Female', 'Other'],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue3 = val),
                              width: double.infinity,
                              height: double.infinity,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                  ),
                              hintText: 'Gender',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 1.0,
                              borderRadius: 10.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
