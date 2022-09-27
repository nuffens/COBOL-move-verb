000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. MOVE-FEATURE-TEST.
000300 AUTHOR. AMBER OLSEN.
000400 DATE-WRITTEN. SEPTEMBER 20TH 2022.
000500 ENVIRONMENT DIVISION.

000600 DATA DIVISION.

000700 FILE SECTION.

000800 WORKING-STORAGE SECTION.
000805 01 SAMPLEDATA PIC X(10) VALUE "STUFF".
000810 01 JUSTLETTERS PIC AAA VALUE "ABC".
000815 01 JUSTNUMS PIC 9(4) VALUE 1234.
000820 01 SIGNEDINT PIC S9(4) VALUE -1234.
      *>BELOW, THE 'V' AFTER THE () MEANS DECIMAL PLACES 
000825 01 PAYCHECK PIC 9(4)V99 VALUE ZEROS.
000830

000835 01 CUSTOMER.
000840     02 IDENT PIC 9(3).
000845     02 CUSTOMNAME PIC X(20).
000850     02 DATEOFBIRTH.
000855         03 MOB PIC 99.
000860         03 DOB PIC 99.
000865         03 YOB PIC 9(4).

000870 01 NUM1 PIC 9 VALUE 5.
000875 01 NUM2 PIC 9 VALUE 4.
000880 01 NUM3 PIC 9 VALUE 2.
000885 01 ANS PIC S99V99 VALUE 0.
000890 01 REM PIC 9V99. 

000900 PROCEDURE DIVISION.
001000
001010 MOVE "MORE STUFF" TO SAMPLEDATA
001015 MOVE "123" TO SAMPLEDATA
001020 MOVE 123 TO SAMPLEDATA
001025 DISPLAY SAMPLEDATA
001030 DISPLAY PAYCHECK
001035 MOVE "001Bob Smith           09262022" TO CUSTOMER
001040 DISPLAY CUSTOMNAME
001045 DISPLAY DOB "/" MOB "/" YOB
001050 

002000 STOP RUN.
      *>PROGRAM NAME BELOW THIS LINE AT END OF "END PROGRAM"
      *>003000 END PROGRAM MOVE-FEATURE-TEST.
