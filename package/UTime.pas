unit UTime;

interface

uses SysUtils;

type
  TTime = LongInt;

const
  SECOND = 1000;
  MINUTE = SECOND * 60;
  HOUR = MINUTE * 60;
  DAY = HOUR * 24;
  YEAR = DAY * 365;
  //TTime=0 => 0.0.0000 00:00:00:0000
  FMT_DEFAULT = 'DD.MM.YYYY HH.MM.SS:mmmm';
  FMT_DAY = 'DD';
  FMT_MONTH = 'MM';
  FMT_YEAR = 'YYYY';
  FMT_SHORT_YEAR = 'YY';
  FMT_HOUR = 'HH';
  FMT_MINUTE = 'MM';
  FMT_SECOND = 'SS';
  FMT_MILLI = 'mmmm';
  MONTH_LENGTHS: Array[0..11] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30,
31);


function str_to_time(str: String; delta: Boolean);
function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;

function get_year(time: TTime): Integer;

implementation

function get_year(time: TTime): Integer;
begin
  Result:= time div YEAR;
end;

function get_day(time: TTime): Integer;
var
  TimeOfYear: TTime;
  DayOfYear: Integer;
  I: Integer;
begin
  TimeOfYear:= Time - get_year(time) * YEAR;
  Result:= TimeOfYear div DAY;
  for I:= 0 to 11 do
  begin
    Dec(Result, MONTH_LENGTHS[i]);
    if Result <= 0 then
    begin
      Inc(Result, MONTH_LENGTHS[i]);
      break;
    end;
  end;
end;

function get_month(time: TTime): Integer;
var
  TimeOfYear: TTime;
  DayOfYear: Integer;
  DayAcc: Integer;
begin
  TimeOfYear:= Time - get_year(time) * YEAR;
  DayOfYear:= TimeOfYear div DAY;
  DayAcc:= 0;
  Result:= 0;
  for Result:= 0 to 11 do
  begin
    Inc(DayAcc, MONTH_LENGTHS[i]);
    if DayOfYear <= DayAcc then
      break;
  end;
end;

function get_hour(time: TTime): Integer;
var
  TimeOfYear: TTime;
  I, TimeOfMonth: Integer;
begin
  TimeOfYear:= Time - get_year(Time) * YEAR;
  TimeOfMonth:= TimeOfYear;
  I:= 0;
  for I:= 0 to 11 do
  begin
    Dec(TimeOfMonth, MONTH_LENGTHS[i] * HOUR);
    if TimeOfMonth <= 0 then
    begin
      Inc(TimeOfMonth, MONTH_LENGTHS[i] * HOUR);
      break
    end;
  end;
  Result:= TimeOfMonth div DAY;
end;

function str_to_time(str: String; delta: Boolean);
begin
  //DO NOT DELETE THIS STUPID DELPHI
end;

function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
begin
  StringReplace(format, FMT_DAY, get_day(time));
  StringReplace(format, FMT_MONTH, get_month(time));

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
