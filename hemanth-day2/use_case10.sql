 -- use_case 10 --
 CREATE TABLE support_tickets(ticket_id INT  AUTO_INCREMENT,
 ticket_number VARCHAR(20)NOT NULL,
 requester_name VARCHAR(120) NOT NULL,
 requester_email VARCHAR(120) NOT NULL,
 subject VARCHAR(200) NOT NULL,
 description TEXT NOT NULL,
 category VARCHAR(20) NOT NULL,
 priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
 ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',
 assigned_agent VARCHAR(120),
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 resolved_at TIMESTAMP,
 last_updated_at TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 CONSTRAINT`pk_ticket_id` PRIMARY KEY(ticket_id),
 CONSTRAINT`uk_ticket_number` UNIQUE(ticket_number),
 CONSTRAINT `chk_resolved_time` CHECK (resolved_at IS NULL OR resolved_at >= created_at)
 );
 SELECT* FROM support_tickets;
 INSERT INTO support_tickets(ticket_number, requester_name, requester_email,subject, description, category)
 VALUES('TKT000001', 'Rahul Kumar', 'rahul@gmail.com','Unable to login','I cannot login to my account.',
 'ACCOUNT');
 INSERT INTO support_tickets(ticket_number, requester_name, requester_email,subject, description, category,
 priority, ticket_status, assigned_agent, resolved_at)
VALUES('TKT000002', 'Anil Kumar', 'anil@gmail.com','Payment failed','Payment was deducted but the order was not created.',
'BILLING','HIGH','RESOLVED','John',CURRENT_TIMESTAMP);
INSERT INTO support_tickets(ticket_number, requester_name, requester_email,subject, description, category,
 resolved_at)
VALUES('TKT000003', 'Priya Sharma', 'priya@gmail.com', 'Account issue', 'Unable to access account.', 'ACCOUNT',
 '2020-01-01 10:00:00');