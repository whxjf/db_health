select FDS.BEGIN_TIME,
       FDS.END_TIME,
       ROUND(FDS.FLASHBACK_DATA / 1024 / 1024 / 1024, 2) AS "FLASHBACK_DATA(GB)",
       ROUND(FDS.DB_DATA / 1024 / 1024 / 1024, 2) AS "DB_DATA(GB)",
       ROUND(FDS.REDO_DATA / 1024 / 1024 / 1024, 2) AS "REDO_DATA(GB)",
       ROUND(FDS.ESTIMATED_FLASHBACK_SIZE / 1024 / 1024 / 1024, 2) AS "ESTIMATED_FLASHBACK_SIZE(GB)"
  from v$flashback_database_stat FDS;
    
select FDL.OLDEST_FLASHBACK_SCN,
       FDL.OLDEST_FLASHBACK_TIME,
       FDL.RETENTION_TARGET,
       ROUND(FDL.FLASHBACK_SIZE / 1024 / 1024 / 1024, 2) AS "FLASHBACK_SIZE(GB)",
       ROUND(FDL.ESTIMATED_FLASHBACK_SIZE / 1024 / 1024 / 1024, 2) AS "ESTIMATED_FLASHBACK_SIZE(GB)"
  from v$flashback_database_log FDL;
