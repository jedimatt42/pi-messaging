100 CALL CLEAR
110 PRINT "Asking TIPI..."
120 OPEN #1:"PI.STATUS",DISPLAY,VARIABLE 80,INPUT
130 PRINT "TIPI Stats:"
140 PRINT "-----------"
150 INPUT #1:L$
160 PRINT L$
170 IF EOF(1) = 0 THEN 150
180 PRINT "-----------"
190 CLOSE #1

