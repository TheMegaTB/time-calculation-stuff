unit UConv;

interface

uses UTime, SysUtils, System.Character;

function str_to_time(str: String; DefaultYear: Integer; delta: Boolean): TTime;
function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
function time_to_str(time: TTime; delta: Boolean): String; overload;

const
  FMT_DEFAULT = 'DD.MM.YYYY hh:mm:ss';
  FMT_DAY = 'DD';
  FMT_MONTH = 'MM';
  FMT_YEAR = 'YYYY';
  FMT_SHORT_YEAR = 'YY';
  FMT_HOUR = 'hh';
  FMT_MINUTE = 'mm';
  FMT_SECOND = 'ss';
  FMT_MILLI = 'mmmm';
 

implementation

{ This function is well-defined to work with input strings of the formats:
  "DD.MM.YYYY hh:mm:ss", "DD.MM.YYYY", "hh:mm:ss", "DD.MM", "hh:mm".
  Other formats might work out, too, but are not intended.
  The semicolon or dot is needed to indentify the meaning of the numbers. }
function str_to_time(str: String; DefaultYear: Integer; delta: Boolean): TTime;
var
  NumberStart: Integer;
  I, N: Integer;
  ColonNumbers, DottedNumbers: Array of Integer;
  LastNumberWasDotted: Boolean;

  Day, Month, Year, Hour, Minute, Second: Integer;
begin
  { So that the for loop will end with the *exclusive* end of the last number }
  str:= str + ' ';
  SetLength(DottedNumbers, 0);
  NumberStart:= -1;
  i:=1;
  while I <= Length(str) do
  begin
    if (NumberStart = -1) and IsDigit(str[I]) then
      NumberStart:= I;
    if (NumberStart <> -1) and (not IsDigit(str[I])) then
    begin
      N:= StrToInt(Copy(str, NumberStart, I - NumberStart));
      NumberStart:= -1;

      if str[I] = '.' then
      begin
        SetLength(DottedNumbers, Length(DottedNumbers) + 1);
        DottedNumbers[High(DottedNumbers)]:= N;
        LastNumberWasDotted:= True;
      end
      else if str[I] = ':' then
      begin
        SetLength(ColonNumbers, Length(ColonNumbers) + 1);
        ColonNumbers[High(ColonNumbers)]:= N;
        LastNumberWasDotted:= False;
      end
      else
      begin
        { Let's just pretend the information is there... }
        if LastNumberWasDotted
          then str[I]:= '.'
          else str[I]:= ':';
        Dec(I, 1);
      end;
    end;
    Inc(i);
  end; 

  if Length(ColonNumbers) > 0 then
    Day:= ColonNumbers[0]
  else
    Day:= 1;
  if Length(ColonNumbers) > 1 then
    Month:= ColonNumbers[1]
  else
    Month:= 1;
  if Length(ColonNumbers) > 2 then
    Year:= ColonNumbers[2]
  else if Length(ColonNumbers) <> 0 then
    Year:= DefaultYear
  else 
    Year:= 0; { If there is no single Date data, do not add a year! }
  if Length(DottedNumbers) > 0 then
    Hour:= DottedNumbers[0]
  else 
    Hour:= 0;
  if Length(DottedNumbers) > 1 then
    Minute:= DottedNumbers[1]
  else 
    Minute:= 0;
  if Length(DottedNumbers) > 2 then
    Second:= DottedNumbers[2]
  else 
    Second:= 0;

  Result:= Day * DAY + MONTH_LENGTHS[Month] * DAY + Year * YEAR + Hour * HOUR + Minute * MINUTE + Second * SECOND; 
end;


function time_to_str(time: TTime; delta: Boolean; format: String): String; overload;
var
  tmp_string: String;
begin
  tmp_string := StringReplace(format, FMT_DAY, IntToStr(get_day(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_MONTH, get_month_name(time), [rfReplaceAll]);

  tmp_string := StringReplace(tmp_string, FMT_YEAR, IntToStr(get_year(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_SHORT_YEAR, IntToStr(get_short_year(time)), [rfReplaceAll]);

  tmp_string := StringReplace(tmp_string, FMT_HOUR, IntToStr(get_hour(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_MINUTE, IntToStr(get_minute(time)), [rfReplaceAll]);
  tmp_string := StringReplace(tmp_string, FMT_SECOND, IntToStr(get_second(time)), [rfReplaceAll]);
  Result := tmp_string;
end;

function time_to_str(time: TTime; delta: Boolean): String; overload;
begin
  result := time_to_str(time, delta, FMT_DEFAULT);
end;

end.
