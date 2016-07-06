unit UConv;

interface

uses UTime, SysUtils;

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

function str_to_time(str: String; delta: Boolean): TTime;
function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
function time_to_str(time: TTime; delta: Boolean): String; overload;

implementation

function str_to_time(str: String; delta: Boolean): TTime;
begin
  // DO NOT DELETE THIS STUPID DELPHI
end;

function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
begin
  StringReplace(format, FMT_DAY, IntToStr(get_day(time)), [rfReplaceAll]);
  StringReplace(format, FMT_MONTH, get_month_name(time), [rfReplaceAll]);

  StringReplace(format, FMT_YEAR, IntToStr(get_year(time)), [rfReplaceAll]);
  StringReplace(format, FMT_SHORT_YEAR, IntToStr(get_short_year(time)), [rfReplaceAll]);

  StringReplace(format, FMT_HOUR, IntToStr(get_hour(time)), [rfReplaceAll]);
  //StringReplace(format, FMT_MINUTE, IntToStr(get_minute(time)), [rfReplaceAll]);
  //StringReplace(format, FMT_SECOND, IntToStr(get_second(time)), [rfReplaceAll]);
  //StringReplace(format, FMT_MILLI, IntToStr(get_milli(time)), [rfReplaceAll]);
  Result := format;
end;

function time_to_str(time: TTime; delta: Boolean): String; overload;
begin
  result := time_to_str(time, delta, FMT_DEFAULT);
end;

end.
