--liquibase formatted sql

--changeset amalik:1 runOnChange:true runAlways:true endDelimiter:/ rollbackEndDelimiter:/
--comment: version 1.0
CREATE OR REPLACE PACKAGE PKG_GET_RAN_ACCT_DTLS_2022_05
AS
   /*########################################################################################
   NAME: CDF.PKG_GET_RAN_ACCT_DTLS_2022_05 -specification
   PURPOSE: PACKAGE created will will retrieve and return the RAN account details
   including real time balances, the RAN Account titleholder information and the Earning Mechanisms linked to the RAN along with CCR Bonus Details 
   --CapAmount,AmountSpent and BonusAwardAmount.

   Revisions:

   Ver        Date                 Author                    Description
   ---------  ----------        ----------------          -------------------------------
   1.0        28/01/2022       Pavan Reddy Akiti           1. Created this package for CCR - Bonus Tracker project in 2.22
   **************************************************************************************/


   TYPE RAN_DETAILS_CUR IS REF CURSOR;

   TYPE EXP_SUMM_DETAILS_CUR IS REF CURSOR;

   TYPE EM_BONUS_DETAILS_CUR IS REF CURSOR;

   PROCEDURE sp_get_ran_acct_dtls_2022_05 (
      RAN_KEY_LIST            IN     RAN_KEY_TBL_2022_05,
      spv_disclosure_indicator IN VARCHAR2,
      return_status              OUT VARCHAR2,
      ERR_CD                     OUT VARCHAR2,
      ERR_MSG                    OUT VARCHAR2,
      RAN_DETAILS_INFO           OUT RAN_DETAILS_CUR,
      EXP_SUMM_DETAILS_INFO      OUT EXP_SUMM_DETAILS_CUR,
      EM_BONUS_DETAILS_INFO      OUT EM_BONUS_DETAILS_CUR);
END PKG_GET_RAN_ACCT_DTLS_2022_05;
/

--rollback
--rollback CREATE OR REPLACE PACKAGE PKG_GET_RAN_ACCT_DTLS_2022_05
--rollback AS

--rollback    TYPE RAN_DETAILS_CUR IS REF CURSOR;

--rollback    TYPE EXP_SUMM_DETAILS_CUR IS REF CURSOR;

--rollback    TYPE EM_BONUS_DETAILS_CUR IS REF CURSOR;

--rollback    PROCEDURE sp_get_ran_acct_dtls_2022_05 (
--rollback       RAN_KEY_LIST            IN     RAN_KEY_TBL_2022_05,
--rollback       spv_disclosure_indicator IN VARCHAR2,
--rollback       return_status              OUT VARCHAR2,
--rollback       ERR_CD                     OUT VARCHAR2,
--rollback       ERR_MSG                    OUT VARCHAR2,
--rollback       RAN_DETAILS_INFO           OUT RAN_DETAILS_CUR,
--rollback       EXP_SUMM_DETAILS_INFO      OUT EXP_SUMM_DETAILS_CUR,
--rollback       EM_BONUS_DETAILS_INFO      OUT EM_BONUS_DETAILS_CUR);
--rollback END PKG_GET_RAN_ACCT_DTLS_2022_05; 
--rollback /


