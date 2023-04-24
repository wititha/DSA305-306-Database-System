SELECT * FROM user_login;
INSERT INTO user_login (user_id, user_password)
     VALUES ('3213213211', '573253');
INSERT INTO user_login (user_id, user_password)
     VALUES ('3213213212', '431704');
INSERT INTO user_login (user_id, user_password)
     VALUES ('3213213213', '407341');
INSERT INTO user_login (user_id, user_password)
     VALUES ('3213213214', '803515');
INSERT INTO user_login (user_id, user_password)
     VALUES ('3213213215', '225409');


SELECT * FROM acc_type;
INSERT INTO acc_type (acc_type_id, acc_type_name, acc_min_amount, acc_interest_rate)
     VALUES ('A001', 'Saving Account', '0', '1.50');
INSERT INTO acc_type (acc_type_id, acc_type_name, acc_min_amount, acc_interest_rate)
     VALUES ('A002', 'Fixed Deposit Account', '1000', '2.00');
INSERT INTO acc_type (acc_type_id, acc_type_name, acc_min_amount, acc_interest_rate)
     VALUES ('A003', 'Current Account', '0', '0.5');

SELECT * FROM customer;
INSERT INTO customer (cus_id, acc_id, cus_fname, cus_lname, cus_dob, cus_address, cus_zipcode, cus_email, cus_phone)
     VALUES ('C001', '1212312121', 'Steven', 'King', TO_DATE('13-01-1999', 'DD-MM-RRRR'), '111 A road Samutprakarn', '10270', 'sking@hotmail.com', '6501234567');
INSERT INTO customer (cus_id, acc_id, cus_fname, cus_lname, cus_dob, cus_address, cus_zipcode, cus_email, cus_phone)
     VALUES ('C002', '1212312122', 'Neena', 'Chen', TO_DATE('05-10-1999', 'DD-MM-RR'), '252 B road Bangkok', '10280', 'neenac@hotmail.com', '6504235567');
INSERT INTO customer (cus_id, acc_id, cus_fname, cus_lname, cus_dob, cus_address, cus_zipcode, cus_email, cus_phone)
     VALUES ('C003', '1212312123', 'Alexander', 'Arnold',TO_DATE('12-12-2003', 'DD-MM-RR'), '332 C Ratchaburi', '32184', 'aarnold@hotmail.com', '6501246234');
INSERT INTO customer (cus_id, acc_id, cus_fname, cus_lname, cus_dob, cus_address, cus_zipcode, cus_email, cus_phone)
     VALUES ('C004', '1212312124', 'Nancy', 'Urmann', TO_DATE('23-07-1987', 'DD-MM-RR'), '1017 Nonthaburi', '11120', 'nurmann@hotmail.com', '6505079876');
INSERT INTO customer (cus_id, acc_id, cus_fname, cus_lname, cus_dob, cus_address, cus_zipcode, cus_email, cus_phone)
     VALUES ('C005', '1212312125', 'Kevin', 'Nayer', TO_DATE('01-01-2002', 'DD-MM-RR'), '342 Chiangmai', '45752', 'kevinn@hotmail.com', '6501236666');
     

     
SELECT * FROM promptpay;
INSERT INTO promptpay (prompt_id, acc_type_id, id_type, prompt_type_id)
     VALUES ('6501234567', 'A001', 'phone_num', 'P01');
INSERT INTO promptpay (prompt_id, acc_type_id, id_type, prompt_type_id)
     VALUES ('3133263393412', 'A003', 'tax_id', 'P02');
INSERT INTO promptpay (prompt_id, acc_type_id, id_type, prompt_type_id)
     VALUES ('1129901425331', 'A001', 'id_card_num', 'P01');
INSERT INTO promptpay (prompt_id, acc_type_id, id_type, prompt_type_id)
     VALUES ('1129901738351', 'A001', 'id_card_num', 'P01');
     
SELECT * FROM accounts;
INSERT INTO accounts (acc_id, acc_type_id, acc_balance, prompt_id)
     VALUES ('1212312121', 'A001', '8000.00', '6501234567');
INSERT INTO accounts (acc_id, acc_type_id, acc_balance, prompt_id)
     VALUES ('1212312122', 'A002', '100000.00', null);
