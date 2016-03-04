col  MANAGER for a10                                                                                                                                                                                                      
select grantee, PRIVILEGE, MANAGER                                                                                                                                                                                        
  from (select GRANTEE, GRANTED_ROLE "PRIVILEGE", ADMIN_OPTION "MANAGER"                                                                                                                                                  
          from dba_role_privs                                                                                                                                                                                             
        union                                                                                                                                                                                                             
        select grantee, PRIVILEGE, ADMIN_OPTION "MANAGER"                                                                                                                                                                 
          from dba_sys_privs)                                                                                                                                                                                             
 where grantee not in ('SYS',                                                                                                                                                                                             
                       'SYSTEM',                                                                                                                                                                                          
                       'AQ_ADMINISTRATOR_ROLE',                                                                                                                                                                           
                       'CONNECT',                                                                                                                                                                                         
                       'CTXSYS',                                                                                                                                                                                          
                       'DBA',                                                                                                                                                                                             
                       'DBSNMP',                                                                                                                                                                                          
                       'DIP',                                                                                                                                                                                             
                       'DMSYS',                                                                                                                                                                                           
                       'EXECUTE_CATALOG_ROLE',                                                                                                                                                                            
                       'EXFSYS',                                                                                                                                                                                          
                       'EXP_FULL_DATABASE',                                                                                                                                                                               
                       'IMP_FULL_DATABASE',                                                                                                                                                                               
                       'JAVADEBUGPRIV',                                                                                                                                                                                   
                       'JAVASYSPRIV',                                                                                                                                                                                     
                       'LOGSTDBY_ADMINISTRATOR',                                                                                                                                                                          
                       'MDDATA',                                                                                                                                                                                          
                       'MDSYS',                                                                                                                                                                                           
                       'ANONYMOUS',                                                                                                                                                                                       
                       'MGMT_USER',                                                                                                                                                                                       
                       'MGMT_VIEW',                                                                                                                                                                                       
                       'OEM_ADVISOR',                                                                                                                                                                                     
                       'OEM_MONITOR',                                                                                                                                                                                     
                       'OLAPSYS',                                                                                                                                                                                         
                       'OLAP_DBA',                                                                                                                                                                                        
                       'OLAP_USER',                                                                                                                                                                                       
                       'ORACLE_OCM',                                                                                                                                                                                      
                       'ORDPLUGINS',                                                                                                                                                                                      
                       'ORDSYS',                                                                                                                                                                                          
                       'OUTLN',                                                                                                                                                                                           
                       'RECOVERY_CATALOG_OWNER',                                                                                                                                                                          
                       'RESOURCE',                                                                                                                                                                                        
                       'SCHEDULER_ADMIN',                                                                                                                                                                                 
                       'SELECT_CATALOG_ROLE',                                                                                                                                                                             
                       'SI_INFORMTN_SCHEMA',                                                                                                                                                                              
                       'SYSMAN',                                                                                                                                                                                          
                       'TSMSYS',                                                                                                                                                                                          
                       'WMSYS',                                                                                                                                                                                           
                       'XDB',                                                                                                                                                                                             
                       'XDBADMIN',                                                                                                                                                                                        
                       'SPATIAL_WFS_ADMIN_USR',                                                                                                                                                                           
                       'SPATIAL_CSW_ADMIN_USR',                                                                                                                                                                           
                       'OWBSYS',                                                                                                                                                                                          
                       'OWB$CLIENT',                                                                                                                                                                                      
                       'ORDDATA',                                                                                                                                                                                         
                       'HS_ADMIN_ROLE',                                                                                                                                                                                   
                       'FLOWS_FILES',                                                                                                                                                                                     
                       'DATAPUMP_IMP_FULL_DATABASE',                                                                                                                                                                      
                       'APEX_030200',                                                                                                                                                                                     
                       'APEX_PUBLIC_USER',                                                                                                                                                                                
                       'APPQOSSYS',                                                                                                                                                                                       
                       'DATAPUMP_EXP_FULL_DATABASE',                                                                                                                                                                      
                       'OWBSYS_AUDIT',                                                                                                                                                                                    
                       'SCOTT')                                                                                                                                                                                           
 order by user;
