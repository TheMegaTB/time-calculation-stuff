unit UTime;

interface

type
  TTime = LongInt;

const
  SECOND = 1000;
  MINUTE = SECOND * 60;
  HOUR = MINUTE * 60;
  DAY = HOUR * 24;
  YEAR = DAY * 365;
  //TTime=0 => 0.0.0000 00:00:00:0000
  DEFAULT_FORMAT = 'D.M.YYYY HH.MM.SS:mmmm';

function str_to_time(str: String; delta: Boolean);
function time_to_str(time: TTime; delta: Boolean);

function get_year(time: TTime): Integer;

implementation

function get_year(time: TTime): Integer;
begin
  time mod YEAR;
end;

function str_to_time(str: String; delta: Boolean);
begin
  //DO NOT DELETE THIS STUPID DELPHI
end;

function time_to_str(time: TTime; delta: Boolean);
begin
  //DO NOT DELETE THIS STUPID DELPHI
end;

end.
