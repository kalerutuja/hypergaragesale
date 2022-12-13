import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PostDetailsPageWidget extends StatefulWidget {
  const PostDetailsPageWidget({
    Key? key,
    this.itemRefID,
  }) : super(key: key);

  final ItemRecord? itemRefID;

  @override
  _PostDetailsPageWidgetState createState() => _PostDetailsPageWidgetState();
}

class _PostDetailsPageWidgetState extends State<PostDetailsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ItemRecord>>(
      stream: queryItemRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ItemRecord> postDetailsPageItemRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final postDetailsPageItemRecord =
            postDetailsPageItemRecordList.isNotEmpty
                ? postDetailsPageItemRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          appBar: AppBar(
            backgroundColor: Color(0xFFAE8625),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left,
                color: Color(0xFF131110),
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'Post Details',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF131110),
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 20,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Product Name',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFAE8625),
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      widget.itemRefID!.itemName!,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .black600,
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Product Price',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAE8625),
                                        fontSize: 20,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      widget.itemRefID!.itemPrice!.toString(),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .black600,
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Description',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAE8625),
                                        fontSize: 20,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      widget.itemRefID!.shortBio!,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .black600,
                                            fontSize: 20,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StreamBuilder<ItemRecord>(
                          stream: ItemRecord.getDocument(
                              widget.itemRefID!.reference),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final imageItemRecord = snapshot.data!;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        widget.itemRefID!.photoUrl!,
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: widget.itemRefID!.photoUrl!,
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: widget.itemRefID!.photoUrl!,
                                transitionOnUserGestures: true,
                                child: Image.network(
                                  widget.itemRefID!.photoUrl!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                          child: StreamBuilder<ItemRecord>(
                            stream: ItemRecord.getDocument(
                                widget.itemRefID!.reference),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final imageItemRecord = snapshot.data!;
                              return InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: Image.network(
                                          widget.itemRefID!.photUrl1!,
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: false,
                                        tag: widget.itemRefID!.photUrl1!,
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: widget.itemRefID!.photUrl1!,
                                  transitionOnUserGestures: true,
                                  child: Image.network(
                                    widget.itemRefID!.photUrl1!,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StreamBuilder<ItemRecord>(
                          stream: ItemRecord.getDocument(
                              widget.itemRefID!.reference),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final imageItemRecord = snapshot.data!;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        widget.itemRefID!.photoUrl2!,
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: widget.itemRefID!.photoUrl2!,
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: widget.itemRefID!.photoUrl2!,
                                transitionOnUserGestures: true,
                                child: Image.network(
                                  widget.itemRefID!.photoUrl2!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.network(
                                      widget.itemRefID!.photoUrl3!,
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: widget.itemRefID!.photoUrl3!,
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: widget.itemRefID!.photoUrl3!,
                              transitionOnUserGestures: true,
                              child: Image.network(
                                widget.itemRefID!.photoUrl3!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'LocationPage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.leftToRight,
                                ),
                              },
                            );
                          },
                          text: 'Get Direction',
                          icon: Icon(
                            Icons.location_on,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 170,
                            height: 50,
                            color: Color(0xFF3377F7),
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await signOut();

                    context.goNamedAuth('Homepage', mounted);
                  },
                  text: 'Logout',
                  options: FFButtonOptions(
                    width: 130,
                    height: 50,
                    color: Color(0xFFAE8625),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).black600,
                          fontSize: 16,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
