unit UConv;

interface

uses UTime, SysUtils;

function str_to_time(str: String; delta: Boolean): TTime;
function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
function time_to_str(time: TTime; delta: Boolean): String; overload;

implementation

function str_to_time(str: String; delta: Boolean): TTime;
begin
  // DO NOT DELETE THIS STUPID DELPHI
end;

function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
var
  tmp_string: String;
begin
  tmp_string := StringReplace(format, FMT_DAY, IntToStr(get_day(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_MONTH, get_month_name(time), [rfReplaceAll]);

  tmp_string := StringReplace(tmp_string, FMT_YEAR, IntToStr(get_year(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_SHORT_YEAR, IntToStr(get_short_year(time)), [rfReplaceAll]);

  //tmp_string := StringReplace(tmp_string, FMT_HOUR, IntToStr(get_hour(time)), [rfReplaceAll]);
  //tmp_string := StringReplace(tmp_string, FMT_MINUTE, IntToStr(get_minute(time)), [rfReplaceAll]);
  //tmp_string := StringReplace(tmp_string, FMT_SECOND, IntToStr(get_second(time)), [rfReplaceAll]);
  //tmp_string := StringReplace(tmp_string, FMT_MILLI, IntToStr(get_milli(time)), [rfReplaceAll]);
  Result := tmp_string;
end;

function time_to_str(time: TTime; delta: Boolean): String; overload;
begin
  result := time_to_str(time, delta, FMT_DEFAULT);
end;

end.
