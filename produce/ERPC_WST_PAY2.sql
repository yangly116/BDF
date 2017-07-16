declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_all_tables
   where table_name = upper('ERPC_WST_PAY2');
   
    if cnt = 0 then
     execute immediate 'create table ERPC_WST_PAY2
(
ERP_INS_ID2                    NVARCHAR2(32),
  PAYER_ID2                    NVARCHAR2(18),
  PAYER_NO                    NVARCHAR2(32),
  PAY_DATE                    DATE,
  ABSTRACT                    NVARCHAR2(60),
  TR_TYPE                    NVARCHAR2(2),
  AMOUNT                    NUMBER(15,2),
  CURRENCY                    NVARCHAR2(3),
  RECE_ACC_NO                    NVARCHAR2(32),
  RECE_ACC_NAME                    NVARCHAR2(60),
  REG_NO                    NVARCHAR2(4),
  RECE_OPBANK_NO                    NVARCHAR2(60),
  RECE_OPBANK_NAME                    NVARCHAR2(60),
  RECE_CNAPS                    NVARCHAR2(12),
  URGENT_FLAG                    NVARCHAR2(2),
  PERSONALFLAG                    NVARCHAR2(2),
  CREATOR                    NVARCHAR2(20),
  CREATE_TIME                    DATE,
  TEXTVALUE1                    NVARCHAR2(255),
  TEXTVALUE2                    NVARCHAR2(255),
  TEXTVALUE3                    NVARCHAR2(255),
  TEXTVALUE4                    NVARCHAR2(255),
  TEXTVALUE5                    NVARCHAR2(255),
  NUMBERVALUE1                    NUMBER,
  NUMBERVALUE3                    NUMBER(15,2),
  DATEVALUE1                    DATE,
  DATEVALUE2                    DATE,
  DATEVALUE3                    DATE
)';
execute immediate 'comment on table ERPC_WST_PAY2 is ''������Ϣ��2''';
execute immediate 'comment on column ${tableName}.ERP_INS_ID2 is ''ERP�˸���Ψһ��ʶ:���еĸ���ҵ������ͳһ��ʶ''';
execute immediate 'comment on column ${tableName}.PAYER_ID2 is ''���ID:�ʽ�ϵͳ�����λ���''';
execute immediate 'comment on column ${tableName}.PAYER_NO is ''����ڲ��˺�:�ʽ�ϵͳ�ڵ��ڲ������˺�''';
execute immediate 'comment on column ${tableName}.PAY_DATE is ''��������:���������գ���ʽ��YYYY-MM-DD''';
execute immediate 'comment on column ${tableName}.ABSTRACT is ''ժҪ''';
execute immediate 'comment on column ${tableName}.TR_TYPE is ''���㷽ʽ:����ת��T''';
execute immediate 'comment on column ${tableName}.AMOUNT is ''������:���''';
execute immediate 'comment on column ${tableName}.CURRENCY is ''����:�����CNY''';
execute immediate 'comment on column ${tableName}.RECE_ACC_NO is ''�տ�˺�''';
execute immediate 'comment on column ${tableName}.RECE_ACC_NAME is ''�տ����''';
execute immediate 'comment on column ${tableName}.REG_NO is ''�տ��׼��������:�ʽ�ϵͳ�ڱ�׼��ַ����''';
execute immediate 'comment on column ${tableName}.RECE_OPBANK_NO is ''�տ������:�����д������ƣ����ʽ�ϵͳ������һ�£�''';
execute immediate 'comment on column ${tableName}.RECE_OPBANK_NAME is ''�տ����������:���忪����֧��''';
execute immediate 'comment on column ${tableName}.RECE_CNAPS is ''�տ������CNAPS��:������к�''';
execute immediate 'comment on column ${tableName}.URGENT_FLAG is ''�Ӽ���ʶ:�Ӽ�Y,���Ӽ�N''';
execute immediate 'comment on column ${tableName}.PERSONALFLAG is ''��˽���:Ĭ�϶Թ����Թ���1������˽��2��''';
execute immediate 'comment on column ${tableName}.CREATOR is ''¼����:¼��������''';
execute immediate 'comment on column ${tableName}.CREATE_TIME is ''¼��ʱ��:YYYY-MM-DD''';
execute immediate 'comment on column ${tableName}.TEXTVALUE1 is ''�ı������ֶ�1''';
execute immediate 'comment on column ${tableName}.TEXTVALUE2 is ''�ı������ֶ�2''';
execute immediate 'comment on column ${tableName}.TEXTVALUE3 is ''�ı������ֶ�3''';
execute immediate 'comment on column ${tableName}.TEXTVALUE4 is ''�ı������ֶ�4''';
execute immediate 'comment on column ${tableName}.TEXTVALUE5 is ''�ı������ֶ�5''';
execute immediate 'comment on column ${tableName}.NUMBERVALUE1 is ''���ֱ����ֶ�1''';
execute immediate 'comment on column ${tableName}.NUMBERVALUE3 is ''���ֱ����ֶ�3''';
execute immediate 'comment on column ${tableName}.DATEVALUE1 is ''ʱ�䱸���ֶ�1''';
execute immediate 'comment on column ${tableName}.DATEVALUE2 is ''ʱ�䱸���ֶ�2''';
execute immediate 'comment on column ${tableName}.DATEVALUE3 is ''ʱ�䱸���ֶ�3''';

  end if;             
end;
/
declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_constraints a
   where a.constraint_name = upper('PK_ERPC_WST_PAY2');
        
    if cnt = 0 then
        execute immediate 'alter table ERPC_WST_PAY2 add constraint PK_ERPC_WST_PAY2 primary key (ERP_INS_ID2)';
  end if;             
end;
/

declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_sequences a
   where a.sequence_name = upper('SEQ_ERPC_WST_PAY2');
   
    if cnt = 0 then
     execute immediate 'create sequence SEQ_ERPC_WST_PAY2
        minvalue 1
        maxvalue 999999999999999999999999999
        start with 1
        increment by 1
        cache 20';
  end if;             
end;
/
