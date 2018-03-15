000010******************************************************************
000011*   CopyBook for XAOUTFIL used by program XAPGMBT1
000020******************************************************************
000100 01 wsOutFilRecord.
000200    03 wsOutFilcarID     pic 9(09).
000300    03 wsOutFilmodelID   pic 9(09).
000400    03 wsOutFilcarName   pic x(15).
000500    03 wsOutFilcarModel  pic x(28).
000600    03 wsOutFilcarPrice  pic z.zzz.zz9b value zero.
000700    03 wsOutFilcarBHP    pic zzz9B      value zero.
000800    03 wsOutFilcarAccel  pic z9,99B     value zero.
000900    03 wsOutFilcarSpeed  pic zz9        value zero.
001000    03 filler            pic x(80)      value space.