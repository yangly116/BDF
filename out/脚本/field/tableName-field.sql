--�����ֶ�
declare
  cnt integer;
begin
	select count(0)
      into cnt	
	  from user_tab_columns a
	  where a.Table_name = upper('tableName')
	  and a.COLUMN_NAME in(
	  upper('RECE_CNAPS'),
	  upper('URGENT_FLAG'),
	  upper('PERSONALFLAG'),
	  upper('CREATOR'),
	  upper('CREATE_TIME'),
	  upper('TEXTVALUE1'),
	  upper('TEXTVALUE2'),
	  upper('TEXTVALUE3'),
	  upper('TEXTVALUE4'),
	  upper('TEXTVALUE5'),
	  upper('NUMBERVALUE1'),
	  upper('NUMBERVALUE3'),
	  upper('DATEVALUE1'),
	  upper('DATEVALUE2'),
	  upper('DATEVALUE3')
);	   
    if cnt = 0 then
	   execute immediate 'ALTER TABLE tableName ADD RECE_CNAPS NVARCHAR2(12) ';
       execute immediate 'comment on column tableName.RECE_CNAPS is  ''�տ������CNAPS��:������к�''';
	   execute immediate 'ALTER TABLE tableName ADD URGENT_FLAG NVARCHAR2(2) NOT NULL';
       execute immediate 'comment on column tableName.URGENT_FLAG is  ''�Ӽ���ʶ:�Ӽ�Y,���Ӽ�N''';
	   execute immediate 'ALTER TABLE tableName ADD PERSONALFLAG NVARCHAR2(2) ';
       execute immediate 'comment on column tableName.PERSONALFLAG is  ''��˽���:Ĭ�϶Թ����Թ���1������˽��2��''';
	   execute immediate 'ALTER TABLE tableName ADD CREATOR NVARCHAR2(20) ';
       execute immediate 'comment on column tableName.CREATOR is  ''¼����:¼��������''';
	   execute immediate 'ALTER TABLE tableName ADD CREATE_TIME DATE ';
       execute immediate 'comment on column tableName.CREATE_TIME is  ''¼��ʱ��:YYYY-MM-DD''';
	   execute immediate 'ALTER TABLE tableName ADD TEXTVALUE1 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName.TEXTVALUE1 is  ''�ı������ֶ�1''';
	   execute immediate 'ALTER TABLE tableName ADD TEXTVALUE2 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName.TEXTVALUE2 is  ''�ı������ֶ�2''';
	   execute immediate 'ALTER TABLE tableName ADD TEXTVALUE3 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName.TEXTVALUE3 is  ''�ı������ֶ�3''';
	   execute immediate 'ALTER TABLE tableName ADD TEXTVALUE4 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName.TEXTVALUE4 is  ''�ı������ֶ�4''';
	   execute immediate 'ALTER TABLE tableName ADD TEXTVALUE5 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName.TEXTVALUE5 is  ''�ı������ֶ�5''';
	   execute immediate 'ALTER TABLE tableName ADD NUMBERVALUE1 NUMBER ';
       execute immediate 'comment on column tableName.NUMBERVALUE1 is  ''���ֱ����ֶ�1''';
	   execute immediate 'ALTER TABLE tableName ADD NUMBERVALUE3 NUMBER(15,2) ';
       execute immediate 'comment on column tableName.NUMBERVALUE3 is  ''���ֱ����ֶ�3''';
	   execute immediate 'ALTER TABLE tableName ADD DATEVALUE1 DATE ';
       execute immediate 'comment on column tableName.DATEVALUE1 is  ''ʱ�䱸���ֶ�1''';
	   execute immediate 'ALTER TABLE tableName ADD DATEVALUE2 DATE ';
       execute immediate 'comment on column tableName.DATEVALUE2 is  ''ʱ�䱸���ֶ�2''';
	   execute immediate 'ALTER TABLE tableName ADD DATEVALUE3 DATE ';
       execute immediate 'comment on column tableName.DATEVALUE3 is  ''ʱ�䱸���ֶ�3''';

	end if;
end;
/
