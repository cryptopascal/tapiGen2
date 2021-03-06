CREATE TABLE TE_TEMPLATES
(
  NAME           VARCHAR2(300 BYTE),  
  TEMPLATE       CLOB,
  DESCRIPTION    VARCHAR2(300 BYTE),               
  CREATED_BY     VARCHAR2(100 BYTE)             DEFAULT user                  NOT NULL,
  CREATED_DATE   DATE                           DEFAULT SYSDATE               NOT NULL,
  MODIFIED_BY    VARCHAR2(100 BYTE)             DEFAULT user                  NOT NULL,
  MODIFIED_DATE  DATE                           DEFAULT SYSDATE               NOT NULL
);


CREATE UNIQUE INDEX TE_TEMPLATES_PK ON TE_TEMPLATES
(NAME);


ALTER TABLE TE_TEMPLATES ADD (
  CONSTRAINT TE_TEMPLATES_PK
 PRIMARY KEY
 (NAME));

