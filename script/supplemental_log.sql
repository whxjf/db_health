col SUPPLEMENTAL_LOG_DATA_MIN for a30
col SUPPLEMENTAL_LOG_DATA_PK for a30
col SUPPLEMENTAL_LOG_DATA_UI for a30
col SUPPLEMENTAL_LOG_DATA_FK for a30
col SUPPLEMENTAL_LOG_DATA_ALL for a30
select flashback_on,
       SUPPLEMENTAL_LOG_DATA_MIN,
       SUPPLEMENTAL_LOG_DATA_PK,
       SUPPLEMENTAL_LOG_DATA_UI,
       SUPPLEMENTAL_LOG_DATA_FK,
       SUPPLEMENTAL_LOG_DATA_ALL
from v$database;
