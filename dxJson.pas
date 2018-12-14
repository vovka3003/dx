const json2js_unit =

'if(typeof JSON!=="object"){JSON={}}(function(){"use strict";var rx_one=/^[\],'+
':{}\s]*$/;var rx_two=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g;var rx_three=/"[^"'+
'\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g;var rx_four=/(?'+
':^|:|,)(?:\s*\[)+/g;var rx_escapable=/[\\"\u0000-\u001f\u007f-\u009f\u00ad\u0'+
'600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\uff'+
'f0-\uffff]/g;var rx_dangerous=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u'+
'200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;function f(n){ret'+
'urn(n<10)?"0"+n:n}function this_value(){return this.valueOf()}if(typeof Date.'+
'prototype.toJSON!=="function"){Date.prototype.toJSON=function(){return isFini'+
'te(this.valueOf())?(this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(t'+
'his.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f'+
'(this.getUTCSeconds())+"Z"):null};Boolean.prototype.toJSON=this_value;Number.'+
'prototype.toJSON=this_value;String.prototype.toJSON=this_value}var gap;var in'+
'dent;var meta;var rep;function quote(string){rx_escapable.lastIndex=0;return '+
'rx_escapable.test(string)?"\""+string.replace(rx_escapable,function(a){var c='+
'meta[a];return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(1'+
'6)).slice(-4)})+"\"":"\""+string+"\""}function str(key,holder){var i;var k;va'+
'r v;var length;var mind=gap;var partial;var value=holder[key];if(value&&typeo'+
'f value==="object"&&typeof value.toJSON==="function"){value=value.toJSON(key)'+
'}if(typeof rep==="function"){value=rep.call(holder,key,value)}switch(typeof v'+
'alue){case"string":return quote(value);case"number":return(isFinite(value))?S'+
'tring(value):"null";case"boolean":case"null":return String(value);case"object'+
'":if(!value){return"null"}gap+=indent;partial=[];if(Object.prototype.toString'+
'.apply(value)==="[object Array]"){length=value.length;for(i=0;i<length;i+=1){'+
'partial[i]=str(i,value)||"null"}v=partial.length===0?"[]":gap?("[\n"+gap+part'+
'ial.join(",\n"+gap)+"\n"+mind+"]"):"["+partial.join(",")+"]";gap=mind;return '+
'v}if(rep&&typeof rep==="object"){length=rep.length;for(i=0;i<length;i+=1){if('+
'typeof rep[i]==="string"){k=rep[i];v=str(k,value);if(v){partial.push(quote(k)'+
'+((gap)?": ":":")+v)}}}}else{for(k in value){if(Object.prototype.hasOwnProper'+
'ty.call(value,k)){v=str(k,value);if(v){partial.push(quote(k)+((gap)?": ":":")'+
'+v)}}}}v=partial.length===0?"{}":gap?"{\n"+gap+partial.join(",\n"+gap)+"\n"+m'+
'ind+"}":"{"+partial.join(",")+"}";gap=mind;return v}}if(typeof JSON.stringify'+
'!=="function"){meta={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","'+
'\"":"\\\"","\\":"\\\\"};JSON.stringify=function(value,replacer,space){var i;g'+
'ap="";indent="";if(typeof space==="number"){for(i=0;i<space;i+=1){indent+=" "'+
'}}else if(typeof space==="string"){indent=space}rep=replacer;if(replacer&&typ'+
'eof replacer!=="function"&&(typeof replacer!=="object"||typeof replacer.lengt'+
'h!=="number")){throw new Error("JSON.stringify");}return str("",{"":value})}}'+
'if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){var j;fu'+
'nction walk(holder,key){var k;var v;var value=holder[key];if(value&&typeof va'+
'lue==="object"){for(k in value){if(Object.prototype.hasOwnProperty.call(value'+
',k)){v=walk(value,k);if(v!==undefined){value[k]=v}else{delete value[k]}}}}ret'+
'urn reviver.call(holder,key,value)}text=String(text);rx_dangerous.lastIndex=0'+
';if(rx_dangerous.test(text)){text=text.replace(rx_dangerous,function(a){retur'+
'n("\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4))})}if(rx_one.test(tex'+
't.replace(rx_two,"@").replace(rx_three,"]").replace(rx_four,""))){j=eval("("+'+
'text+")");return(typeof reviver==="function")?walk({"":j},""):j}throw new Syn'+
'taxError("JSON.parse");}}}());';

my_unit =

