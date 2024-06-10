import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  String data = 'Loading...';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var url = 'https://192.168.50.31/mobius/rest/searches?returnresults=true';
    var headers = {
      "Accept": "application/vnd.asg-mobius-search-results.v3+json",
      "Client-Id":
          "AGHcLAELC8BNiH7h2-i-9GQHPdWQUnV086QWk0BXIGchOcd7AMH5zQhCvGihmYlVa5D93HHryfglKMcXXUyIvAQP_0ptkzDu_0K60V0nzWIGFH1LRAvjejWM-1tIXuSGkVnEvVm9uY_26m8as9o19VfZuR1JF1XwBmYvrQPmbmvqTrJRy8Tk1G8J1l5jGE01k21SIwLGk9jIR6Y9mkWQeNa1rl6zCU5e5jJdJBi0h9ms_yOTUc9E2A7VQWyHqPOI9AFM-QPB-Is7-jgrGr_G4cXzo8wbCX8bqC8x2LGa-2H2nKrPbKXEaq4vzPqbvA-2jYS7hV70OOZFL9TDp2jpVBFYrqjTXh6-NMAKHF4lBabkbfsaj-4oMFCropbMzmm64bTGJ2O1nitgCkodgjHyTMsR1BWQejiY8JSg3aK5TgTTIFEqUBAg-cg7WKCL83Wjx8fn875aOommvWZeHv_iFujCD6AjMaFXFFRz5iEzAGUy9kW5814UJxMFW1BKX_PwgJ5NraL2p7S49N6rw_bKijnd_y_m5OPRFN5DAVpQZDaUMTLdFEsHfZ_HhZlDi_Xp_IuLy-MmHE97sz6Flge6BEqXMPew71Nk9TYzpruQ-UvlmUSZZvD-OdD9_WpessDmU7wHcvDPslizIbRIbVmQkAf2mHY7PvpQZPlbI_Z5y1qXExQ26MEkoJ_CUyErsWcRg2cSms0Q0vs-129eW1aDLcKo4VQEIpfz6ISX5gSI0ukFtl2DXVYj0Jk-zl9Yd8bL-EoJHTmwNRTAguWhsY08VLk0yYZTRD8KX9zdU98DQQwcKXWCOqZSFickU7Ghuy-zOKRd6hiyXrvtnF2Ni_GQT2rcKWv83LYiyd8QGttzAmu6UyNnSMaUG5DII1Ey_rTFajg34zlvazDn1b2XIVJm-t6Inv0E4NoeMfJTp3V2K2N6VMDs414SGQbLY6EezWZiZMbjt4SsFVjXeu3X3-rKlBl8MT9EG5nBu2obetdy3APAMfc4orR3I-0rbghV4jKHVqJVQa2KXJsziI6gpGMJFM1x2D3RgojlqLyyrdfjSOvtjE-tgj04LTkU4-xgh6t9BYf27pU5PeMyVVdGpfcAv7x7vIWlKg8aufeZFv2jkC3gxnoxrdyw_-rJ0IHLYkktvrg7yReUfVEZZ8JBpB8-LbgQFvrlo5gJOM3C8X2Hovj5kMwdGiHBYH2uUYizpIhfkMheezlUwzJodOWouJ5wl2nNQWaCG9G_4iOmAAmG7XabwvwfdsI2F8p7nBujKFYVZGrGiw39jlBA4jMuNqhkpQPLVGPPJT-LzA",
      "Content-Type": "application/vnd.asg-mobius-search.v4+json"
    };
    var body = jsonEncode({
      "indexSearch": {
        "name": "Search Company Name like",
        "exitOnError": true,
        "conjunction": "AND",
        "constraints": [
          {
            "name": "GSSMCNAME",
            "operator": "LK",
            "values": [
              {"value": "SXZ%"}
            ]
          }
        ],
        "returnedIndexes": [
          {"name": "GSSMCNAME"}
        ],
        "repositories": [
          {"id": "5661D78D-1724-46E4-9580-1D3B91CE498A"}
        ],
        "description": null,
        "advancedDescription": null
      }
    });
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      if (response.body != null) {
        var jsonData = jsonDecode(response.body);

        setState(() {
          data = jsonData.toString();
        });
      } else {
        print('The server did not return any data.');
      }
    } else {
      print('The request failed with status code: ${response.statusCode}.');
      // Handle the error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
