unit UTime;

interface

type
  TTime = LongInt;

const
  SECOND: Int64 = 1;
  MINUTE: Int64 = 60;
  HOUR: Int64 = 60 * 60;
  DAY: Int64 = 60 * 60 * 24;
  YEAR: Int64 = 31536000;//60 * 60 * 24 * 365;
  //TTime=0 => 0.0.0000 00:00:00
  FMT_DEFAULT = 'DD.MM YYYY hh.mm.ss';
  FMT_DAY = 'DD';
  FMT_MONTH = 'MM';
  FMT_YEAR = 'YYYY';
  FMT_SHORT_YEAR = 'YY';
  FMT_HOUR = 'hh';
  FMT_MINUTE = 'mm';
  FMT_SECOND = 'ss';
  MONTH_LENGTHS: Array[0..11] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

function get_year(time: TTime): Integer;
function get_short_year(time: TTime): Integer;
function get_month(time: TTime): Integer;
function get_month_name(time: TTime): String;
function get_day(time: TTime): Integer;
function get_hour(time: TTime): Integer;

implementation

function get_year(time: TTime): Integer;
begin
  Result:= time div YEAR;
end;

function get_short_year(time: TTime): Integer;
begin
  Result:= get_year(time) mod 100;
end;

function get_month(time: TTime): Integer;
var
  TimeOfYear: TTime;
  DayOfYear: Integer;
  DayAcc: Integer;
  i: Integer;
begin
  TimeOfYear:= Time - get_year(time) * YEAR;
  DayOfYear:= TimeOfYear div DAY;
  DayAcc:= 0;
  Result:= 0;
  for Result:= 0 to 11 do
  begin
    Inc(DayAcc, MONTH_LENGTHS[Result]);
    if DayOfYear <= DayAcc then
      break;
  end;
end;

function get_month_name(time: TTime): String;
begin
  case get_month(time) of
    0: Result:= 'Jan';
    1: Result:= 'Feb';
    2: Result:= 'Mar';
    3: Result:= 'Apr';
    4: Result:= 'May';
    5: Result:= 'Jun';
    6: Result:= 'Jul';
    7: Result:= 'Aug';
    8: Result:= 'Sep';
    9: Result:= 'Oct';
    10: Result:= 'Nov';
    11: Result:= 'Dec';
    else Result:= 'Err';
  end;
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

end.
