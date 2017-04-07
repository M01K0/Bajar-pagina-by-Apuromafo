unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,WinInet, Winsock;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}


           {
function ObtenerIP: String(Parameters:string);
var
  hNet: HINTERNET;
  hUrl: HINTERNET;
  Buffer: array[0..15] of Char;
  BytesRead: DWORD;
begin
  Result := '';
  hNet := InternetOpen('agent', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if (hNet <> nil) then
  begin
    hUrl := InternetOpenUrl(hNet,Parameters, nil, 0, INTERNET_FLAG_RELOAD, 0);
    if (hUrl <> nil) then
    begin
      FillChar(Buffer,Sizeof(Buffer),0);
      if InternetReadFile(hUrl, @Buffer, sizeof(Buffer)-1, BytesRead) then
        // Aqui comprobamos que la direccion que nos devuelve tiene el formato correcto
        if inet_addr(@Buffer)<>INADDR_NONE then
          Result:= Buffer;
      InternetCloseHandle(hUrl);
    end;
    InternetCloseHandle(hNet);
  end;
end;
}
function WebGetData(const UserAgent: string; const URL: string): string;
var
  hInet: HINTERNET;
  hURL: HINTERNET;
  Buffer: array[0..1023] of AnsiChar;
  BufferLen: cardinal;
begin
  result := '';
  hInet := InternetOpen(PChar(UserAgent), INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if hInet = nil then RaiseLastOSError;
  try
    hURL := InternetOpenUrl(hInet, PChar(URL), nil, 0, 0, 0);
    if hURL = nil then RaiseLastOSError;
    try
      repeat
        if not InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen) then
          RaiseLastOSError;
        result := result + UTF8Decode(Copy(Buffer, 1, BufferLen))
      until BufferLen = 0;
    finally
      InternetCloseHandle(hURL);
    end;
  finally
    InternetCloseHandle(hInet);
  end;
end;
function GetIp: string;
var
  Buffer: array[0..127] of char;
  WSAData: TWSADATA;
  HostEnt: phostent;
begin
  Result:= '';
  FillChar(Buffer,Sizeof(Buffer),#0);
  if WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 then
  begin
    if GetHostName(@Buffer,Sizeof(Buffer)) = 0 then
    begin
      HostEnt:= gethostbyname(@Buffer);
      if HostEnt <> nil then
        Result:= String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
    end;
    WSACleanup;
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
Tabla: TStringList;
begin
Edit2.text:=GetIp;
Tabla.Create;
Tabla := TStringList.Create;
Tabla.Add(WebGetData('Apuromafo check', edit1.Text) )  ;
Tabla.SaveToFile('pagina.htm' );
Tabla.Free;
end;

end.
