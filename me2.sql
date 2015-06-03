DECLARE
  TYPE keys_t IS TABLE OF VARCHAR2(50);
  keys keys_t := keys_t(
    'ACTION',
    'AUDITED_CURSORID',
    'AUTHENTICATED_IDENTITY',
    'AUTHENTICATION_DATA',
    'AUTHENTICATION_METHOD',
    'AUTHENTICATION_TYPE',
    'BG_JOB_ID',
    'CLIENT_IDENTIFIER',
    'CLIENT_INFO',
    'CURRENT_BIND',
    'CURRENT_SCHEMA',
    'CURRENT_SCHEMAID',
    'CURRENT_SQL',
    'CURRENT_SQL_LENGTH',
    'CURRENT_USER',
    'CURRENT_USERID',
    'DB_DOMAIN',
    'DB_NAME',
    'DB_UNIQUE_NAME',
    'ENTRYID',
    'ENTERPRISE_IDENTITY',
    'EXTERNAL_NAME',
    'FG_JOB_ID',
    'GLOBAL_CONTEXT_MEMORY',
    'GLOBAL_UID',
    'HOST',
    'IDENTIFICATION_TYPE',
    'INSTANCE',
    'INSTANCE_NAME',
    'IP_ADDRESS',
    'ISDBA',
    'LANG',
    'LANGUAGE',
    'MODULE',
    'NETWORK_PROTOCOL',
    'NLS_CALENDAR',
    'NLS_CURRENCY',
    'NLS_DATE_FORMAT',
    'NLS_DATE_LANGUAGE',
    'NLS_SORT',
    'NLS_TERRITORY',
    'OS_USER',
    'POLICY_INVOKER',
    'PROXY_ENTERPRISE_IDENTITY',
    'PROXY_GLOBAL_UID',
    'PROXY_USER',
    'PROXY_USERID',
    'SERVER_HOST',
    'SERVICE_NAME',
    'SESSION_USER',
    'SESSION_USERID',
    'SESSIONID',
    'SID',
    'STATEMENTID',
    'TERMINAL'
   );
BEGIN
  DBMS_OUTPUT.PUT_LINE(RPAD('-', 80, '-'));
  FOR i IN keys.FIRST..keys.LAST LOOP
    BEGIN
      DBMS_OUTPUT.PUT_LINE(RPAD(keys(i), 30, '.') || ': ' || SYS_CONTEXT('USERENV', keys(i)));
    EXCEPTION
      WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(RPAD(keys(i), 30, '.') || ': ' || '(n/a)');
    END;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(RPAD('-', 80, '-'));
END;
/