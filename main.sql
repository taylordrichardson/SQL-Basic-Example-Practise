CREATE TABLE Tbl_users (
  user_id int NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  user_type varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  2fa_status bool NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE Tbl_passwords (
  pass_id int NOT NULL,
  user_id int NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (pass_id),
  FOREIGN KEY (user_id) REFERENCES Tbl_users(user_id)
);

INSERT INTO Tbl_users (user_id, first_name, last_name, username, user_type, email, 2fa_status)
VALUES
  (1, 'John', 'Smith', 'JS2005', 'Admin', 'JS2005@gmail.com', True),
  (2, 'Cody', 'Bob', 'CB2004', 'User', 'CB2004@yahoo.co.uk', False),
  (3, 'Aaron', 'Schmidt', 'AS2002', 'User', 'AS2002@outlook.com', True)
  


--Query:
SELECT user_id, first_name, last_name, username, user_type, email, 2fa_status FROM Tbl_users;
