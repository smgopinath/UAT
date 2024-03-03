drop table t_hi_ghd_ans;

CREATE TABLE t_hi_ghd_ans (
  ghdans_id bigint NOT NULL AUTO_INCREMENT,
  ghddetails_id bigint DEFAULT NULL,
  qn_id bigint DEFAULT NULL,
  ans varchar(45) DEFAULT NULL,						   
  PRIMARY KEY (ghdans_id),
  KEY fk_ghd_dtls_idx (ghddetails_id),
  KEY fk_ghd_ques_idx (qn_id),
  CONSTRAINT fk_ghd_dtls FOREIGN KEY (ghddetails_id) REFERENCES t_hi_ghd_details (ghddetails_id),
  CONSTRAINT fk_ghd_ques FOREIGN KEY (qn_id) REFERENCES t_hi_ghd_qstns (ghdqstn_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table t_hi_ghd_details;

CREATE TABLE t_hi_ghd_details (
  ghddetails_id bigint NOT NULL AUTO_INCREMENT,
  proposer_insured_id bigint DEFAULT NULL,
  ghd_discount_recieved varchar(5) DEFAULT NULL,
  ghd_member_discount double DEFAULT NULL,
  ghd_aggregate_discount double DEFAULT NULL,								
  active bit(1) DEFAULT NULL,
  created_date datetime(6) DEFAULT NULL,
  created_by varchar(45) DEFAULT NULL,
  PRIMARY KEY (ghddetails_id),
  KEY fk_proposer_insurance_id_idx (proposer_insured_id),
  CONSTRAINT fk_prop_ind_id FOREIGN KEY (proposer_insured_id) REFERENCES t_hi_proposer_insured_members (proposerinsurerid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Trans,HI Good Health Details from careplix';
