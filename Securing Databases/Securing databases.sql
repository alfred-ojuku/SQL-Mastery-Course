-- creating a user
CREATE USER fender@127.0.0.1;        -- users connecting from an Ip address
CREATE USER prometheus@localhost;     -- users connecting from a localhost
CREATE USER  ojuku@codewithmosh.com;  -- users connecting from a domain called codewithmosh.com
CREATE USER  ojuku@'%.codewithmosh.com'; -- for users to be able to connect from codewithmosh.com sub-domains
CREATE USER  ojuku IDENTIFIED BY '19442';                        -- ojuku can connect from anywhere

-- viewing users from a server
SELECT * FROM mysql.user;

-- dropping users
DROP USER prometheus@localhost;

-- changing passwords
SET PASSWORD FOR ojuku = '1234';

-- to set my own password
SET PASSWORD = '1234';  -- sets the password of the currently logged in user
-- passwords can also be changed through the navigator panel

-- granting privileges

-- we'll look and two scenarios
-- 1: web/desktop application
CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*
TO moon_app;

-- 2: admin
GRANT ALL
ON *.*   -- grants acess to all the databases in the server. for a specific database ON sql_store.*
TO ojuku;

-- viewing privileges
SHOW GRANTS FOR ojuku; -- shows permissions for ojuku user
SHOW GRANTS;  -- shows grants for logged in user

-- revoking privileges
GRANT CREATE VIEW
ON sql_store.*
TO moon_app;

REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;
 

