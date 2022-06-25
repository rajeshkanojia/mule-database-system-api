ALTER TABLE users
ADD COLUMN hashID VARCHAR(255) AFTER id,
ADD COLUMN hashKey VARCHAR(255) AFTER email_verification_status;