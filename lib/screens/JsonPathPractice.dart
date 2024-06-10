import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_path/json_path.dart';
import 'package:collection/collection.dart';
import 'package:mobiusamza/screens/ContentStream.dart';
import 'package:provider/provider.dart';

class JsonPathPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final document = jsonDecode('''
{
    "incompleteResults": false,
    "cachedResultCount": 0,
    "allResultsCached": false,
    "results": [
        {
            "pageCount": 1,
            "pageNumber": 1,
            "objectId": "ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)",
            "objectTypeId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "indexes": [
                {
                    "name": "GSSMCNAME",
                    "value": "SXZ RESOURCE SDN BHD"
                }
            ],
            "metadata": [
                {
                    "dataType": "String",
                    "displayName": "Title",
                    "keyName": "__DocTitle",
                    "keyValue": "PSPBAS0001 Surat Permohonan Pembukaan Akaun Syarikat 27 Mar 2023, 12:00:02 AM Default Pages 1 DISK Available",
                    "keyType": "title",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Name",
                    "keyName": "__DocName",
                    "keyValue": "PSPBAS0001 Surat Permohonan Pembukaan Akaun Syarikat 27 Mar 2023, 12:00:02 AM Default",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Availability Status",
                    "keyName": "__availability",
                    "keyValue": "Available",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__device",
                    "keyName": "__device",
                    "keyValue": "DISK",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__ReportDescription",
                    "keyName": "__ReportDescription",
                    "keyValue": "Surat Permohonan Pembukaan Akaun Syarikat",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report ID",
                    "keyName": "__reportid",
                    "keyValue": "PSPBAS0001",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__documentClass",
                    "keyName": "__documentClass",
                    "keyValue": "PSPBAS0001",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Date",
                    "displayName": "Report Version ID",
                    "keyName": "__versionid",
                    "keyValue": "2023-03-27T00:00:02.000+08:00",
                    "keyType": "document",
                    "keyOrdinal": 1
                },
                {
                    "dataType": "String",
                    "displayName": "__originalVersionId",
                    "keyName": "__originalVersionId",
                    "keyValue": "20230327000002",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report Section",
                    "keyName": "__sectionid",
                    "keyValue": "Default                       ",
                    "keyType": "document",
                    "keyOrdinal": 2
                },
                {
                    "dataType": "Date",
                    "displayName": "__revisionTimestamp",
                    "keyName": "__revisionTimestamp",
                    "keyValue": "2023-03-27T00:00:02.000+08:00",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "__originalPageNumber",
                    "keyName": "__originalPageNumber",
                    "keyValue": 7,
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page count",
                    "keyName": "__numberOfContentSegments",
                    "keyValue": 1,
                    "keyType": "pageCount",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page Number",
                    "keyName": "__pageOffset",
                    "keyValue": 1,
                    "keyType": "pageNumber",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__redactionType",
                    "keyName": "__redactionType",
                    "keyValue": "NONE",
                    "keyType": "info",
                    "keyOrdinal": 0
                }
            ],
            "snippets": null,
            "links": [
                {
                    "rel": "http://www/asg/com/mobius/rel/document",
                    "method": "GET",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/download",
                    "method": "POST",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/extractionpolicies/get",
                    "method": "GET",
                    "href": "/mobius/rest/extractionpolicies?documentid=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/metadata",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/metadata"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/properties",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/properties"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/retentions",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/retentions"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/locations",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/locations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/inventories",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/inventories"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/get",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/add",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuUFNQQkFTMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDIxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLm9raFFsZ09GTUFmUk1uRm95NWdlU051MVVZOUI0VlhNc0ZBTFlWSGU3S2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                }
            ]
        },
        {
            "pageCount": 1,
            "pageNumber": 1,
            "objectId": "ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)",
            "objectTypeId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "indexes": [
                {
                    "name": "GSSMCNAME",
                    "value": "SXZ RESOURCE SDN BHD"
                }
            ],
            "metadata": [
                {
                    "dataType": "String",
                    "displayName": "Title",
                    "keyName": "__DocTitle",
                    "keyValue": "BBMPO00001 Borang Maklumat Pelanggan Organisasi 27 Mar 2023, 12:00:01 AM Default Pages 1 DISK Available",
                    "keyType": "title",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Name",
                    "keyName": "__DocName",
                    "keyValue": "BBMPO00001 Borang Maklumat Pelanggan Organisasi 27 Mar 2023, 12:00:01 AM Default",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Availability Status",
                    "keyName": "__availability",
                    "keyValue": "Available",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__device",
                    "keyName": "__device",
                    "keyValue": "DISK",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__ReportDescription",
                    "keyName": "__ReportDescription",
                    "keyValue": "Borang Maklumat Pelanggan Organisasi",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report ID",
                    "keyName": "__reportid",
                    "keyValue": "BBMPO00001",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__documentClass",
                    "keyName": "__documentClass",
                    "keyValue": "BBMPO00001",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Date",
                    "displayName": "Report Version ID",
                    "keyName": "__versionid",
                    "keyValue": "2023-03-27T00:00:01.000+08:00",
                    "keyType": "document",
                    "keyOrdinal": 1
                },
                {
                    "dataType": "String",
                    "displayName": "__originalVersionId",
                    "keyName": "__originalVersionId",
                    "keyValue": "20230327000001",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report Section",
                    "keyName": "__sectionid",
                    "keyValue": "Default                       ",
                    "keyType": "document",
                    "keyOrdinal": 2
                },
                {
                    "dataType": "Date",
                    "displayName": "__revisionTimestamp",
                    "keyName": "__revisionTimestamp",
                    "keyValue": "2023-03-27T00:00:01.000+08:00",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "__originalPageNumber",
                    "keyName": "__originalPageNumber",
                    "keyValue": 5,
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page count",
                    "keyName": "__numberOfContentSegments",
                    "keyValue": 1,
                    "keyType": "pageCount",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page Number",
                    "keyName": "__pageOffset",
                    "keyValue": 1,
                    "keyType": "pageNumber",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__redactionType",
                    "keyName": "__redactionType",
                    "keyValue": "NONE",
                    "keyType": "info",
                    "keyOrdinal": 0
                }
            ],
            "snippets": null,
            "links": [
                {
                    "rel": "http://www/asg/com/mobius/rel/document",
                    "method": "GET",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/download",
                    "method": "POST",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/extractionpolicies/get",
                    "method": "GET",
                    "href": "/mobius/rest/extractionpolicies?documentid=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/metadata",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/metadata"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/properties",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/properties"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/retentions",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/retentions"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/locations",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/locations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/inventories",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/inventories"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/get",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/add",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuQkJNUE8wMDAwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLklIRl9JOHBieFd4RXJNZnBGUk9fa1hDZ3VMZGJJWG90U1hSNG1JZmFydlkxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                }
            ]
        },
        {
            "pageCount": 1,
            "pageNumber": 1,
            "objectId": "ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)",
            "objectTypeId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "indexes": [
                {
                    "name": "GSSMCNAME",
                    "value": "SXZ RESOURCE SDN BHD"
                }
            ],
            "metadata": [
                {
                    "dataType": "String",
                    "displayName": "Title",
                    "keyName": "__DocTitle",
                    "keyValue": "GSSMBRGD01 Borang D Perakuan Pendaftaran (Kaedah 13) 27 Mar 2023, 12:00:01 AM Default Pages 1 DISK Available",
                    "keyType": "title",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Name",
                    "keyName": "__DocName",
                    "keyValue": "GSSMBRGD01 Borang D Perakuan Pendaftaran (Kaedah 13) 27 Mar 2023, 12:00:01 AM Default",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Availability Status",
                    "keyName": "__availability",
                    "keyValue": "Available",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__device",
                    "keyName": "__device",
                    "keyValue": "DISK",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__ReportDescription",
                    "keyName": "__ReportDescription",
                    "keyValue": "Borang D Perakuan Pendaftaran (Kaedah 13)",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report ID",
                    "keyName": "__reportid",
                    "keyValue": "GSSMBRGD01",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__documentClass",
                    "keyName": "__documentClass",
                    "keyValue": "GSSMBRGD01",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Date",
                    "displayName": "Report Version ID",
                    "keyName": "__versionid",
                    "keyValue": "2023-03-27T00:00:01.000+08:00",
                    "keyType": "document",
                    "keyOrdinal": 1
                },
                {
                    "dataType": "String",
                    "displayName": "__originalVersionId",
                    "keyName": "__originalVersionId",
                    "keyValue": "20230327000001",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report Section",
                    "keyName": "__sectionid",
                    "keyValue": "Default                       ",
                    "keyType": "document",
                    "keyOrdinal": 2
                },
                {
                    "dataType": "Date",
                    "displayName": "__revisionTimestamp",
                    "keyName": "__revisionTimestamp",
                    "keyValue": "2023-03-27T00:00:01.000+08:00",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "__originalPageNumber",
                    "keyName": "__originalPageNumber",
                    "keyValue": 7,
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page count",
                    "keyName": "__numberOfContentSegments",
                    "keyValue": 1,
                    "keyType": "pageCount",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page Number",
                    "keyName": "__pageOffset",
                    "keyValue": 1,
                    "keyType": "pageNumber",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__redactionType",
                    "keyName": "__redactionType",
                    "keyValue": "NONE",
                    "keyType": "info",
                    "keyOrdinal": 0
                }
            ],
            "snippets": null,
            "links": [
                {
                    "rel": "http://www/asg/com/mobius/rel/document",
                    "method": "GET",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/download",
                    "method": "POST",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/extractionpolicies/get",
                    "method": "GET",
                    "href": "/mobius/rest/extractionpolicies?documentid=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/metadata",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/metadata"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/properties",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/properties"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/retentions",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/retentions"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/locations",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/locations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/inventories",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/inventories"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/get",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/add",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR1NTTUJSR0QwMTkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDExMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA3MTAub3JncGFnZW51bTEuNzEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmp1MWhkd05CWlQ3ZU5PaXh1Nkx3SU5sWG8zcGF6Z3ZELWRCMW0wZG11YTgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                }
            ]
        },
        {
            "pageCount": 1,
            "pageNumber": 1,
            "objectId": "ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)",
            "objectTypeId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "indexes": [
                {
                    "name": "GSSMCNAME",
                    "value": "SXZ RESOURCE SDN BHD"
                }
            ],
            "metadata": [
                {
                    "dataType": "String",
                    "displayName": "Title",
                    "keyName": "__DocTitle",
                    "keyValue": "GCA16SEC14 Companies Act 2016 Section 14 27 Mar 2023, 12:00:00 AM Default Pages 1 DISK Available",
                    "keyType": "title",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Name",
                    "keyName": "__DocName",
                    "keyValue": "GCA16SEC14 Companies Act 2016 Section 14 27 Mar 2023, 12:00:00 AM Default",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Availability Status",
                    "keyName": "__availability",
                    "keyValue": "Available",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__device",
                    "keyName": "__device",
                    "keyValue": "DISK",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__ReportDescription",
                    "keyName": "__ReportDescription",
                    "keyValue": "Companies Act 2016 Section 14",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report ID",
                    "keyName": "__reportid",
                    "keyValue": "GCA16SEC14",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__documentClass",
                    "keyName": "__documentClass",
                    "keyValue": "GCA16SEC14",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Date",
                    "displayName": "Report Version ID",
                    "keyName": "__versionid",
                    "keyValue": "2023-03-27T00:00:00.000+08:00",
                    "keyType": "document",
                    "keyOrdinal": 1
                },
                {
                    "dataType": "String",
                    "displayName": "__originalVersionId",
                    "keyName": "__originalVersionId",
                    "keyValue": "20230327000000",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report Section",
                    "keyName": "__sectionid",
                    "keyValue": "Default                       ",
                    "keyType": "document",
                    "keyOrdinal": 2
                },
                {
                    "dataType": "Date",
                    "displayName": "__revisionTimestamp",
                    "keyName": "__revisionTimestamp",
                    "keyValue": "2023-03-27T00:00:00.000+08:00",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "__originalPageNumber",
                    "keyName": "__originalPageNumber",
                    "keyValue": 5,
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page count",
                    "keyName": "__numberOfContentSegments",
                    "keyValue": 1,
                    "keyType": "pageCount",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page Number",
                    "keyName": "__pageOffset",
                    "keyValue": 1,
                    "keyType": "pageNumber",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__redactionType",
                    "keyName": "__redactionType",
                    "keyValue": "NONE",
                    "keyType": "info",
                    "keyOrdinal": 0
                }
            ],
            "snippets": null,
            "links": [
                {
                    "rel": "http://www/asg/com/mobius/rel/document",
                    "method": "GET",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/download",
                    "method": "POST",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/extractionpolicies/get",
                    "method": "GET",
                    "href": "/mobius/rest/extractionpolicies?documentid=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/metadata",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/metadata"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/properties",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/properties"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/retentions",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/retentions"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/locations",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/locations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/inventories",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/inventories"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/get",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/add",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUMxNDkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA1MTAub3JncGFnZW51bTEuNTEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLnJMNU5LTDBna1VZVTMxdEhUbmJXaFVZa1AwbFRSSHFlbkZWTll6U1JRSzgxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                }
            ]
        },
        {
            "pageCount": 1,
            "pageNumber": 1,
            "objectId": "ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)",
            "objectTypeId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "indexes": [
                {
                    "name": "GSSMCNAME",
                    "value": "SXZ RESOURCE SDN BHD"
                }
            ],
            "metadata": [
                {
                    "dataType": "String",
                    "displayName": "Title",
                    "keyName": "__DocTitle",
                    "keyValue": "GCA16SEC58 Companies Act 2016 Section 58 27 Mar 2023, 12:00:00 AM Default Pages 1 DISK Available",
                    "keyType": "title",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Name",
                    "keyName": "__DocName",
                    "keyValue": "GCA16SEC58 Companies Act 2016 Section 58 27 Mar 2023, 12:00:00 AM Default",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Availability Status",
                    "keyName": "__availability",
                    "keyValue": "Available",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__device",
                    "keyName": "__device",
                    "keyValue": "DISK",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__ReportDescription",
                    "keyName": "__ReportDescription",
                    "keyValue": "Companies Act 2016 Section 58",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report ID",
                    "keyName": "__reportid",
                    "keyValue": "GCA16SEC58",
                    "keyType": "document",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__documentClass",
                    "keyName": "__documentClass",
                    "keyValue": "GCA16SEC58",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Date",
                    "displayName": "Report Version ID",
                    "keyName": "__versionid",
                    "keyValue": "2023-03-27T00:00:00.000+08:00",
                    "keyType": "document",
                    "keyOrdinal": 1
                },
                {
                    "dataType": "String",
                    "displayName": "__originalVersionId",
                    "keyName": "__originalVersionId",
                    "keyValue": "20230327000000",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "Report Section",
                    "keyName": "__sectionid",
                    "keyValue": "Default                       ",
                    "keyType": "document",
                    "keyOrdinal": 2
                },
                {
                    "dataType": "Date",
                    "displayName": "__revisionTimestamp",
                    "keyName": "__revisionTimestamp",
                    "keyValue": "2023-03-27T00:00:00.000+08:00",
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "__originalPageNumber",
                    "keyName": "__originalPageNumber",
                    "keyValue": 8,
                    "keyType": "info",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page count",
                    "keyName": "__numberOfContentSegments",
                    "keyValue": 1,
                    "keyType": "pageCount",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "Integer",
                    "displayName": "Page Number",
                    "keyName": "__pageOffset",
                    "keyValue": 1,
                    "keyType": "pageNumber",
                    "keyOrdinal": 0
                },
                {
                    "dataType": "String",
                    "displayName": "__redactionType",
                    "keyName": "__redactionType",
                    "keyValue": "NONE",
                    "keyType": "info",
                    "keyOrdinal": 0
                }
            ],
            "snippets": null,
            "links": [
                {
                    "rel": "http://www/asg/com/mobius/rel/document",
                    "method": "GET",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/download",
                    "method": "POST",
                    "href": "/mobius/rest/contentstreams?id=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/extractionpolicies/get",
                    "method": "GET",
                    "href": "/mobius/rest/extractionpolicies?documentid=ENC%28MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA%29"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/metadata",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/metadata"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/properties",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/properties"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/document/retentions",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/retentions"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/locations",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/locations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/pages/inventories",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/pages/inventories"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/get",
                    "method": "GET",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                },
                {
                    "rel": "http://www/asg/com/mobius/rel/annotations/add",
                    "method": "POST",
                    "href": "/mobius/rest/documents/ENC(MTAucmVwb3NpdG9yeTEzLm1pb3Jkb2NzZXJ2MDE4LnJlcG9ydGlkMTAuR0NBMTZTRUM1ODkucmVwb3J0dmVyMTQuMjAyMzAzMjcwMDAwMDAxMC5yZXBvcnRzZWN0NDUuRGVmYXVsdCAgICAgICAgICAgICAgICAgICAgICAgQUJTUEcwMDAwMDAwMDA4MTAub3JncGFnZW51bTEuODEzLm51bWJlcm9mcGFnZXMxLjExMi5yZXBvc2l0b3J5aWQzNi41NjYxRDc4RC0xNzI0LTQ2RTQtOTU4MC0xRDNCOTFDRTQ5OEE5LnNpZ25hdHVyZTQzLmFHVC02UEg3ajRSYjZQV0lnbU1hLTVJWXM3QXF2ZUlqSEwtV1o2ZnVIa2cxNi50Y2ljcnlwdG92ZXJzaW9uMy44LjA)/annotations"
                }
            ]
        }
    ],
    "searchStatus": [
        {
            "message": "SUCCESS",
            "repositoryId": "5661D78D-1724-46E4-9580-1D3B91CE498A",
            "severity": "OK"
        }
    ],
    "links": []
}  
  ''');

    final fileName = JsonPath(r'$..metadata[1].keyValue').readValues(document);
    final objectId = JsonPath(r'$..objectId').readValues(document);

    var myMap = <String, dynamic>{};

    for (var i = 0; i < fileName.length; i++) {
      final fileNameList = fileName.toList();
      final objectIdList = objectId.toList();

      for (var i = 0; i < fileNameList.length; i++) {
        myMap[fileNameList[i].toString()] = objectIdList[i].toString();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Json Path Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...myMap.entries.map((entry) {
              return ElevatedButton(
                child: Text(entry.key),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ContentStream(entryValue: entry.value),
                    ),
                  );
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}


/*
import 'package:collection/collection.dart';
import 'package:json_path/json_path.dart';

void main() {
  var document = /* Your JSON document here */;

  var keyValues = JsonPath(r'$..metadata[1].keyValue').readValues(document);
  var objectIds = JsonPath(r'$..objectId').readValues(document);

  var combinedSet = <String>{};
  var pairs = zip([keyValues, objectIds]);

  for (var pair in pairs) {
    combinedSet.add('${pair[0]}-${pair[1]}');
  }

  print(combinedSet);
}
*/