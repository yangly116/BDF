declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_all_tables
   where table_name = upper('ERPC_WST_PAY');
   
    if cnt = 0 then
     execute immediate 'create table ERPC_WST_PAY
(
ERP_INS_ID                    NVARCHAR2(32),
  PAYER_ID                    NVARCHAR2(18),
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
execute immediate 'comment on table ERPC_WST_PAY is ''������Ϣ��''';
execute immediate 'comment on column ERPC_WST_PAY.ERP_INS_ID is ''ERP�˸���Ψһ��ʶ:���еĸ���ҵ������ͳһ��ʶ''';
execute immediate 'comment on column ERPC_WST_PAY.PAYER_ID is ''���ID:�ʽ�ϵͳ�����λ���''';
execute immediate 'comment on column ERPC_WST_PAY.PAYER_NO is ''����ڲ��˺�:�ʽ�ϵͳ�ڵ��ڲ������˺�''';
execute immediate 'comment on column ERPC_WST_PAY.PAY_DATE is ''��������:���������գ���ʽ��YYYY-MM-DD''';
execute immediate 'comment on column ERPC_WST_PAY.ABSTRACT is ''ժҪ''';
execute immediate 'comment on column ERPC_WST_PAY.TR_TYPE is ''���㷽ʽ:����ת��T''';
execute immediate 'comment on column ERPC_WST_PAY.AMOUNT is ''������:���''';
execute immediate 'comment on column ERPC_WST_PAY.CURRENCY is ''����:�����CNY''';
execute immediate 'comment on column ERPC_WST_PAY.RECE_ACC_NO is ''�տ�˺�''';
execute immediate 'comment on column ERPC_WST_PAY.RECE_ACC_NAME is ''�տ����''';
execute immediate 'comment on column ERPC_WST_PAY.REG_NO is ''�տ��׼��������:�ʽ�ϵͳ�ڱ�׼��ַ����''';
execute immediate 'comment on column ERPC_WST_PAY.RECE_OPBANK_NO is ''�տ������:�����д������ƣ����ʽ�ϵͳ������һ�£�''';
execute immediate 'comment on column ERPC_WST_PAY.RECE_OPBANK_NAME is ''�տ����������:���忪����֧��''';
execute immediate 'comment on column ERPC_WST_PAY.RECE_CNAPS is ''�տ������CNAPS��:������к�''';
execute immediate 'comment on column ERPC_WST_PAY.URGENT_FLAG is ''�Ӽ���ʶ:�Ӽ�Y,���Ӽ�N''';
execute immediate 'comment on column ERPC_WST_PAY.PERSONALFLAG is ''��˽���:Ĭ�϶Թ����Թ���1������˽��2��''';
execute immediate 'comment on column ERPC_WST_PAY.CREATOR is ''¼����:¼��������''';
execute immediate 'comment on column ERPC_WST_PAY.CREATE_TIME is ''¼��ʱ��:YYYY-MM-DD''';
execute immediate 'comment on column ERPC_WST_PAY.TEXTVALUE1 is ''�ı������ֶ�1''';
execute immediate 'comment on column ERPC_WST_PAY.TEXTVALUE2 is ''�ı������ֶ�2''';
execute immediate 'comment on column ERPC_WST_PAY.TEXTVALUE3 is ''�ı������ֶ�3''';
execute immediate 'comment on column ERPC_WST_PAY.TEXTVALUE4 is ''�ı������ֶ�4''';
execute immediate 'comment on column ERPC_WST_PAY.TEXTVALUE5 is ''�ı������ֶ�5''';
execute immediate 'comment on column ERPC_WST_PAY.NUMBERVALUE1 is ''���ֱ����ֶ�1''';
execute immediate 'comment on column ERPC_WST_PAY.NUMBERVALUE3 is ''���ֱ����ֶ�3''';
execute immediate 'comment on column ERPC_WST_PAY.DATEVALUE1 is ''ʱ�䱸���ֶ�1''';
execute immediate 'comment on column ERPC_WST_PAY.DATEVALUE2 is ''ʱ�䱸���ֶ�2''';
execute immediate 'comment on column ERPC_WST_PAY.DATEVALUE3 is ''ʱ�䱸���ֶ�3''';

  end if;             
end;
/
declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_constraints a
   where a.constraint_name = upper('PK_ERPC_WST_PAY');
        
    if cnt = 0 then
        execute immediate 'alter table ERPC_WST_PAY add constraint PK_ERPC_WST_PAY primary key (ERP_INS_ID)';
  end if;             
end;
/

declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_sequences a
   where a.sequence_name = upper('SEQ_ERPC_WST_PAY');
   
    if cnt = 0 then
     execute immediate 'create sequence SEQ_ERPC_WST_PAY
        minvalue 1
        maxvalue 999999999999999999999999999
        start with 1
        increment by 1
        cache 20';
  end if;             
end;
/