INSERT INTO accounts (acc_id, acc_type_id, acc_balance, prompt_id)
     VALUES ('1212312123', 'A003', '500000.00', '3133263393412');
INSERT INTO accounts (acc_id, acc_type_id, acc_balance, prompt_id)
     VALUES ('1212312124', 'A001', '3000.00', '1129901425331');
INSERT INTO accounts (acc_id, acc_type_id, acc_balance, prompt_id)
     VALUES ('1212312125', 'A001', '2500.00', '1129901738351');
     
SELECT * FROM promptpay_type;     
INSERT INTO promptpay_type (prompt_type_id, prompt_type_name, prompt_type_desc)
     VALUES ('P01', 'Kbank Promptpay', 'receiving and transferring money, use citizen id number or mobile phone number link with your account');
INSERT INTO promptpay_type (prompt_type_id, prompt_type_name, prompt_type_desc)
     VALUES ('P02', 'K-biz Promptpay', 'for business use tax id link with account');

SELECT * FROM transactions;
INSERT INTO transactions (trans_id, acc_id, trans_datetime, serv_id, trans_amount, channel_id)
     VALUES ('T001', '1212312121', TO_TIMESTAMP('2021-09-30 04:47:00', 'YYYY-MM-DD HH24:MI:SS'), 'S001', '20000.00', 'CH101');
INSERT INTO transactions (trans_id, acc_id, trans_datetime, serv_id, trans_amount, channel_id)
     VALUES ('T002', '1212312122', TO_TIMESTAMP('2021-09-30 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'S003', '100000.00', 'CH102');
INSERT INTO transactions (trans_id, acc_id, trans_datetime, serv_id, trans_amount, channel_id)
     VALUES ('T003', '1212312123', TO_TIMESTAMP('2021-09-30 09:21:00', 'YYYY-MM-DD HH24:MI:SS'), 'S002', '500000.00', 'CH102');
INSERT INTO transactions (trans_id, acc_id, trans_datetime, serv_id, trans_amount, channel_id)
     VALUES ('T004', '1212312124', TO_TIMESTAMP('2021-09-30 10:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'S001', '1500.00', 'CH101');
     
SELECT * FROM services;
INSERT INTO services (serv_id, serv_name, serv_fee)
     VALUES ('S001', 'Transfer', '15');
INSERT INTO services (serv_id, serv_name, serv_fee)
     VALUES ('S002', 'Withdraw', '15');
INSERT INTO services (serv_id, serv_name, serv_fee)
     VALUES ('S003', 'Deposit', '-');
     
SELECT * FROM card;
INSERT INTO card (card_id, acc_id, card_type_id)
     VALUES ('4501184323015580', '1212312121', 'DE101');
INSERT INTO card (card_id, acc_id, card_type_id)
     VALUES ('4009635439745970', '1212312122', 'DE102');
INSERT INTO card (card_id, acc_id, card_type_id)
     VALUES ('4555995115371160', '1212312123', 'DE103');


SELECT * FROM card_type;
INSERT INTO card_type (card_type_id, card_type_name, card_desc, card_fee)
     VALUES ('DE101', 'K -DEBIT CARD', 'card for everyday transactions,transfer up to 1,000,000 between Kbank account', 'entrance 50/annual 250');
INSERT INTO card_type (card_type_id, card_type_name, card_desc, card_fee)
     VALUES ('DE102', 'K - MAX PLUS DEBIT CARD', 'life coverage, medical claim to daily accident compensation. up to 200,000 baht accident coverage', 'entrance 100/annual 700');
INSERT INTO card_type (card_type_id, card_type_name, card_desc, card_fee)
     VALUES ('DE103', 'K- WEB SHOPPING CARD', 'shop online, no credit card needed', 'no fee');
     
SELECT * FROM channel;
INSERT INTO channel (channel_id, channel_name, channel_desc)
     VALUES ('CH101', 'K - PLUS', 'transact via martphones, such as the iPhone or any Android device
                                   Must be able to connect to the Internet');
INSERT INTO channel (channel_id, channel_name, channel_desc)
     VALUES ('CH102', 'K - ATM', 'via ATM');
INSERT INTO channel (channel_id, channel_name, channel_desc)
     VALUES ('CH103', 'K - CYBER', 'Access your bank account to keep track of your money, fund transfer, top up,
make payment and view your statement via web browser');