<?php

require_once "Database.php";
require_once "MessageModel.php";

// Izveidojiet datubāzes savienojumu (izmantojot jūsu jau esošo kodu)
$db = Database::getInstance();
$connection = $db->getConnection();

// Izveidojiet MessageModel instanci
$messageModel = new MessageModel($connection);

// Iegūst visus ziņojumus
$allMessages = $messageModel->getAllMessages();

// Iegūst ziņojumu pēc id (piemēram, id = 1)
$messageById = $messageModel->getMessageById(1);