'function Json(){return JSON;}'+

'function aGet(JsonArray, Index){'+
'return(JsonArray[Index]);'+
'}'+

'function oKey(Obj, index){'+
'var size = 0, key; '+
'   for (key in Obj) { '+
'   if (size == index) '+
'     break; '+
'   if (Obj.hasOwnProperty(key))'+
'     size++;}'+
' return(key);' +
'}'+

'function oValueByKey(JsonObject, Key){'+
'return(JsonObject[Key]);'+
'}'+

'Object.size = function(obj){'+
'var size = 0, key;'+
' for (key in obj) {'+
'   if (obj.hasOwnProperty(key))'+
'   size++;}'+
' return(size);' +
'};'+

'function oSize(Obj){'+
' return (Object.size(Obj)); } function eType(Element) { if (Eleme'+
'nt instanceof Array) { return("array"); } else if (Object.prototype.toString.'+
'call(Element) === "[object Array]") { return("array"); } else { return(typeof'+
'(Element));}};'+

'function TypeOf(jObj) {'+
'return typeof(jObj);'+
'}'+

'function TimezoneOffset() {'+
'var d = new Date();'+
'return d.getTimezoneOffset();'+
'}'+

'function xhr(url){'+
'	with(new ActiveXObject("WinHTTP.WinHttpRequest.5.1")){'+
'     option(11)=false;'+
'     option(18)=false;'+
'			open("GET",url,true);'+
'     option(4)=0x3300;'+
'			send();'+
'     WaitForResponse(3);'+
'			return responseText;'+
'	}'+
'}'
;


var ScriptEngine:variant;

// Создает и возвращает движок JScript

function CreateSE:variant;
begin
  try
    ScriptEngine := CreateOleObject('MSScriptControl.ScriptControl');
    ScriptEngine.Language := 'JScript';
    ScriptEngine.Reset;
    ScriptEngine.AddCode(json2js_unit + my_unit );
    result := ScriptEngine;
  except
    debug('CreateSE:')
    debug(ExceptionParam)
  end;
end;

// Уничтожает движок

procedure FreeSE(SE:variant);
begin
SE:=Unassigned;
end;


{*******************************************************************************
*                               HTTP Запросы                                   *
*******************************************************************************}

// Загружает содержимое из интернет по запрашиваемому url
function xhr(url:string):string;
  var SE:variant;
begin
  SE:=CreateSE;
  result:=SE.Run('xhr',url);
  FreeSE(SE);
end;

{*******************************************************************************
*                                  Парсинг                                     *
*******************************************************************************}
// Возвращает объявление JSON из движка js в ps.
function JSON:variant;
  var SE:variant;
begin
  SE:=CreateSE;
  result:=SE.Run('Json');
  FreeSe(SE);
end;

// Возвращает элемент массива
function aGet(JsonArray:variant;Index:integer):variant;
  var SE:variant;
begin
  SE:=CreateSE;
  result:=ScriptEnSEgine.Run('aGet',JsonArray,Index);
  FreeSE(SE);
end;

// Возвращает ключ пары по индексу
function oKey(JsonObject:variant;Index:integer):variant;
begin result:=ScriptEngine.Run('oKey',JsonObject,Index); end;

// Возвращает значение пары по ключу
function oValueByKey(JsonObject,Key:variant):variant;
begin result:=ScriptEngine.Run('oValueByKey',JsonObject,Key); end;

// Возвращает количество пар в объекте
function oSize(JsonObject:variant):integer;
begin result:=ScriptEngine.Run('oSize',JsonObject); end;

// Возвращает тип объекта (number, string, object, array)
function eType(Element:variant):variant;
begin result:=ScriptEngine.Run('eType',Element); end;

// Возвращает существующий объект и null, если объекта не существует
function TryGet(JsonObject:variant):variant;
begin try result:=JsonObject; except result:=null; end; end;

// Возвращает результат TryGet в виде строки (функция тестирования для склейки)
function TryGetAsS(JsonObject:variant):string;
begin result:=TryGet(JsonObject) as string; end;

// Возвращает путь (строковый)
// ВНИМАНИЕ!!! Функция ОПАСНА!!! Она исполняет текст из передаваемого параметра
// как JScript код и требует надежного источника JSON !!! Будьте внимательны!!!
function GetJsonPath(const JsonString,Path:string):variant;
begin
  ScriptEngine.Eval('var JsonString = '+JsonString+';'+
  'function P(){return '+JsonString+'.'+Path+';}');
  result:=ScriptEngine.Run('P',Path);
