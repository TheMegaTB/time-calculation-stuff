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

implementation

function get_year(time: TTime): Integer;
begin
  time mod YEAR;
end;

end.
