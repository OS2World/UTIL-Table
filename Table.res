� �� 0�   d   Tablef   o   p   q   r   s 	  t   u   v   y   z   {   h   g   �   �   Result� 	  �   � 	  �   � 	  �   � 	  �   �   �   �  WriteMe�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  ��� 0�+  Strings�c2bin = c2bin||' '||bchar
c2dec = c2dec||' '||dchar
c2hex = c2hex||' '||hchar
c2asc = c2asc||achar

IF chars2conv > 100 & RIGHT(i,1) = 0 THEN DO
    CALL Table.C199.Text 'Conversion - character: '||i||'/ '||chars2conv
END

Result1IF myerr = 0 THEN DO
    CALL Result.Open
END
IsErr�PARSE ARG errtype errchar
myerr = 1
IF RxMessageBox(errchar||' is not valid '||errtype||' character.'||'0D'x||'Please enter correct values.',,,'WARNING') = 1 THEN DO
    CALL Table.C115.Text ''
ENDShowWriteMe�
CALL WriteMe.Position rx, ry, rxs, rys
CALL WriteMe.C401.Position rfl*2, rfb*2, (rxs-rfl*5)%2, step+rfb
CALL WriteMe.C402.Position rfl*3+(rxs-rfl*5)%2, rfb*2, (rxs-rfl*5)%2, step+rfb
x420 = rfl
y420 = rfb*4+step
xs420 = rxs-rfl-rfr
ys420 = (rys-step-rft-rfb*6)%2
CALL WriteMe.C420.Position x420, y420, xs420, ys420
CALL WriteMe.C421.Position x420+rfb, y420+rfb+step*3, xs420-rfl-rfr, step
CALL WriteMe.C422.Position x420+rfb, y420+rfb+step*2, xs420-rfl-rfr, step
CALL WriteMe.C423.Position x420+rfb, y420+rfb+step, xs420-rfl-rfr, step
CALL WriteMe.C424.Position x420+rfb, y420+rfb, xs420-rfl-rfr, step
x410 = rfl
y410 = y420+ys420
xs410 = rxs-rfl-rfr
ys410 = rys-step-rft-rfb*4-ys420
CALL WriteMe.C410.Position x410, y410, xs410, ys410
CALL WriteMe.C411.Position x410+rfb, y410+step*3+rfb*2, (rxs-rfl*5)%2, step
CALL WriteMe.C412.Position rfl*3+(rxs-rfl*5)%2, y410+step*3+rfb*2, (rxs-rfl*5)%2, step
CALL WriteMe.C413.Position x410+rfb, y410+step*2+rfb, (rxs-rfl*5)%2, step
CALL WriteMe.C414.Position rfl*3+(rxs-rfl*5)%2, y410+step*2+rfb, step*2, step
CALL WriteMe.C415.Position rfl*3+(rxs-rfl*5)%2+step*2, y410+step*2+rfb, (rxs-rfl*5)%2-step*2, step
CALL WriteMe.C416.Position x410+rfb, y410+step+rfb, rxs-rfl*2-rfr*2, step
CALL WriteMe.C417.Position x410+rfb, y410+rfb, rxs-rfl*2-rfr*2, step
ShowResult�rx = tabx
ry = taby+step+rfb*2
rxs = tabxs
rys = tabys-step-rfb*2
strw = rxs*10%13
CALL Result.Position rx, ry, rxs, rys
CALL Result.C209.Position rfl*2, rfb*2, (rxs-rfl*5)%2, step
CALL Result.C210.Position rfl*3+(rxs-rfl*5)%2, rfb*2, (rxs-rfl*5)%2, step
x204 = rfl*2
y204 = rfb*3+step
xs204 = strw
ys204 = step*2-rfb*3
CALL Result.C204.Position x204, y204, xs204, ys204
CALL Result.C214.Position rfl*3+strw, y204, rxs-strw-rfl*5, ys204
x203 = rfl*2
y203 = rfb*4+step+ys204
xs203 = strw
ys203 = step*2
CALL Result.C203.Position x203, y203, xs203, ys203
CALL Result.C213.Position rfl*3+strw, y203, rxs-strw-rfl*5, ys203
x202 = rfl*2
y202 = rfb*5+step+ys204+ys203
xs202 = strw
ys202 = step*3+rfb
CALL Result.C202.Position x202, y202, xs202, ys202
CALL Result.C212.Position rfl*3+strw, y202, rxs-strw-rfl*5, ys202
x201 = rfl*2
y201 = rfb*6+step+ys204+ys203+ys202
xs201 = strw
ys201 = rys-rft-ys202-ys203-ys204-rfb*7-step
CALL Result.C201.Position x201, y201, xs201, ys201
CALL Result.C211.Position rfl*3+strw, y201, rxs-strw-rfl*5, ys201	ShowTable�tabx = (cx-tabxs)%2
taby = (cy-tabys)%2
CALL Table.Position tabx, taby, tabxs, tabys
PARSE VALUE TABLE.Frame() WITH tfl tfr tfb tft
CALL Table.C199.Position tfl, tfb, tabxs*4%5, step+tfb
x104 = tfl
y104 = tfb*2+step
xs104 = tabxs*6%11
ys104 = tabys-tfb*2-tft-step
CALL Table.C104.Position x104, y104, xs104, ys104
CALL Table.C102.Position x104+tfl, y104+tfb, xs104-tfl-tfr, ys104-tfb*2-step
x103 = tfl+xs104
y103 = tfb*2+step
xs103 = tabxs-xs104-tfl-tfr
ys103 = tabys-tfb*2-tft-step
CALL Table.C103.Position x103, y103, xs103, ys103
CALL Table.C111.Position x103+tfl, y103+ys103-step-tfb*2, (xs103-tfl*2)%4, step
CALL Table.C112.Position x103+tfl+(xs103-tfl*2)%4, y103+ys103-step-tfb*2, (xs103-tfl*2)%4, step
CALL Table.C113.Position x103+tfl+((xs103-tfl*2)*2)%4, y103+ys103-step-tfb*2, (xs103-tfl*2)%4, step
CALL Table.C114.Position x103+tfl+((xs103-tfl*2)*3)%4, y103+ys103-step-tfb*2, (xs103-tfl*2)%4, step
CALL Table.C115.Position x103+tfl, y103+step+tfb*3, xs103-tfl-tfr, ys103-step*3
CALL Table.C116.Position x103+tfl, y103+tfb, (xs103-tfl*4)%3, step+tfb
CALL Table.C117.Position x103+tfl*2+(xs103-tfl*4)%3, y103+tfb, (xs103-tfl*4)%3, step+tfb
CALL Table.C118.Position x103+tfl*3+((xs103-tfl*4)*2)%3, y103+tfb, (xs103-tfl*4)%3, step+tfb

CALL Table.C199.Position tfl, tfb, xs104, step+tfb
CALL Table.C121.Position x103, tfb, xs103%3, step+tfb
CALL Table.C122.Position x103+xs103%3, tfb, xs103%3, step+tfb
CALL Table.C123.Position x103+(xs103*2)%3, tfb, xs103%3, step+tfbLoadCfg�
IF RxFuncQuery('SysLoadFuncs') THEN DO
    CALL RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
    CALL SysLoadFuncs
END
progname = 'Table 1.11'
propFont = "9.WarpSans"
monoFont = "10.System VIO"
oldFont = Table.Font(propFont)
oldFont = Table.C102.Font(monoFont)
oldFont = Table.C104.Font(monoFont)
oldFont = Table.C115.Font(monoFont)
ishelp = 0
valbin = '01'
valdec = '0123456789'
valhex = '0123456789ABCDEFabcdef'
tabxs = 400
tabys = 300
step = 21

'@DEL Table_CP.txt'
'@CHCP > Table_CP.txt'
rc = STREAM('Table_CP.txt',"c","OPEN READ")
selpage = LINEIN('Table_CP.txt',1,1)
prepage =  LINEIN('Table_CP.txt')
rc = STREAM('Table_CP.txt',"c","CLOSE")
'@DEL Table_CP.txt'

selpage = STRIP(selpage)
thispage = WORD(selpage,WORDS(selpage))
prepage = SPACE(STRIP(TRANSLATE(SUBSTR(prepage,POS(':',prepage)+1), ,',')),1)
CALL Table.C121.Text 'Select '||selpage1
selpage1 = thispage
IF WORDS(prepage) > 1 THEN DO
    selpage1 = WORD(prepage,1)
    selpage2 = WORD(prepage,2)
    CALL Table.C121.Show
    SELECT
	WHEN selpage1 = thispage THEN CALL Table.C121.Text selpage2
	WHEN selpage2 = thispage THEN CALL Table.C121.Text selpage1
	OTHERWISE NOP
    END
    CALL Table.C121.Hint 'Select code page '||Table.C121.Text()
END
CALL Table.Text progname||',  '||selpage||', Prepared: '||prepageWriteCol�myFile = WriteMe.C412.Text()
myWidth = WriteMe.C414.Text()
IF DATATYPE(myWidth)<>'NUM' THEN DO
    myWidth = 80
END
recNo = WriteMe.C416.Select()
areSpaces = WriteMe.C417.Select()
'del '||myFile
writeLine = 0
cols = 0
binLine = ''
decLine = ''
hexLine = ''
ascLine = ''
ascCols = 1
binCols = 9
decCols = 4
hexCols = 3
binText = Result.C201.Text()
decText = Result.C202.Text()
hexText = Result.C203.Text()
IF areSpaces = 0 THEN DO
    binCols = 8
    decCols = 3
    hexCols = 2
    binText = SPACE(binText,0)
    decText = SPACE(decText,0)
    hexText = SPACE(hexText,0)
END
ascText = TRANSLATE(Result.C204.Text(),'  ','0D0A'x)
myWidth = myWidth - 1

IF WriteMe.C421.Select() = 1 THEN DO
    cols = cols + binCols
END
IF WriteMe.C422.Select() = 1 THEN DO
    cols = cols + decCols
END
IF WriteMe.C423.Select() = 1 THEN DO
    cols = cols + hexCols
END
IF WriteMe.C424.Select() = 1 THEN DO
    cols = cols + ascCols
END
IF areSpaces = 1 THEN DO
    myWidth = myWidth - 7
END

mychars = myWidth % cols
binLen = mychars * binCols
decLen = mychars * decCols
hexLen = mychars * hexCols
ascLen = mychars * ascCols

rc = STREAM(myfile,"c","OPEN")
myText = 'Conversion result, generated with '||progname||' on '||DATE()||' at '||TIME()
CALL LINEOUT myFile,myText
CALL LINEOUT myFile,' '

myTxt = ''
IF WriteMe.C421.Select() = 1 THEN DO
    myTxt = myTxt||LEFT(' BIN',binLen+1)
END
IF WriteMe.C422.Select() = 1 THEN DO
    myTxt = myTxt||LEFT(' DEC',decLen+1)
END
IF WriteMe.C423.Select() = 1 THEN DO
    myTxt = myTxt||LEFT(' HEX',hexLen+1)
END
IF WriteMe.C424.Select() = 1 THEN DO
     myTxt = myTxt||LEFT(' ASC',ascLen)
END
IF recNo = 1 THEN DO
     myText = '  Chars'||myTxt
END
CALL LINEOUT myFile,myText

DO i = 1 TO LENGTH(ascText) BY mychars
    binPart = i*binCols-binCols+1
    decPart = i*decCols-decCols+1
    hexPart = i*hexCols-hexCols+1
    ascPart = i*ascCols
    endchar = i + mychars - 1
    IF endchar > LENGTH(ascText) THEN DO
	endchar = LENGTH(ascText)
    END
    statLine = RIGHT(i,3)||'-'||RIGHT(endchar,3)
    IF WriteMe.C421.Select() = 1 THEN DO
	binLine = ' '||LEFT(SUBSTR(binText,binPart,binLen),binLen)
    END
    IF WriteMe.C422.Select() = 1 THEN DO
	decLine = ' '||LEFT(SUBSTR(decText,decPart,decLen),decLen)
    END
    IF WriteMe.C423.Select() = 1 THEN DO
	hexLine = ' '||LEFT(SUBSTR(hexText,hexPart,hexLen),hexLen)
    END
    IF WriteMe.C424.Select() = 1 THEN DO
	ascLine = ' '||LEFT(SUBSTR(ascText,ascPart,ascLen),ascLen)
    END
    myText = binLine||decLine||hexLine||ascLine
    IF recNo = 1 THEN DO
	myText = statLine||myText
    END
    CALL LINEOUT myFile,myText
    writeLine = writeLine + 1
    IF RIGHT(writeLine,1) = '0' THEN DO
	CALL Table.C199.Text 'Writing line: '||writeLine
    END
END
CALL LINEOUT myFile,' '
CALL LINEOUT myFile
rc = STREAM(myfile,"c","CLOSE")
dummy = BEEP(400,150)
IF RxMessageBox(DIRECTORY()||'\'||myFile||'0D0A'x||'To view file with OS/2 System editor press OK. To return to program press Cancel.','Result saved to:','OKCANCEL','INFORMATION') = 1 THEN DO
    'START /F E.exe '||DIRECTORY()||'\'||myFile
END
ConvertASC�asc2conv = Table.C115.Text()
chars2conv = LENGTH(asc2conv)
DO i = 1 TO chars2conv
    achar = SUBSTR(asc2conv,i,1)
    hchar = RIGHT(C2X(achar),2,'0')
    bchar = RIGHT(X2B(hchar),8,'0')
    dchar = RIGHT(X2D(hchar),3,'0')
    CALL Strings
END
asc2conv = ''
CALL Result

ConvertHEX�errtype = 'HEX'
hex2conv = Table.C115.Text()
chars2conv = WORDS(hex2conv)
DO i = 1 TO chars2conv
    hchar = WORD(hex2conv,i)
    IF LENGTH(hchar) > 2 THEN DO
	hex2conv = ''
	CALL IsErr errtype hchar
	LEAVE
    END
    hchar = RIGHT(hchar,2,'0')
    DO j = 1 TO LENGTH(hchar)
	x = SUBSTR(hchar,j,1)
	IF POS(x,valhex) = 0 THEN DO
	    hex2conv = ''
	    CALL IsErr errtype hchar
	    LEAVE
	END
    END
    IF myerr = 0 THEN DO
	bchar = RIGHT(X2B(hchar),8,'0')
	dchar = RIGHT(X2D(hchar),3,'0')
	achar = X2C(hchar)
	CALL Strings
    END
END
hex2conv = ''
CALL Result

ConvertDEC�errtype = 'DEC'
dec2conv = Table.C115.Text()
chars2conv = WORDS(dec2conv)
DO i = 1 TO chars2conv
    dchar = WORD(dec2conv,i)
    IF LENGTH(dchar) > 3 THEN DO
	dec2conv = ''
	CALL IsErr errtype dchar
	LEAVE
    END
    dchar = RIGHT(dchar,3,'0')
    DO j = 1 TO LENGTH(dchar)
	x = SUBSTR(dchar,j,1)
	IF POS(x,valdec) = 0 THEN DO
	    dec2conv = ''
	    CALL IsErr errtype dchar
	    LEAVE
	END
    END
    IF  dchar > 255 THEN DO
	dec2conv = ''
	CALL IsErr dchar
	LEAVE
    END
    IF myerr = 0 THEN DO
	hchar = D2X(dchar,2)
	bchar = RIGHT(X2B(hchar),8,'0')
	achar = X2C(hchar)
	CALL Strings
    END
END
dec2conv = ''
CALL Result
ConvertBIN�errtype = 'BIN'
bin2conv = Table.C115.Text()
chars2conv = WORDS(bin2conv)
DO i = 1 TO chars2conv
    bchar = WORD(bin2conv,i)
    IF LENGTH(bchar) > 8 THEN DO
	bin2conv = ''
	CALL IsErr errtype bchar
	LEAVE
    END
    bchar = RIGHT(bchar,8,'0')
    DO j = 1 TO LENGTH(bchar)
	x = SUBSTR(bchar,j,1)
	IF POS(x,valbin) = 0 THEN DO
	    bin2conv = ''
	    CALL IsErr errtype bchar
	    LEAVE
	END
    END
    IF myerr = 0 THEN DO
	hchar = RIGHT(B2X(bchar),2,'0')
	dchar = RIGHT(X2D(hchar),3,'0')
	achar = X2C(hchar)
	CALL Strings
    END
END
bin2conv = ''
CALL Result�� �d 0V  V  �  ��         
 ��  s W T� d ���         � �  � v f ���        s �� � $ 
 o ����        w �� � $ 
 p ����        { �� $ 
 q ����         �'� $ 
 r ����      
   �' �� ! � e s ���        �  ��  *  t ���        �  ��  *  u ���        �  �" *  v ���        �   �  *  y ����           ��  *  z ����          �# *  { 
��     & - 5 �  � � h ����     F  M % ��  � � g ����     N  U ` �  �  � ����Table 1.11   � q      i   8.Courier                                                                                                BIN DEC HEX ASC              Paste                      Delete                      Convert                      CP Help Exit                      CANVAS BINARY    DEC  HEX ASCII CANVAS  CANVAS  ���d 0$  �d Move7PARSE VALUE Table.Position() WITH tabx taby tabxs tabysInit�PARSE ARG isclip
PARSE VALUE ScreenSize() WITH cx cy
CALL LoadCfg
CALL ShowTable

CALL C199.IsDefault('C')
CALL C123.Hint 'Leave program '||progname
CALL C102.Add '00000000'||'  '||'000'||'  '||'00'||'  '||'NULL'
DO i = 1 TO 254
    CALL C102.Add TRANSLATE(FORMAT(X2B(D2X(i)),8,0),'0',' ')||'  '||TRANSLATE(FORMAT(i,3,0),'0',' ')||'  '||D2X(i,2)||'  '||X2C(D2X(i))
END
CALL C102.Add '11111111'||'  '||'255'||'  '||'FF'||'  '||'BLANK'

CALL Table.Show
CALL C102.Select 1
CALL C114.Select 1
IF isclip = 1 THEN DO
    CALL C115.Text Clipboard()
END
CALL C115.Focus�� ShowMenu'START /F E.exe Table.man'�{ ClickExit  �z Click'View.exe Table.inf Manual'�y Click�isclip = 0
IF LENGTH(C115.Text()) > 0 THEN DO
    isclip = 1
    CALL Clipboard C115.Text()
END
CALL Table.Hide
'@START /B /C /MIN TableCP.cmd '||Table.C121.Text()||' '||isclip
Exit�v Click�myerr = 0
c2bin = ''
c2dec = ''
c2hex = ''
c2asc = ''

IF LENGTH(C115.Text()) = 0 THEN DO
    IF RxMessageBox('Nothing to convert. Enter string to convert and try again!',,,'ERROR') = 1 THEN DO
    END
END
IF LENGTH(C115.Text()) > 0 THEN DO
    SELECT
	WHEN C111.Select() = 1 THEN CALL ConvertBIN
	WHEN C112.Select() = 1 THEN CALL ConvertDEC
	WHEN C113.Select() = 1 THEN CALL ConvertHEX
	WHEN C114.Select() = 1 THEN CALL ConvertASC
	OTHERWISE NOP
    END
END

  �u ClickCALL C115.Text ''�t ClickCALL C115.Text Clipboard()�f Enter?CALL Clipboard X2C(D2X(C102.Select()-1))
dummy = BEEP(450,100)����d 0O  � (c) Goran Ivankovic, 1999-2000$v Convert this string to other formatsu Delete this stringt Paste string from Clipboards Enter text to convert herer Select ASCII format as source#q Select HEXADECIMAL format as sourcep Select DECIMAL format as sourceo Select BINARY format as source*f DoubleClick - copy ASCII char to Clipboard�� �� 0    �  ��    
       X�  s i S� � ��Y      
   ] � g � " � ^��       
 �  � g J " � ���      
   �  � F �  � ���       
   � F J  � ��      
   -  � * �  � .��       
 z  � * J  � ���      
   �  �  �  � ���        �  �  J  � ���        � �  �  � ���        � ��  �  � ��     H                         (   8.Courier                               BIN  Clip              H                         (   8.Courier                               DEC  Clip              H                         (   8.Courier                               HEX  Clip                                    ASCII  Clip             Write result to file             Back to program             ���� 0K  �� Init�CALL Result.Text progname||' - Conversion result'
PARSE VALUE Result.Frame() WITH rfl rfb rfr rft 
CALL ShowResult

CALL C201.Font monoFont
CALL C202.Font monoFont
CALL C203.Font monoFont
CALL C204.Font monoFont
CALL C201.Text STRIP(c2bin)
CALL C202.Text STRIP(c2dec)
CALL C203.Text STRIP(c2hex)
c2asc = TRANSLATE(c2asc,' ','00'x)
CALL C204.Text c2asc
CALL Table.Disable
CALL Result.Show�� Click�c2bin = ''
c2dec = ''
c2hex = ''
c2asc = ''
CALL C201.Text ''
CALL C202.Text ''
CALL C203.Text ''
CALL C204.Text ''
CALL Result.Close
CALL Table.Enable�� ClickCALL WriteMe.Open�� Click+CALL Clipboard c2asc
dummy = BEEP(500,100)�� Click2CALL Clipboard STRIP(c2hex)
dummy = BEEP(500,100)�� Click2CALL Clipboard STRIP(c2dec)
dummy = BEEP(500,100)�� Click2CALL Clipboard STRIP(c2bin)
dummy = BEEP(500,100)����� 0�  � Return to program� Write result to file table.txt(� Copy result in ASCII format to Clipboard!� Conversion result in ASCII format.� Copy result in HEXADECIMAL format to Clipboard'� Conversion result in HEXADECIMAL format*� Copy result in DECIMAL format to Clipboard#� Conversion result in DECIMAL format)� Copy result in BINARY format to Clipboard"� Conversion result in BINARY format�� ��0f  f  �  ��           ��  z ] P� ����       	 �� | 6  �����        � � p 6  �����       	 
 �� } V 
 �����         �� q  	 ���       
  �� p 6  �����       # * � c / �����       ( N � U / �����        w � 9 / �����         � � - / �����       $ � � ! / �����        � �  / �����        �  �N  6  ���        $  ��  6  �+��     ; B % � Q B@ �����     Q X % �  B@ �����    File name Column width table.txt 80       characters Display character numbers in output Display spaces in BIN DEC and HEX string Include BINARY format in output Include DECIMAL format in output Include HEXADECIMAL format in output Include ASCII format in output Write conversion result             Cancel             CANVAS Output options CANVAS Select format ����0(  ��Init�CALL WriteMe.Text progname||' - Write result to file'
CALL ShowWriteMe

CALL C416.Select 1
CALL C417.Select 1
CALL C421.Select 1
CALL C422.Select 1
CALL C423.Select 1
CALL C424.Select 1

CALL WriteMe.Show��ClickCALL WriteMe.Close��Click!CALL WriteCol
CALL WriteMe.Close