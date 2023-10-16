# Mans projekts amatii

## datu bazes izveidošana

```sql
CREATE DATABASE `amatii` /*!40100 COLLATE 'utf8_latvian_ci' */

CREATE TABLE message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    phone VARCHAR(31),
    email VARCHAR(63),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO message (message, phone, email) VALUES
('Sveiki! Šis ir mans ziņojums.', '+123456789', 'mans@email.com');

-- Lietotaja privilegiju pieskiršana datu bazei
CREATE USER 'egilsk'@'localhost' IDENTIFIED BY 'DianA1993!';
GRANT ALL PRIVILEGES ON amatii.* TO 'egilsk'@'localhost';
FLUSH PRIVILEGES;
```