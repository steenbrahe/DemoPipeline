000010 cbl test                                                         00001000
000100 Identification division.                                         00010000
000200 Program-id.   XaRisCal.                                          00020000
000300 Author.       Kim Holm Christensen.                              00030000
000400 environment division.                                            00040000
000500 Input-Output section.                                            00050000
000600 File-control.                                                    00060000
000700 Data Division.                                                   00070000
000800 File Section.                                                    00080000
000900 Working-Storage Section.                                         00090000
002300 linkage section.                                                 00230000
002301                                                                  00230100
002302 01 Import.                                                       00230200
002303    03 Customer.                                                  00230300
002304       05 Age                    pic 9(03).                       00230400
002305                                                                  00230500
002306 01 Export.                                                       00230600
002307    03 Risc                      pic 9(03).                       00230700
002500                                                                  00250000
002600 Procedure division using Import Export.                          00260000
002700                                                                  00270000
002900 Main section.                                                    00290000
003003                                                                  00300300
003004     Perform CalculateRisc.                                       00300400
003005                                                                  00300500
003006     Goback.                                                      00300600
003007                                                                  00300700
003008 CalculateRisc Section.                                           00300800
003009                                                                  00300900
003010     Move zero to Risc.                                           00301000
003011                                                                  00301100
003012     if Age < 18                                                  00301200
003020        compute Risc = Age * +2                                   00302000
003021        end-if                                                    00302100
003022                                                                  00302200
003040     if Age >= 18 and Age < 50                                    00304000
003041        compute Risc = Age * +3                                   00304100
003042        end-if                                                    00304200
003043                                                                  00304300
003044     if Age > 50                                                  00304400
003045        compute Risc = Age * +4                                   00304500
003090        end-if                                                    00309000
003091     .                                                            00309100