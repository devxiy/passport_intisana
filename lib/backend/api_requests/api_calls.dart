import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start IntisanaVII Group Code

class IntisanaVIIGroup {
  static String getBaseUrl() => 'https://intisana2.vercel.app/api/';
  static Map<String, String> headers = {};
  static MentorshipsPostCall mentorshipsPostCall = MentorshipsPostCall();
  static MeetingsPostCall meetingsPostCall = MeetingsPostCall();
  static MentorshipsSummaryCall mentorshipsSummaryCall =
      MentorshipsSummaryCall();
  static MentorshipsSummaryParentCall mentorshipsSummaryParentCall =
      MentorshipsSummaryParentCall();
  static MentorshipsbyStatusCall mentorshipsbyStatusCall =
      MentorshipsbyStatusCall();
  static MentorshipsbyStatusParentCall mentorshipsbyStatusParentCall =
      MentorshipsbyStatusParentCall();
  static MentorshipsPerParentCall mentorshipsPerParentCall =
      MentorshipsPerParentCall();
  static MeetingsPerParentCall meetingsPerParentCall = MeetingsPerParentCall();
  static MeetingsbyStatusCall meetingsbyStatusCall = MeetingsbyStatusCall();
  static MeetingsbyStatusParentCall meetingsbyStatusParentCall =
      MeetingsbyStatusParentCall();
  static MeetingsMonthSummaryCall meetingsMonthSummaryCall =
      MeetingsMonthSummaryCall();
  static MentorshipsMonthSummaryCall mentorshipsMonthSummaryCall =
      MentorshipsMonthSummaryCall();
  static MeetingsSummaryCall meetingsSummaryCall = MeetingsSummaryCall();
  static MeetingsSummaryParentCall meetingsSummaryParentCall =
      MeetingsSummaryParentCall();
  static StudentsMentorshipCall studentsMentorshipCall =
      StudentsMentorshipCall();
  static StudentsMentorshipFormsCall studentsMentorshipFormsCall =
      StudentsMentorshipFormsCall();
  static PeriodsMentorshipsCall periodsMentorshipsCall =
      PeriodsMentorshipsCall();
  static PeriodsMentorshipsFormsCall periodsMentorshipsFormsCall =
      PeriodsMentorshipsFormsCall();
  static PeriodsAllFormsCall periodsAllFormsCall = PeriodsAllFormsCall();
  static PeriodsAllCall periodsAllCall = PeriodsAllCall();
  static StatusCall statusCall = StatusCall();
  static PeriodsMeetingsCall periodsMeetingsCall = PeriodsMeetingsCall();
  static PeriodsMeetingsFormsCall periodsMeetingsFormsCall =
      PeriodsMeetingsFormsCall();
  static LoginCall loginCall = LoginCall();
  static StudentsMeetingsByStatusCall studentsMeetingsByStatusCall =
      StudentsMeetingsByStatusCall();
  static StudentsMentorshipsByStatusCall studentsMentorshipsByStatusCall =
      StudentsMentorshipsByStatusCall();
  static ParentMentorhipsPerStudentCall parentMentorhipsPerStudentCall =
      ParentMentorhipsPerStudentCall();
  static CompleteMentorshipCall completeMentorshipCall =
      CompleteMentorshipCall();
  static CompleteMeetingCall completeMeetingCall = CompleteMeetingCall();
  static UpdateMentorshipStatusCall updateMentorshipStatusCall =
      UpdateMentorshipStatusCall();
  static QueryMentorshipCall queryMentorshipCall = QueryMentorshipCall();
  static QueryMeetingCall queryMeetingCall = QueryMeetingCall();
  static AdminMeetingListStudentCall adminMeetingListStudentCall =
      AdminMeetingListStudentCall();
  static AdminMentorshipListStudentCall adminMentorshipListStudentCall =
      AdminMentorshipListStudentCall();
  static AdminMeetingListMentorCall adminMeetingListMentorCall =
      AdminMeetingListMentorCall();
  static AdminMentorshipListMentorCall adminMentorshipListMentorCall =
      AdminMentorshipListMentorCall();
  static AdminMeetingListPeriodCall adminMeetingListPeriodCall =
      AdminMeetingListPeriodCall();
  static AdminMentorshipListPeriodCall adminMentorshipListPeriodCall =
      AdminMentorshipListPeriodCall();
  static AdminMeetingListStatusCall adminMeetingListStatusCall =
      AdminMeetingListStatusCall();
  static AdminMentorshipListStatusCall adminMentorshipListStatusCall =
      AdminMentorshipListStatusCall();
  static AdminMeetingListFiltersCall adminMeetingListFiltersCall =
      AdminMeetingListFiltersCall();
  static AdminMentorshipListFiltersCall adminMentorshipListFiltersCall =
      AdminMentorshipListFiltersCall();
  static AdminMeetingListResultsCall adminMeetingListResultsCall =
      AdminMeetingListResultsCall();
  static AdminMentorshipListResultsCall adminMentorshipListResultsCall =
      AdminMentorshipListResultsCall();
  static AdminDashboardResultsCall adminDashboardResultsCall =
      AdminDashboardResultsCall();
  static AdminDashboardResultsMonthMentorshipsCall
      adminDashboardResultsMonthMentorshipsCall =
      AdminDashboardResultsMonthMentorshipsCall();
  static AdminDashboardResultsMonthMeetingsCall
      adminDashboardResultsMonthMeetingsCall =
      AdminDashboardResultsMonthMeetingsCall();
}

class MentorshipsPostCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? topics = '',
    String? comments = '',
    String? commitment1 = '',
    String? commitment2 = '',
    String? commitment3 = '',
    String? periodId = '',
    String? studentId = '',
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": "${code}",
  "mentorId": "${mentorId}",
  "topics": "${topics}",
  "comments": "${comments}",
  "status": "Compromisos pendientes",
  "periodId": "${periodId}",
  "studentId": "${studentId}",
  "commitments": [
    {
      "description": "${commitment1}",
      "isCompleted": false
    },
    {
      "description": "${commitment2}",
      "isCompleted": false
    },
    {
      "description": "${commitment3}",
      "isCompleted": false
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsPost',
      apiUrl: '${baseUrl}mentorships',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeetingsPostCall {
  Future<ApiCallResponse> call({
    String? topics = '',
    String? comments = '',
    String? commitment1 = '',
    String? commitment2 = '',
    String? commitment3 = '',
    String? periodId = '',
    String? studentId = '',
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mentorId": "${mentorId}",
  "topics": "${topics}",
  "comments": "${comments}",
  "status": "Compromisos pendientes",
  "periodId": "${periodId}",
  "studentId": "${studentId}",
  "commitments": [
    {
      "description": "${commitment1}",
      "isCompleted": false
    },
    {
      "description": "${commitment2}",
      "isCompleted": false
    },
    {
      "description": "${commitment3}",
      "isCompleted": false
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsPost',
      apiUrl: '${baseUrl}meetings',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MentorshipsSummaryCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsSummary',
      apiUrl: '${baseUrl}mentors/mentorshipSummary',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? percentajeMentorships(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.percentaje''',
      ));
  int? plannedMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalPlannedMentorships''',
      ));
  int? registeredMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalRegisteredMentorships''',
      ));
  int? relationMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.relation''',
      ));
}

class MentorshipsSummaryParentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsSummaryParent',
      apiUrl: '${baseUrl}mentorshipsMonthPerStudent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? percentajeMentorships(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.percentaje''',
      ));
  int? plannedMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalPlannedMentorships''',
      ));
  int? registeredMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalRegisteredMentorships''',
      ));
  int? relationMentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.relation''',
      ));
}

class MentorshipsbyStatusCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? mentorId = '',
    String? studentId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsbyStatus',
      apiUrl: '${baseUrl}mentorshipsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'mentorId': mentorId,
        'studentId': studentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MentorshipsbyStatusParentCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? userId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsbyStatusParent',
      apiUrl: '${baseUrl}mentorshipsByStatusParent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MentorshipsPerParentCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? userId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsPerParent',
      apiUrl: '${baseUrl}mentorshipsPerParent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MeetingsPerParentCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? userId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsPerParent',
      apiUrl: '${baseUrl}meetingsPerParent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MeetingsbyStatusCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? mentorId = '',
    String? studentId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsbyStatus',
      apiUrl: '${baseUrl}meetingsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'mentorId': mentorId,
        'studentId': studentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MeetingsbyStatusParentCall {
  Future<ApiCallResponse> call({
    String? periodId = '',
    String? userId = '',
    String? status = 'Compromisos pendientes',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsbyStatusParent',
      apiUrl: '${baseUrl}meetingsByStatusParent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'periodId': periodId,
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class MeetingsMonthSummaryCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsMonthSummary',
      apiUrl: '${baseUrl}mentors/meetingMonthSummary',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? periodName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].period''',
      ));
  int? plannedMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].totalPlannedMeetings''',
      ));
  int? registeredMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].totalRegisteredMeetings''',
      ));
  String? percentajeMeetings(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].percentaje''',
      ));
  int? relationMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].relation''',
      ));
  String? pendingMeetings(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].pending''',
      ));
}

class MentorshipsMonthSummaryCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MentorshipsMonthSummary',
      apiUrl: '${baseUrl}mentors/mentorshipMonthSummary',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? period1(dynamic response) => getJsonField(
        response,
        r'''$.period1''',
      );
  dynamic? period2(dynamic response) => getJsonField(
        response,
        r'''$.period2''',
      );
}

class MeetingsSummaryCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsSummary',
      apiUrl: '${baseUrl}mentors/meetingSummary',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? plannedMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalPlannedMeetings''',
      ));
  int? registeredMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalRegisteredMeetings''',
      ));
  String? percentajeMeetings(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.percentaje''',
      ));
  int? relationMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.relation''',
      ));
}

class MeetingsSummaryParentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MeetingsSummaryParent',
      apiUrl: '${baseUrl}meetingsMonthPerStudent',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? plannedMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalPlannedMeetings''',
      ));
  int? registeredMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalRegisteredMeetings''',
      ));
  String? percentajeMeetings(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.percentaje''',
      ));
  int? relationMeetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.relation''',
      ));
}

class StudentsMentorshipCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'StudentsMentorship',
      apiUrl: '${baseUrl}mentors/students',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StudentsMentorshipFormsCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'StudentsMentorshipForms',
      apiUrl: '${baseUrl}mentors/studentsForms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsMentorshipsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods Mentorships',
      apiUrl: '${baseUrl}periods',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "Preceptoría",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsMentorshipsFormsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods Mentorships Forms',
      apiUrl: '${baseUrl}periodsForms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "Preceptoría",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsAllFormsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods All Forms',
      apiUrl: '${baseUrl}periodsForms',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsAllCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods All',
      apiUrl: '${baseUrl}periods',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class StatusCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Status',
      apiUrl: '${baseUrl}status',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? statusName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? statusID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsMeetingsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods Meetings',
      apiUrl: '${baseUrl}periods',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "Cita",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PeriodsMeetingsFormsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Periods Meetings Forms',
      apiUrl: '${baseUrl}periodsForms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': "Cita",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? userIdAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? userNameAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? userLastNameAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  String? userEmailAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? tokenAPI(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  bool? isStudentAPI(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.student''',
      ));
  bool? isMentorAPI(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.mentor''',
      ));
  bool? isParentAPI(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.parent''',
      ));
  bool? isAdminAPI(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.admin''',
      ));
}

class StudentsMeetingsByStatusCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
    String? periodId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'StudentsMeetingsByStatus',
      apiUrl: '${baseUrl}/mentors/studentsMeetingsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'periodId': periodId,
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? students(dynamic response) => getJsonField(
        response,
        r'''$[:].user''',
        true,
      ) as List?;
  List? meetings(dynamic response) => getJsonField(
        response,
        r'''$[:].user.meetings''',
        true,
      ) as List?;
}

class StudentsMentorshipsByStatusCall {
  Future<ApiCallResponse> call({
    String? mentorId = '',
    String? periodId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'StudentsMentorshipsByStatus',
      apiUrl: '${baseUrl}/mentors/studentsMentorshipsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'periodId': periodId,
        'mentorId': mentorId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? students(dynamic response) => getJsonField(
        response,
        r'''$[:].user''',
        true,
      ) as List?;
  List? mentorships(dynamic response) => getJsonField(
        response,
        r'''$[:].user.mentorships''',
        true,
      ) as List?;
}

class ParentMentorhipsPerStudentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ParentMentorhipsPerStudent',
      apiUrl: '${baseUrl}mentorshipsPerParents',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? mentorships(dynamic response) => getJsonField(
        response,
        r'''$.mentorships''',
        true,
      ) as List?;
}

class CompleteMentorshipCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CompleteMentorship',
      apiUrl: '${baseUrl}/completeMentorship',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompleteMeetingCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CompleteMeeting',
      apiUrl: '${baseUrl}/completeMeeting',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateMentorshipStatusCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateMentorshipStatus',
      apiUrl: '${baseUrl}/updateMentorshipStatus',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryMentorshipCall {
  Future<ApiCallResponse> call({
    String? mentorshipId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'QueryMentorship',
      apiUrl: '${baseUrl}queryMentorship',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mentorshipId': mentorshipId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryMeetingCall {
  Future<ApiCallResponse> call({
    String? meetingId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'QueryMeeting',
      apiUrl: '${baseUrl}queryMeeting',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'meetingId': meetingId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminMeetingListStudentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Student',
      apiUrl: '${baseUrl}v2/admin/meetingsList/students',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMentorshipListStudentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Student',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/students',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMeetingListMentorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Mentor',
      apiUrl: '${baseUrl}v2/admin/meetingsList/mentors',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? mentorId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? mentorName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMentorshipListMentorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Mentor',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/mentors',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? mentorId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? mentorName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMeetingListPeriodCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Period',
      apiUrl: '${baseUrl}v2/admin/meetingsList/periods',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMentorshipListPeriodCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Period',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/periods',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? periodId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? periodName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMeetingListStatusCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Status',
      apiUrl: '${baseUrl}v2/admin/meetingsList/status',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? statusId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? statusName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMentorshipListStatusCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Status',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/status',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? statusId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? statusName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMeetingListFiltersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Filters',
      apiUrl: '${baseUrl}v2/admin/meetingsList/filters',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? filterId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? filterName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMentorshipListFiltersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Filters',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/filters',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? filterId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? filterName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AdminMeetingListResultsCall {
  Future<ApiCallResponse> call({
    String? studentId = '',
    String? mentorId = '',
    String? status = '',
    String? filter = '',
    String? periodId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Meeting List Results',
      apiUrl: '${baseUrl}v2/admin/meetingsList/results',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'studentId': studentId,
        'mentorId': mentorId,
        'status': status,
        'filterId': filter,
        'periodId': periodId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class AdminMentorshipListResultsCall {
  Future<ApiCallResponse> call({
    String? studentId = '',
    String? mentorId = '',
    String? status = '',
    String? filter = '',
    String? periodId = '',
  }) async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Mentorship List Results',
      apiUrl: '${baseUrl}v2/admin/mentorshipsList/results',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'studentId': studentId,
        'mentorId': mentorId,
        'status': status,
        'filterId': filter,
        'periodId': periodId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? studentFullName(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.user.fullName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? studentGrade(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.grade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? student(dynamic response) => getJsonField(
        response,
        r'''$[:].student''',
        true,
      ) as List?;
  List<String>? studentPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].student.period''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? studentsCommitments(dynamic response) => getJsonField(
        response,
        r'''$[:].student.commitments''',
        true,
      ) as List?;
}

class AdminDashboardResultsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Dashboard Results',
      apiUrl: '${baseUrl}v2/admin/dashboard/results',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? meetings(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meetings''',
      ));
  int? mentorships(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mentorships''',
      ));
}

class AdminDashboardResultsMonthMentorshipsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Dashboard Results Month Mentorships',
      apiUrl: '${baseUrl}v2/admin/dashboard/resultsMonthMentorships',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminDashboardResultsMonthMeetingsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IntisanaVIIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Dashboard Results Month Meetings',
      apiUrl: '${baseUrl}v2/admin/dashboard/resultsMonthMeetings',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End IntisanaVII Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
