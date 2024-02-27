create table t_mf_finsire_user (
mf_finsire_user_id   BIGINT Primary Key Auto_Increment NOT NULL,
customer_id bigint,
partner_finsire_id VARCHAR(45),
isKYCCompliant bit(1),
user_pan VARCHAR(15) ,
user_name VARCHAR(255),
user_mobile VARCHAR(15),
user_asset VARCHAR(50),
created_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
created_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
modified_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
modified_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
FOREIGN KEY fk_customer_id (customer_id) REFERENCES t_customer (id)
);

create table t_mf_finsire_asset_fetch (
mf_finsire_asset_fetch_id   BIGINT Primary Key Auto_Increment NOT NULL,
partner_finsire_id VARCHAR(45),
customer_id bigint,
mf_data_fetched_at DATETIME(6),
mf_data_fetched_by bigint,
created_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
created_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
modified_by varchar(45) DEFAULT NULL COMMENT 'Audit Columns used for traceability',
modified_date datetime DEFAULT NULL COMMENT 'Audit Columns used for traceability',
FOREIGN KEY fk_mfcustomer_id (customer_id) REFERENCES t_customer (id),
FOREIGN KEY fk_mf_data_fetched_by (mf_data_fetched_by) REFERENCES t_lob_master (id)
);
