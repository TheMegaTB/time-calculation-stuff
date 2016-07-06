
unit UConv;

uses UTime;

interface

function str_to_time(str: String; delta: Boolean);
function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;

const
  FMT_DEFAULT = 'DD.MM.YYYY HH.MM.SS:mmmm';
  FMT_DAY = 'DD';
  FMT_MONTH = 'MM';
  FMT_YEAR = 'YYYY';
  FMT_SHORT_YEAR = 'YY';
  FMT_HOUR = 'HH';
  FMT_MINUTE = 'MM';
  FMT_SECOND = 'SS';
  FMT_MILLI = 'mmmm';
 

implementation

function str_to_time(str: String; delta: Boolean);
begin
  //DO NOT DELETE THIS STUPID DELPHI
end;

function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
begin
  StringReplace(format, FMT_DAY, get_day(time));
  StringReplace(format, FMT_MONTH, get_month_name(time));

  StringReplace(format, FMT_YEAR, get_year(time));
  StringReplace(format, FMT_SHORT_YEAR, get_short_year(time));

  StringReplace(format, FMT_HOUR, get_hour(time));
  StringReplace(format, FMT_MINUTE, get_minute(time));
  StringReplace(format, FMT_SECOND, get_second(time));
  StringReplace(format, FMT_MILLI, get_milli(time));
end;

function time_to_str(time: TTime; delta: Boolean): String; overload;
begin
  result:=time_to_str(time, delta, FMT_DEFAULT);
end;

end.
