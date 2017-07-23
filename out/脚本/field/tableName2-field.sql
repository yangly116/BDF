--�����ֶ�
declare
  cnt integer;
begin
	select count(0)
      into cnt	
	  from user_tab_columns a
	  where a.Table_name = upper('tableName2')
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
	   execute immediate 'ALTER TABLE tableName2 ADD RECE_CNAPS NVARCHAR2(12) ';
       execute immediate 'comment on column tableName2.RECE_CNAPS is  ''�տ������CNAPS��:������к�''';
	   execute immediate 'ALTER TABLE tableName2 ADD URGENT_FLAG NVARCHAR2(2) NOT NULL';
       execute immediate 'comment on column tableName2.URGENT_FLAG is  ''�Ӽ���ʶ:�Ӽ�Y,���Ӽ�N''';
	   execute immediate 'ALTER TABLE tableName2 ADD PERSONALFLAG NVARCHAR2(2) ';
       execute immediate 'comment on column tableName2.PERSONALFLAG is  ''��˽���:Ĭ�϶Թ����Թ���1������˽��2��''';
	   execute immediate 'ALTER TABLE tableName2 ADD CREATOR NVARCHAR2(20) ';
       execute immediate 'comment on column tableName2.CREATOR is  ''¼����:¼��������''';
	   execute immediate 'ALTER TABLE tableName2 ADD CREATE_TIME DATE ';
       execute immediate 'comment on column tableName2.CREATE_TIME is  ''¼��ʱ��:YYYY-MM-DD''';
	   execute immediate 'ALTER TABLE tableName2 ADD TEXTVALUE1 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName2.TEXTVALUE1 is  ''�ı������ֶ�1''';
	   execute immediate 'ALTER TABLE tableName2 ADD TEXTVALUE2 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName2.TEXTVALUE2 is  ''�ı������ֶ�2''';
	   execute immediate 'ALTER TABLE tableName2 ADD TEXTVALUE3 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName2.TEXTVALUE3 is  ''�ı������ֶ�3''';
	   execute immediate 'ALTER TABLE tableName2 ADD TEXTVALUE4 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName2.TEXTVALUE4 is  ''�ı������ֶ�4''';
	   execute immediate 'ALTER TABLE tableName2 ADD TEXTVALUE5 NVARCHAR2(255) ';
       execute immediate 'comment on column tableName2.TEXTVALUE5 is  ''�ı������ֶ�5''';
	   execute immediate 'ALTER TABLE tableName2 ADD NUMBERVALUE1 NUMBER ';
       execute immediate 'comment on column tableName2.NUMBERVALUE1 is  ''���ֱ����ֶ�1''';
	   execute immediate 'ALTER TABLE tableName2 ADD NUMBERVALUE3 NUMBER(15,2) ';
       execute immediate 'comment on column tableName2.NUMBERVALUE3 is  ''���ֱ����ֶ�3''';
	   execute immediate 'ALTER TABLE tableName2 ADD DATEVALUE1 DATE ';
       execute immediate 'comment on column tableName2.DATEVALUE1 is  ''ʱ�䱸���ֶ�1''';
	   execute immediate 'ALTER TABLE tableName2 ADD DATEVALUE2 DATE ';
       execute immediate 'comment on column tableName2.DATEVALUE2 is  ''ʱ�䱸���ֶ�2''';
	   execute immediate 'ALTER TABLE tableName2 ADD DATEVALUE3 DATE ';
       execute immediate 'comment on column tableName2.DATEVALUE3 is  ''ʱ�䱸���ֶ�3''';

	end if;
end;
/
