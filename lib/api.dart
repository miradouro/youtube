import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyDWtCEULj9GCZsUpwmmONN9oHFxqVSQbdc";
//const ID_CANAL = "@AndroidDevelopers";
const ID_CANAL = "UCVHFbqXqoYvEWM1Ddxl0QDg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response;
    response = await http.get(Uri.parse(
      URL_BASE+"search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
    ));
    if(response.statusCode == 200){
      //print("yep"+response.body);
      print("yep");

      Map<String, dynamic> dadosJson = json.decode(response.body);
      print("resultado => "+dadosJson["items"][2]["snippet"]["title"].toString());


    }else{
      print("nop"+response.body);
    }
  }
}