end;

// Сокращенный GetJsonPath
function GJP(const JsonString,Path:string):variant;
begin result:=GetJsonPath(JsonString,Path); end;

{******************************************************************************
*                              Дата / время                                   *
*******************************************************************************}

const
  SecPerDay = 86400;
  Offset1970 = 25569;

//  Текущее смещение от GMT в системе в минутах
function TimezoneOffset:integer;
begin result:=ScriptEngine.Run('TimezoneOffset'); end;

//  Дата из параметра ConvDate в Timestamp
function DateTimeToUnix(ConvDate: TDateTime): int64;
begin Result := SecondsBetween(StrToDateTime('01.01.1970'),ConvDate) end;

// Возвращает дату, время из метки Timestamp
function UTCDateTime(USec: Longint): TDateTime;
begin  Result := AddSecond(StrToDate('01.01.1970'),USec); end;

// Возвращает дату, время из метки Timestamp с учетом часового пояса в системе
function UTLDateTime(USec: Longint): TDateTime;
begin Result := AddSecond(UTCDateTime(USec),-TimezoneOffset*60); end;


{******************************************************************************
*                                  DaData                                     *
*******************************************************************************}

{@action
ID=CF79ACA3-0EAC-497C-A5EA-8CFBF10018DD
Target=button
OrigName=Test
Name=Test
Group=DaData
UI=<ui>
<field name="tst" caption="Поле:" required="1"/>
</ui>
Description=<b>Действие выводит данные в компонент "список"
с сортировкой по указанному полю источника</b>
@}

var
  HC: THttpClient;
  TR:TdxMemo;
  ReqBody:TStringStream;

procedure CancelRequest(Sender: TObject);
begin
  HC.Terminate;
end;

function SendRequest:boolean;
begin
    HC.RequestHeaders.Add('Content-Type: application/json');
    HC.RequestHeaders.Add('Accept: application/json')
    HC.RequestHeaders.Add('Authorization: Token 8c6ee64a07dd3722089576af4fea2b181ff77dfb');
    ReqBody := TStringStream.Create('{"query":"СВ-Транс","count":10}'{,"partner":"DATAEXPRESS.DEVELOPSOFT"});
    HC.RequestBody:=ReqBody;
    HC.Send('POST', 'https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/party');
end;

type TPartyDataAddress = record
  value, unrestricted_value:string;
end;

type TPartyDataManagment = record
  name, post:string;
end;

type TPartyData = record
  inn:string;
  kpp:string;
  capital:string;
  management:TPartyDataManagment;
  address:TPartyDataAddress;
end;

type TParty = record
  value:string;
  unrestricted_value:string;
  data:TPartyData;
end;

type TPartyArray = array of TParty;

procedure Finish(Sender: TObject);
var JP,sg:variant;
S,A:string;
i,SugCount:integer;
SL:TStrings;
Party:TParty;
PartyArr:TPartyArray;
begin
ReqBody.Free;
SL:=TStringList.Create;
S:=THttpClient(Sender).Content;
debug(THttpClient(Sender).ResponseStatusCode)
//debug(S);
InitScriptEngine;
JP:=JSON.parse(S);

for i:=0 to oSize(JP.suggestions)-1 do
begin
sg:=aGet(JP.suggestions,i)

SetArrayLength(PartyArr,i+1);

with PartyArr[i]  do
begin
  try value := sg.value; except continue end;
  try data.inn := sg.data.inn; except continue end;
  try data.management.name := sg.data.management.name; except Continue; end
  try data.management.post := sg.data.management.post; except Continue; end
  try data.address.value := sg.data.address.value; except Continue; end
end;
end;
debug('Найдено организаций: '+IntToStr(GetArrayLength(PartyArr)));
for i:=0 to GetArrayLength(PartyArr)-1 do
debug(PartyArr[i].value+', ИНН: '+PartyArr[i].data.inn+#13#10+'Адрес: '+
PartyArr[i].data.address.value+#13#10);
DestroyScriptEngine;
debug(SL.Text)
SL.Free;
end;

procedure Quit(Sender: TObject);
begin
 HC.Free;
end;


procedure Test(Field:string);
var C:TComponent;
begin
  HC := THttpClient.Create;
  HC.Async := True;
  HC.OnFinish := @Finish;
  MainWindow.OnDataBaseClose:=@Quit;
  SendRequest;
end;






