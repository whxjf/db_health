-- ********************************************************************
-- * Copyright Notice   : (c)2015,2016 Peng Liu.
-- * Filename           : theme_main_tree.sql
-- * Author             : Peng Liu
-- * Original           : 20151117
-- * Last Update        : 20160520
-- * Description        : Theme about Directory tree
-- *                      Generate the navigation
-- *                      ...
-- * Usage              : be called by db_health_check.sql
-- ********************************************************************

REM display the directory for every entry
REM display list use shell script

@@script/tag/H1 "Main Report"

spool off
set markup html off spool off
HOST sh script/ul.sh "Wait Events Statistics" Tablespace Objects Statistics Security Redo "Rman Backup" Archive FlashBack ASM "System Parameter">>&report_file
spool &report_file append
set markup html on spool on                                                                                                                                                                                               
                                                                                                                                                                                                                          
REM display the to_top                                                                                                                                                                                                    
                                                                                                                                                                                                                          
@@script/tag/To_Top