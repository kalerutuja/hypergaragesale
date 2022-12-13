import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseProductWidget extends StatefulWidget {
  const BrowseProductWidget({Key? key}) : super(key: key);

  @override
  _BrowseProductWidgetState createState() => _BrowseProductWidgetState();
}

class _BrowseProductWidgetState extends State<BrowseProductWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed(
            'AddPostPage',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.leftToRight,
              ),
            },
          );
        },
        backgroundColor: Color(0xFFAE8625),
        elevation: 8,
        child: Icon(
          Icons.add_outlined,
          color: FlutterFlowTheme.of(context).primaryBtnText,
          size: 30,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFAE8625),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          fillColor: Color(0xFFAE8625),
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            color: FlutterFlowTheme.of(context).black600,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Browse Items',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).black600,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 20,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Product List',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).black600,
                            fontSize: 20,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                      child: StreamBuilder<List<ItemRecord>>(
                        stream: queryItemRecord(
                          queryBuilder: (itemRecord) => itemRecord
                              .where('uid', isEqualTo: currentUserUid)
                              .orderBy('item_name'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<ItemRecord> taskListColumnItemRecordList =
                              snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                taskListColumnItemRecordList.length,
                                (taskListColumnIndex) {
                              final taskListColumnItemRecord =
                                  taskListColumnItemRecordList[
                                      taskListColumnIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 9, 10, 0),
                                child: Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xEBE8EDF2),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(
                                      color: Color(0xFF805A04),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            taskListColumnItemRecord.itemName!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFAE8625),
                                                  fontSize: 20,
                                                ),
                                          ),
                                          Text(
                                            taskListColumnItemRecord.itemPrice!
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFAE8625),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            140, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 60,
                                              icon: Icon(
                                                Icons.navigate_next,
                                                color: Color(0xFFAE8625),
                                                size: 30,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'PostDetailsPage',
                                                  queryParams: {
                                                    'itemRefID': serializeParam(
                                                      taskListColumnItemRecord,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'itemRefID':
                                                        taskListColumnItemRecord,
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
