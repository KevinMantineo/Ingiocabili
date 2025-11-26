# Ingiocabili
Project Work 2025 del Gruppo Ingiocabili

# 🚦 RoadPulse - Sistema di Autenticazione Utente

RoadPulse è un sistema di gestione dell'autenticazione lato server sviluppato in PHP, progettato per gestire l'accesso e la registrazione degli utenti tramite un database MySQL.

## 📦 Struttura del Progetto

Il progetto è organizzato in una struttura modulare, con file dedicati alla connessione al database e alle funzionalità principali di autenticazione.

## ✨ Funzionalità

### `login/login.php`

* **Verifica Sessione:** Controlla se l'utente è già autenticato tramite `$_SESSION['token']` e reindirizza a `/Main/Dashboard.php`.
* **Gestione Form:** Elabora le richieste POST per l'accesso.
* **Convalida:** Verifica la lunghezza minima di username (3 caratteri) e password (6 caratteri).
* **Verifica Credenziali:** Interroga il database (`account` table) per l'username e utilizza `password_verify()` per la validazione della password.
* **Gestione Accesso:** In caso di successo, imposta la sessione (`$_SESSION['token']`, `$_SESSION['username']`) e offre un'opzione "Ricordami" tramite cookie.
* **Reindirizzamento:** Reindirizza l'utente loggato a `/Main/Dashboard.php`.

### `login/signup.php`

* **Gestione Form:** Elabora le richieste POST per la registrazione.
* **Convalida:** Verifica la validità del formato email, la lunghezza minima di username (3 caratteri) e password (6 caratteri).
* **Controllo Unicità:** Verifica che l'email o l'username non siano già presenti nel database.
* **Creazione Utente:** Effettua l'hashing della password utilizzando `password_hash(..., PASSWORD_DEFAULT)` e inserisce il nuovo record nella tabella `account`.
* **Autologin:** Dopo la registrazione, avvia una sessione per il nuovo utente.
* **Reindirizzamento:** Reindirizza l'utente a `login\login.php` dopo una registrazione avvenuta con successo.

### `db.php`

* File di configurazione che stabilisce una connessione al database MySQL utilizzando l'estensione **MySQLi (Object-Oriented)**.
* Parametri di connessione predefiniti:
    * `$servername`: "localhost"
    * `$username`: "root"
    * `$password`: ""
    * `$dbname`: "RoadPulse"

## 🛠️ Requisiti Tecnici

Questo progetto richiede un ambiente server con le seguenti configurazioni:

* **PHP:** Con supporto per le estensioni `mysqli` e `session`.
* **Database:** Un server MySQL o MariaDB con un database chiamato `RoadPulse` e una tabella `account` configurata per l'uso da parte dei file PHP.

## 📌 Note

* I file di autenticazione utilizzano query preparate per l'interazione con il database.
* La connessione al database in `db.php` utilizza la variabile `$conn`, ma i file `login.php` e `signup.php` utilizzano la variabile `$mysqli`.
