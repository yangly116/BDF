declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_all_tables
   where table_name = upper('tableName');
   
    if cnt = 0 then
     execute immediate 'create table tableName
(
	  tId                    INTEGER NOT NULL,
	  payerId                    NVARCHAR2(18) ,
	  payerNO                    NVARCHAR2(32) ,
	  PAY_DATE                    DATE ,
	  ABSTRACT                    NVARCHAR2(60) ,
	  TR_TYPE                    NVARCHAR2(2) ,
	  AMOUNT                    NUMBER(15,2) ,
	  CURRENCY                    NVARCHAR2(3) ,
	  RECE_ACC_NO                    NVARCHAR2(32) ,
	  RECE_ACC_NAME                    NVARCHAR2(60) ,
	  REG_NO                    NVARCHAR2(4) ,
	  RECE_OPBANK_NO                    NVARCHAR2(60) ,
	  RECE_OPBANK_NAME                    NVARCHAR2(60) 
)';
execute immediate 'comment on table tableName is ''����ע��''';
execute immediate 'comment on column tableName.tId is ''����:Ψһ����Id''';
execute immediate 'comment on column tableName.payerId is ''���ID:�ʽ�ϵͳ�����λ���''';
execute immediate 'comment on column tableName.payerNO is ''����ڲ��˺�:�ʽ�ϵͳ�ڵ��ڲ������˺�''';
execute immediate 'comment on column tableName.PAY_DATE is ''��������:���������գ���ʽ��YYYY-MM-DD''';
execute immediate 'comment on column tableName.ABSTRACT is ''ժҪ''';
execute immediate 'comment on column tableName.TR_TYPE is ''���㷽ʽ:����ת��T''';
execute immediate 'comment on column tableName.AMOUNT is ''������:���''';
execute immediate 'comment on column tableName.CURRENCY is ''����:�����CNY''';
execute immediate 'comment on column tableName.RECE_ACC_NO is ''�տ�˺�''';
execute immediate 'comment on column tableName.RECE_ACC_NAME is ''�տ����''';
execute immediate 'comment on column tableName.REG_NO is ''�տ��׼��������:�ʽ�ϵͳ�ڱ�׼��ַ����''';
execute immediate 'comment on column tableName.RECE_OPBANK_NO is ''�տ������:�����д������ƣ����ʽ�ϵͳ������һ�£�''';
execute immediate 'comment on column tableName.RECE_OPBANK_NAME is ''�տ����������:���忪����֧��''';

  end if;             
end;
/
declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_constraints a
   where a.constraint_name = upper('PK_tableName');
        
    if cnt = 0 then
        execute immediate 'alter table tableName add constraint PK_tableName primary key (tId)';
  end if;             
end;
/

declare
 cnt integer;
begin
    select count(0)
    into cnt  
    from user_sequences a
   where a.sequence_name = upper('SEQ_tableName');
   
    if cnt = 0 then
     execute immediate 'create sequence SEQ_tableName
        minvalue 1
        maxvalue 999999999999999999999999999
        start with 1
        increment by 1
        cache 20';
  end if;             
end;
/
