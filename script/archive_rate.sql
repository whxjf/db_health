SELECT *
  FROM (SELECT TO_CHAR(TRUNC(FIRST_TIME), 'Mon DD') "Date",                                                                                                                                                               
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '00', 1, 0)),
                       '9999') "00",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '01', 1, 0)),
                       '9999') "01",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '02', 1, 0)),
                       '9999') "02",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '03', 1, 0)),
                       '9999') "03",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '04', 1, 0)),
                       '9999') "04",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '05', 1, 0)),                                                                                                                                              
                       '9999') "05",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '06', 1, 0)),                                                                                                                                              
                       '9999') "06",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '07', 1, 0)),                                                                                                                                              
                       '9999') "07",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '08', 1, 0)),                                                                                                                                              
                       '9999') "08",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '09', 1, 0)),                                                                                                                                              
                       '9999') "09",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '10', 1, 0)),                                                                                                                                              
                       '9999') "10",
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '11', 1, 0)),                                                                                                                                              
                       '9999') "11",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '12', 1, 0)),                                                                                                                                              
                       '9999') "12",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '13', 1, 0)),                                                                                                                                              
                       '9999') "13",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '14', 1, 0)),                                                                                                                                              
                       '9999') "14",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '15', 1, 0)),                                                                                                                                              
                       '9999') "15",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '16', 1, 0)),                                                                                                                                              
                       '9999') "16",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '17', 1, 0)),                                                                                                                                              
                       '9999') "17",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '18', 1, 0)),                                                                                                                                              
                       '9999') "18",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '19', 1, 0)),                                                                                                                                              
                       '9999') "19",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '20', 1, 0)),                                                                                                                                              
                       '9999') "20",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '21', 1, 0)),                                                                                                                                              
                       '9999') "21",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '22', 1, 0)),                                                                                                                                              
                       '9999') "22",                                                                                                                                                                                      
               TO_CHAR(SUM(DECODE(TO_CHAR(FIRST_TIME, 'HH24'), '23', 1, 0)),                                                                                                                                              
                       '9999') "23"                                                                                                                                                                                       
          FROM V$LOG_HISTORY                                                                                                                                                                                              
         GROUP BY TRUNC(FIRST_TIME)                                                                                                                                                                                       
         ORDER BY TRUNC(FIRST_TIME) DESC)                                                                                                                                                                                 
 WHERE ROWNUM < 10;
