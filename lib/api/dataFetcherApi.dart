import 'dart:convert';

import 'package:http/http.dart' as http;

class DatafetcherApi {
  

  getData(int pageNo) async {
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxNzQsInVzZXJfbmFtZSI6IkFyanVuIGVtYWlsIDciLCJ1c2VyX2dlbmRlciI6IiIsInVzZXJfYWdlIjoiIiwidXNlcl9wcm9maWxlX2ltZyI6Imh0dHBzOi8vc29mdGF3b3JrMS54eXovdXBsb2Fkcy9wcm9maWxlL3Byb2ZpbGVfZThkYzQwODFiMTM0MzRiNDUxODlhNzIwYjc3YjY4MTgxNjUyMzU0NTQ1OTY1LmpwZyIsInVzZXJfcHJvZmVzc2lvbiI6IiIsInVzZXJfYWJvdXQiOiIiLCJ1c2VyX3NraWxscyI6IiIsInVzZXJfZG9iIjoiIiwidXNlcl9hZGRyZXNzIjoiIiwidXNlcl9lbWFpbCI6IiIsInVzZXJfcGFzc3dvcmQiOiJNVEl6TkRVMiIsInVzZXJfcGhvbmUiOiIiLCJ1c2VyX3dlYnNpdGUiOiIiLCJ1c2VyX2NhdGVnb3J5X2lkIjoiIiwidXNlcl9zdGF0dXMiOiIxIiwidXNlcl9jaGF0X3N0YXR1cyI6Ik9mZmxpbmUiLCJ2aXNpdGVyX2lkIjoiIiwidXNlcl9yZWdpc3Rlcl9pZCI6IiIsInVzZXJfcHJvZmlsZV9iYWNrZ3JvdW5kIjoiaHR0cHM6Ly9zb2Z0YXdvcmsxLnh5ei91cGxvYWRzL3Byb2ZpbGUvcHJvZmlsZV9lOGRjNDA4MWIxMzQzNGI0NTE4OWE3MjBiNzdiNjgxODE2NTIzNTQ1NTA1MTguanBnIiwidXNlcl9jdiI6IiIsInVzZXJfcHJvZmlsZV9uYW1lIjoiIiwic29mdF9kZWxldGUiOiIwIiwidXNlcl9sb2NrIjoiMCIsInVzZXJfbG9naW5lZF9tZXRob2QiOiJlbWFpbCIsInVzZXJfYmxvY2tlZCI6IjEiLCJhcHBfYXV0aCI6ImFjM0BnbWFpbC5jb20iLCJhcHBfZmlyc3RfZmlsbCI6IjEiLCJjaGF0X3Byb2ZpbGVfc2VlbiI6IiIsInByb2ZpbGVfbGFzdF9sb2dpbiI6IjIwMjIvMDUvMTYgMDc6MDcgUE0iLCJ1c2VyX2NoYW5uZWxfbmFtZSI6IiIsInVzZXJfY2hhbm5lbF9kZXNjcmlwdGlvbiI6IiIsInVzZXJfZ3JvdXBfcmVzdHJpY3Rpb24iOiIiLCJjcmVhdGVkX2RhdGUiOiIwMDAwLTAwLTAwIDAwOjAwOjAwIiwibW9kaWZpZWRfZGF0ZSI6IjAwMDAtMDAtMDAgMDA6MDA6MDAiLCJ1c2VyX2NoYW5uZWxfaWQiOiJ6a3Rvcmt5OE91bE9zcm9jaXYzZSIsInVzZXJfbG9naW5faGlzdG9yeV9pZCI6ImQ5YTBjOTgwOTBjMWNhMmIiLCJ1c2VyX3N0YXR1c19wcml2YWN5X3R5cGUiOiIiLCJ1c2VyX3N0YXR1c19vbmx5IjoiIiwidXNlcl9zdGF0dXNfZXhjbHVkZSI6IiIsInByb2ZpbGVfc2NyZWVuX3Nob3QiOiIwIiwiaWF0IjoxNjUyNzU2MDQ1LCJleHAiOjE2NTM2MjAwNDV9.6YOtRgunNB0Cq1i9ZqqicMmTLbioK4Kwi8iIEbU-2xU'
    };
    var url =  Uri.parse(
            'http://softawork1.xyz:8080/feed/get_feed?user_id=62&page_no=${pageNo}&feed_type_number=0');
     var res = await http.get(
      url,
      headers: headers,
      
    );
    if (res.statusCode == 200) {
      print(json.decode(res.body));
      return json.decode(res.body);
    } else {
      print(res.reasonPhrase);
    }
  }
}
