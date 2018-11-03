# 2016/06/05 Josef Kubin
#

define([ERROR_IDENT], [error])
define([WARNING_IDENT], [warning])
define([INFO_IDENT], [info])
define([NOT_AVAILABLE], [n/a])

#     123456789012345678901234567890123456789012345678
ERROR(NA, [...], [
[cz, [Není implementováno (NOT_AVAILABLE).]],
[sk, [Nie je implementované (NOT_AVAILABLE).]],
[pl, [Nie zrealizowane (NOT_AVAILABLE).]],
[en, [Not implemented (NOT_AVAILABLE).]],
[de, [Nicht implementiert (NOT_AVAILABLE).]],
[fr, [Non implémenté (NOT_AVAILABLE).]],
[lv, [Nav īstenota (NOT_AVAILABLE).]],
[mk, [Не е имплементирана (NOT_AVAILABLE).]],
[ru, [Не реализовано (NOT_AVAILABLE).]],
])

#     123456789012345678901234567890123456789012345678
INFO(LOCKED_BOX, [
[cz, [Přístup blokován propojkou!]],
[sk, [Prístup blokovaný prepojkou!]],
[pl, [Dostęp blokowany skoczkem!]],
[en, [Access blocked a jumper!]],
[de, [Access blockiert eine Brücke!]],
[fr, [Accès bloqué un jumper!]],
[lv, [Access bloķēts džemperis!]],
[mk, [Пристап блокираа скокач!]],
[ru, [Доступ к заблокированным перемычки!]],
])

#     123456789012345678901234567890123456789012345678
INFO(REQ_USR1_PASSWD, [
[cz, [Uživatelské heslo I. (8 znaků)!]],
[sk, [Užívateľské heslo I. (8 znakov)!]],
[pl, [Hasło I. (8 znaków)!]],
[en, [Password I. (8 characters)!]],
[de, [Passwort I. (8 Zeichen)!]],
[fr, [Mot de passe I. (8 caractères)!]],
[lv, [Parole I. (8 zīmes)!]],
[mk, [Лозинка I. (8 карактери)!]],
[ru, [Пароль I. (8 символов)!]],
])

#     123456789012345678901234567890123456789012345678
INFO(REQ_USR2_PASSWD, [
[cz, [Uživatelské heslo II. (8 znaků)!]],
[sk, [Užívateľské heslo II. (8 znakov)!]],
[pl, [Hasło II. (8 znaków)!]],
[en, [Password II. (8 characters)!]],
[de, [Passwort II. (8 Zeichen)!]],
[fr, [Mot de passe II. (8 caractères)!]],
[lv, [Parole II. (8 zīmes)!]],
[mk, [Лозинка II. (8 карактери)!]],
[ru, [Пароль II. (8 символов)!]],
])

#     123456789012345678901234567890123456789012345678
INFO(REQ_USR3_PASSWD, [
[cz, [Uživatelské heslo III. (8 znaků)!]],
[sk, [Užívateľské heslo III. (8 znakov)!]],
[pl, [Hasło III. (8 znaków)!]],
[en, [Password III. (8 characters)!]],
[de, [Passwort III. (8 Zeichen)!]],
[fr, [Mot de passe III. (8 caractères)!]],
[lv, [Parole III. (8 zīmes)!]],
[mk, [Лозинка III. (8 карактери)!]],
[ru, [Пароль III. (8 символов)!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(PASSWD_ASCII, [
[cz, [Pouze ASCII text!]],
[sk, [Iba ASCII text!]],
[pl, [Tylko tekst ASCII!]],
[en, [Only ASCII text!]],
[de, [Nur ASCII-Text!]],
[fr, [Texte ASCII seulement!]],
[lv, [Tikai ASCII teksts!]],
[mk, [Само ASCII текст!]],
[ru, [Только текст ASCII!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(PASSWD_LEN, [
[cz, [Délka hesla je 8 znaků!]],
[sk, [Dĺžka hesla je 8 znakov!]],
[pl, [Długość hasła wynosi 8 znaków!]],
[en, [The length of the password is 8 characters!]],
[de, [Die Länge des Passworts ist 8 Zeichen!]],
[fr, [La longueur du mot de passe est de 8 caractères!]],
[lv, [No paroles garums ir 8 zīmes!]],
[mk, [Должината на лозинката е 8 карактери!]],
[ru, [Длина пароля составляет 8 символов!]],
])

#     123456789012345678901234567890123456789012345678
INFO(ACCESS_DENIED_TIMEOUT, [
[cz, [Přístup je na tři minuty blokován!]],
[sk, [Prístup je na tri minúty blokovaný!]],
[pl, [Dostęp jest blokowany na trzy minuty!]],
[en, [Access is blocked for three minutes!]],
[de, [Der Zugang ist für drei Minuten gesperrt!]],
[fr, [L'accès est bloqué pendant trois minutes!]],
[lv, [Piekļuve ir bloķēta trīs minūtes!]],
[mk, [Пристапот е блокиран за три минути!]],
[ru, [Доступ заблокирован в течение трех минут!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(ADDRESS_FUNCTION, [
[cz, [NOT_AVAILABLE]],
[sk, [NOT_AVAILABLE]],
[pl, [NOT_AVAILABLE]],
[en, [NOT_AVAILABLE]],
[de, [NOT_AVAILABLE]],
[fr, [NOT_AVAILABLE]],
[lv, [NOT_AVAILABLE]],
[mk, [NOT_AVAILABLE]],
[ru, [NOT_AVAILABLE]],
])

#     123456789012345678901234567890123456789012345678
ERROR(INSUFFICIENT_BUFFER, [
[cz, [Zvětšete buffer!]],
[sk, [Zväčšite buffer!]],
[pl, [Zwiększyć bufor!]],
[en, [Increase the buffer!]],
[de, [Erhöhen Sie die Puffer!]],
[fr, [Augmenter le tampon!]],
[lv, [Palielināt buferi!]],
[mk, [Зголемување на тампон!]],
[ru, [Увеличьте буфер!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(ARCH_COMPUTING, [
[cz, [Chybná konfigurace výpočtů archivace!]],
[sk, [Chybná konfigurácia výpočtov archivácia!]],
[pl, [Nieprawidłowe archiwum obliczeń konfiguracji!]],
[en, [Wrong configuration calculations archive!]],
[de, [Falsche Konfiguration Berechnungen Archiv!]],
[fr, [Mauvaise configuration de calculs d'archive!]],
[lv, [Nepareizs konfigurācija aprēķini arhīvu!]],
[mk, [Погрешна конфигурација пресметки Архива!]],
[ru, [Неправильная конфигурация расчеты архиве!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(ARCH_OUT_OF_MEMORY, [
[cz, [Příliš mnoho záznamů, snižte jejich počet!]],
[sk, [Príliš veľa záznamov, znížte ich počet!]],
[pl, [Zbyt wiele rekordów, zmniejszi ich liczby!]],
[en, [Too many records, reduce their number!]],
[de, [Zu viele Schallplatten, Verringerung der Zahl!]],
[fr, [Trop de dossiers, de réduire leur nombre!]],
[lv, [Pārāk daudz ierakstu, samazināt to skaitu!]],
[mk, [Премногу документи, се намали нивниот број!]],
[ru, [Слишком много записей, сократить их число!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(ARCH_REC_OVERSIZE, [
[cz, [Snižte počet hodnot pro archivaci!]],
[sk, [Znížte počet hodnôt pre archiváciu!]],
[pl, [Zmniejszyć liczbę wartości do archiwizacji!]],
[en, [Reduce the number of values for archiving!]],
[de, [Reduzieren Sie die Anz. der Werte für dieArch.!]],
[fr, [Réduisez le nombre de valeurs pour l'archivage!]],
[lv, [Samazināt vērtību skaitu arhivēšanai!]],
[mk, [Намалување на бројот на вредности за архивирање!]],
[ru, [Уменьшить количество значений дляархивирования!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(BROKEN_SEQUENCE, [
[cz, [Porušena sekvence požadavků!]],
[sk, [Porušená sekvencie požiadaviek!]],
[pl, [Narusza kolejności wymagania!]],
[en, [Violated the sequence requirements!]],
[de, [Verletzt die Sequenz Anforderungen!]],
[fr, [Violé les exigences séquence!]],
[lv, [Pārkāpis secību prasībām!]],
[mk, [Прекршени низа барања!]],
[ru, [Нарушается последовательность требованиям!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(CFG_READ, [
[cz, [Chyba pri čtení konfigurace!]],
[sk, [Chyba pri čítaní konfigurácie!]],
[pl, [Błąd odczytu konfiguracji!]],
[en, [Error reading configuration!]],
[de, [Fehler beim Lesen der Konfiguration!]],
[fr, [De configuration Erreur de lecture!]],
[lv, [Kļūda lasot konfigurācijas!]],
[mk, [Грешка при читањето на конфигурација!]],
[ru, [Ошибка при чтении конфигурации!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(CFG_WRITE, [
[cz, [Chybný zápis konfigurace!]],
[sk, [Chybný zápis konfigurácie!]],
[pl, [Błędny wpis konfiguracji!]],
[en, [Incorrect configuration entry!]],
[de, [Falsche Konfiguration Eintrag!]],
[fr, [Entrée de configuration incorrect!]],
[lv, [Nepareiza konfigurācija ieraksts!]],
[mk, [Неправилна конфигурација влез!]],
[ru, [Неправильная конфигурация запись!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(DATA_CHAR, [
[cz, [Nalezen zakázaný znak!]],
[sk, [Nájdený zakázaný znak!]],
[pl, [Znalezione przedstawiają charakter!]],
[en, [Found depict character!]],
[de, [Gefunden schildern Zeichen!]],
[fr, [Trouvé dépeignent caractère!]],
[lv, [Atrasts attēlot raksturs!]],
[mk, [Резултати отслика карактер!]],
[ru, [Найдено изобразить характер!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_DELETE, [
[cz, [Data se nepodařilo vymazat!]],
[sk, [Dáta sa nepodarilo vymazať!]],
[pl, [Dane nie mogły zostać usunięte!]],
[en, [The data could not delete them!]],
[de, [Die Daten konnten nicht gelöscht werden!]],
[fr, [Les données ne peuvent pas être supprimés!]],
[lv, [Datus nevar izdzēst!]],
[mk, [Податоците не може да биде избришан!]],
[ru, [Данные не могут удалить их!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_FLOAT, [
[cz, [Float číslo nelze použít!]],
[sk, [Float číslo nemožno použiť!]],
[pl, [Float liczba nie można użyć!]],
[en, [Float number can not be used!]],
[de, [Float Zahl kann nicht verwendet werden!]],
[fr, [Nombre flottant peut pas être utilisé!]],
[lv, [Float numuru nevar izmantot!]],
[mk, [Децимален број не може да се користи!]],
[ru, [Число с плавающей точкой не могут бытьИспользо!]],
])

#     123456789012345678901234567890123456789012345678
INFO(DATA_FULL, [
[cz, [Byl dosažen maximální počet záznamů!]],
[sk, [Bol dosiahnutý maximálny počet záznamov!]],
[pl, [Maksymalna liczba rekordów!]],
[en, [The maximum number of records!]],
[de, [Die maximale Anzahl der Datensätze!]],
[fr, [Le nombre maximum d'enregistrements!]],
[lv, [Maksimālais ierakstu skaits!]],
[mk, [Максимален број на записи!]],
[ru, [Максимальное количество записей!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_INIT, [
[cz, [Selhala inicializace dat!]],
[sk, [Zlyhala inicializácia dát!]],
[pl, [Nie udało się zainicjować danych!]],
[en, [Failed to initialize data!]],
[de, [Initialisierung der Daten fehlgeschlagen!]],
[fr, [Échec de l'initialisation des données]],
[lv, [Neizdevās inicializēt datus!]],
[mk, [Не успеа да ги иницијализира податоците!]],
[ru, [Не удалось инициализировать данные!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(DATA_INDEX, [
[cz, [Index je mimo dovolené meze!]],
[sk, [Index je mimo dovolenky medze!]],
[pl, [Index znajduje się poza dopuszczalne granice!]],
[en, [Index was outside the permissible limits!]],
[de, [Der Index war außerhalb der zulässigen Grenzen!]],
[fr, [Index était en dehors des limites permises!]],
[lv, [Saturs ir ārpus pieļaujamās robežās!]],
[mk, [Индекс беше надвор од дозволените граници!]],
[ru, [Индекс был вне допустимых пределов!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_INTERVAL, [
[cz, [Zakázaný interval!]],
[sk, [Zakázaný interval!]],
[pl, [Zabroniony przedział!]],
[en, [Banned interval!]],
[de, [Gebannt Intervall!]],
[fr, [Banni d'intervalle!]],
[lv, [Banned intervālu!]],
[mk, [Забрана интервал!]],
[ru, [Запрещенные интервал!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_LIMITS, [
[cz, [Chyba! Zkontrolujte nastavované rozsahy!]],
[sk, [Chyba! Skontrolujte nastavovanej rozsahy!]],
[pl, [Błąd! Sprawdź zakres!]],
[en, [Error! Check the Auto-range!]],
[de, [Fehler! Überprüfen Sie die Auto-Sortiment!]],
[fr, [Erreur! Vérifiez l'Auto-gamme!]],
[lv, [Kļūda! Pārbaudiet Auto-diapazons!]],
[mk, [Грешка! Проверете Авто опсег!]],
[ru, [Ошибка! Проверьте Авто-диапазоне!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_NOT_POWER_OF_TWO, [
[cz, [Počet záznamů není 2^n!]],
[sk, [Počet záznamov nie je 2^n!]],
[pl, [Liczba rekordów nie jest 2^n!]],
[en, [Number of records is not 2^n!]],
[de, [Anzahl der Datensätze nicht 2^n!]],
[fr, [Nombre d'enregistrements n'est 2^n!]],
[lv, [Ierakstu skaits nav 2^n!]],
[mk, [Број на рекорди не 2^n!]],
[ru, [Число записей, нет 2^n!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_READ, [
[cz, [Data nelze načíst!]],
[sk, [Dáta nemožno načítať!]],
[pl, [Dane nie mogą być załadowane!]],
[en, [Data could not be loaded!]],
[de, [Daten konnten nicht geladen werden!]],
[fr, [Les données n'ont pas pu être chargé!]],
[lv, [Datus nevar ielādēt!]],
[mk, [Податоците не можеше да се вчита!]],
[ru, [Данные не может быть загружен!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_RESET, [
[cz, [Selhalo čtení nebo zápis dat!]],
[sk, [Zlyhalo čítanie alebo zápis dát!]],
[pl, [Nie udało się odczytać lub pisać danych!]],
[en, [Failed to read or write data!]],
[de, [Fehler beim Lesen oder Schreiben von Daten!]],
[fr, [Impossible de lire ou écrire des données!]],
[lv, [Neizdevās lasīt, ne rakstīt datus!]],
[mk, [Не успеав да ја прочита или запише податоци!]],
[ru, [Не удалось прочитать или записать данные!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_TOO_LOW_IDX, [
[cz, [Příliš nízký počet záznamů!]],
[sk, [Príliš nízky počet záznamov!]],
[pl, [Za niska liczba rekordów!]],
[en, [Too low number of records!]],
[de, [Zu geringe Anzahl von Datensätzen!]],
[fr, [Nombre trop faible de dossiers!]],
[lv, [Pārāk maz ierakstu!]],
[mk, [Премногу мал број на рекорди!]],
[ru, [Слишком низкое количество записей!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_VALIDATION, [
[cz, [Selhala validace dat!]],
[sk, [Zlyhala validácia dát!]],
[pl, [Sprawdzanie poprawności danych nie powiodłoSię!]],
[en, [Data validation failed!]],
[de, [Datenvalidierung fehlgeschlagen!]],
[fr, [La validation des données a échoué!]],
[lv, [Datu validācija neizdevās!]],
[mk, [Валидација на податоци не успеа!]],
[ru, [Проверка данных не удалось!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DATA_WRITE, [
[cz, [Chyba při zápisu dat!]],
[sk, [Chyba pri zápise dát!]],
[pl, [Błąd podczas zapisywania danych!]],
[en, [Error writing data!]],
[de, [Fehler beim Schreiben der Daten!]],
[fr, [L'écriture des données d'erreur!]],
[lv, [Kļūda, rakstot datus!]],
[mk, [Грешка при запишувањето на податоци!]],
[ru, [Ошибка записи данных!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(DLEN, [
[cz, [Neočekávaná délka přijatých dat!]],
[sk, [Neočakávaná dĺžka prijatých dát!]],
[pl, [Nieoczekiwana długość odebranych danych!]],
[en, [Unexpected length of data received!]],
[de, [Unerwartete Länge der empfangenen Daten!]],
[fr, [Longueur inattendue de données reçues!]],
[lv, [Negaidītas garums datu saņemts!]],
[mk, [Неочекувано должина на податоците добиени!]],
[ru, [Неожиданный длина данных, полученных!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(CHAR, [
[cz, [Přijat zakázaný znak!]],
[sk, [Prijatý zakázaný znak!]],
[pl, [Przyjęty niedozwolony charakter!]],
[en, [Adopted disallowed character!]],
[de, [Angenommen nicht erlaubte Zeichen!]],
[fr, [Adopté caractère non admis!]],
[lv, [Pieņemts neattaisnot raksturs!]],
[mk, [Усвоена е забрането карактер!]],
[ru, [Принято неразрешенный символ!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(FLASH_WRITE, [
[cz, [Selhal zápis do Flash paměti!]],
[sk, [Zlyhal zápis do Flash pamäte!]],
[pl, [Nie udało się zapisać do pamięci Flash!]],
[en, [Writing to flash memory failed!]],
[de, [Konnte im Flash-Speicher!]],
[fr, [Ecrire à la mémoire flash a échoué!]],
[lv, [Rakstot flash atmiņas neizdevās!]],
[mk, [Пишување на флеш меморија не успеа!]],
[ru, [Не удалось флэш-памяти!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(LCD_WRITE, [
[cz, [Selhal zápis na LCD!]],
[sk, [Zlyhal zápis na LCD!]],
[pl, [Nie udało się zapisać na LCD!]],
[en, [Failed to write on the LCD!]],
[de, [Konnte auf dem LCD zu schreiben!]],
[fr, [Impossible d'écrire sur l'écran LCD!]],
[lv, [Neizdevās rakstīt uz LCD!]],
[mk, [Не успеав да се напише на LCD!]],
[ru, [Не удалось записать на ЖК!]],
])

#     123456789012345678901234567890123456789012345678
INFO(NO_RESOURCE, [
[cz, [Požadovaná data nejsou k dispozici!]],
[sk, [Požadované dáta nie sú k dispozícii!]],
[pl, [Wymagane dane nie są dostępne!]],
[en, [The required data are not available!]],
[de, [Die erforderlichen Daten sind nicht verfügbar!]],
[fr, [Les données requises ne sont pas disponibles!]],
[lv, [Nepieciešamie dati nav pieejami!]],
[mk, [Бараните податоци не се на располагање!]],
[ru, [Необходимые данные не доступны!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(PASSWD_CONFIRM, [
[cz, [Hesla jsou různá!]],
[sk, [Heslá sú rôzne!]],
[pl, [Hasła są różne!]],
[en, [Passwords are different!]],
[de, [Passwörter sind anders!]],
[fr, [Les mots de passe sont différents!]],
[lv, [Paroles ir savādāk!]],
[mk, [Лозинките се различни!]],
[ru, [Пароли разные!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(PASSWD_REFUSE, [
[cz, [Nevhodné heslo!]],
[sk, [Nevhodné heslo!]],
[pl, [Niewłaściwe hasło!]],
[en, [Inadequate password!]],
[de, [Unzureichende Passwort!]],
[fr, [L'insuffisance de passe!]],
[lv, [Neatbilstoša paroli!]],
[mk, [Несоодветна лозинка!]],
[ru, [Недостаточное пароль!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(PASSWD, [
[cz, [Heslo je špatně!]],
[sk, [Heslo je zle!]],
[pl, [Hasło jest nieprawidłowe!]],
[en, [The password is wrong!]],
[de, [Das Passwort ist falsch!]],
[fr, [Le mot de passe est faux!]],
[lv, [Parole ir nepareizi!]],
[mk, [Лозинката е во ред!]],
[ru, [Неверный пароль!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(TIME_FMT, [
[cz, [Chybný formát času!]],
[sk, [Chybný formát času!]],
[pl, [Zły format czasu!]],
[en, [Wrong time format!]],
[de, [Falsche Zeitformat!]],
[fr, [Mauvaise format de l'heure!]],
[lv, [Nepareizs laika formāts!]],
[mk, [Погрешен формат на време!]],
[ru, [Неправильно формат времени!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(REJECT_WRITE, [
[cz, [Zápis nelze provést!]],
[sk, [Zápis nie je možné vykonať!]],
[pl, [Pisanie nie jest to możliwe!]],
[en, [Minutes can make!]],
[de, [Minuten machen können!]],
[fr, [Ecriture ne peut être fait!]],
[lv, [Rakstīšana nevar izdarīt!]],
[mk, [Пишување не може да се направи!]],
[ru, [Минуты можно сделать!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(RTC_READ, [
[cz, [Z RTC nelze číst!]],
[sk, [Z RTC sa nedá čítať!]],
[pl, [Nie można odczytać RTC!]],
[en, [The RTC can not read!]],
[de, [Die RTC kann nicht lesen!]],
[fr, [Le RTC ne peut pas lire!]],
[lv, [RTC nevar izlasīt!]],
[mk, [На RTC не може да чита!]],
[ru, [RTC не может прочитать!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(WRONG_DATA, [
[cz, [Data nelze použít!]],
[sk, [Dáta nie je možné použiť!]],
[pl, [Dane nie mogą być używane!]],
[en, [Data can not be used!]],
[de, [Die Daten können nicht verwendet werden!]],
[fr, [Les données ne peuvent pas être utilisés!]],
[lv, [Datus nevar izmantot!]],
[mk, [Податоците не може да се користи!]],
[ru, [Данные не могут быть использованы!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(MBUS_ADDRESS, [
[cz, [Maximální adresa je 250!]],
[sk, [Maximálna adresa je 250!]],
[pl, [Maksymalna adres jest 250!]],
[en, [Maximum address is 250!]],
[de, [Maximale Adresse ist 250!]],
[fr, [L'adresse maximum est de 250!]],
[lv, [Maksimālais adrese ir 250!]],
[mk, [Максимална адреса е 250!]],
[ru, [Максимальный адрес 250!]],
])

#     123456789012345678901234567890123456789012345678
ERROR(UART_ENCODE, [
[cz, [Chybná konfigurace pro kódování dat.]],
[sk, [Chybná konfigurácia pre kódovanie dát.]],
[pl, [Niewłaściwa konfiguracja do kodowania danych.]],
[en, [Incorrect configuration for data encoding.]],
[de, [Eine falsche Konfiguration für die Datencodierung.]],
[fr, [Une configuration incorrecte pour l'encodage des données.]],
[lv, [Nepareiza konfigurācija datu kodējumu.]],
[mk, [Неправилна конфигурација за кодирање на податоци.]],
[ru, [Неправильная конфигурация для кодирования данных.]],
])

#     123456789012345678901234567890123456789012345678
ERROR(UART_BFR_CFG, [
[cz, [Chybná konfigurace paměti (UART).]],
[sk, [Chybná konfigurácie pamäte (UART).]],
[pl, [Nieprawidłowa konfiguracja pamięci (UART).]],
[en, [Incorrect configuration memory (UART).]],
[de, [Falsche Konfigurationsspeicher (UART).]],
[fr, [Mémoire de configuration incorrecte (UART).]],
[lv, [Nepareiza konfigurācija atmiņa (UART).]],
[mk, [Неправилна конфигурација меморија (UART).]],
[ru, [Неправильная конфигурация памяти (UART).]],
])

#     123456789012345678901234567890123456789012345678
ERROR(MBUS_BFR_CFG, [
[cz, [Chybná konfigurace paměti (M-Bus).]],
[sk, [Chybná konfigurácie pamäte (M-Bus).]],
[pl, [Nieprawidłowa konfiguracja pamięci (M-Bus).]],
[en, [Incorrect configuration memory (M-Bus).]],
[de, [Falsche Konfigurationsspeicher (M-Bus).]],
[fr, [Mémoire de configuration incorrecte (M-Bus).]],
[lv, [Nepareiza konfigurācija atmiņa (M-Bus).]],
[mk, [Неправилна конфигурација меморија (M-Bus).]],
[ru, [Неправильная конфигурация памяти (M-Bus).]],
])

#     123456789012345678901234567890123456789012345678
INFO(BFR_SIZE, [
[cz, [Zvětšete paměť pro linku!]],
[sk, [Zväčšiť pamäť pre linku!]],
[pl, [Zwiększ ilość pamięci dla linii!]],
[en, [Increase the memory for the line!]],
[de, [Erhöhen Sie den Speicher für die Linie!]],
[fr, [Augmentez la mémoire de la ligne!]],
[lv, [Palielināt atmiņu uz līnijas!]],
[mk, [Се зголеми меморијата на линија!]],
[ru, [Увеличьте объем памяти для линии!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(NO_AUX_SUM, [
[cz, [Nejsou uživatelské sumy!]],
[sk, [Nie sú užívateľské sumy!]],
[pl, [Nie sumą użytkownika!]],
[en, [No user sum!]],
[de, [Kein Benutzer Summe!]],
[fr, [Aucun utilisateur somme!]],
[lv, [Neviens lietotājs summa!]],
[mk, [Нема корисник сума!]],
[ru, [Нет пользователей сумма!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(NO_USR_CONST, [
[cz, [Nejsou uživatelské konstanty!]],
[sk, [Nie sú užívateľské konštanty!]],
[pl, [Brak stałych użytkowników!]],
[en, [No user constants!]],
[de, [Keine Benutzerkonstanten!]],
[fr, [Pas de constantes d'utilisateur!]],
[lv, [Nav lietotāju konstantes!]],
[mk, [Нема корисник константи!]],
[ru, [Нет пользовательских констант!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(NO_FIX_CONST, [
[cz, [Nejsou pevné konstanty!]],
[sk, [Nie sú pevné konštanty!]],
[pl, [Istnieją ustalone stałe!]],
[en, [There are fixed constants!]],
[de, [Es gibt feste Konstanten!]],
[fr, [Il y a des constantes fixes!]],
[lv, [Ir fiksēti konstantes!]],
[mk, [Постојат основни константи!]],
[ru, [Есть фиксированные постоянные!]],
])

#     123456789012345678901234567890123456789012345678
WARNING(NO_AUX_VAR, [
[cz, [Nejsou pomocné proměnné!]],
[sk, [Nie sú pomocné premenné!]],
[pl, [Są to zmienne pomocnicze!]],
[en, [There are no auxiliary variables!]],
[de, [Es gibt Hilfsgrößen!]],
[fr, [Il y a des variables auxiliaires!]],
[lv, [Ir papildierīces mainīgie!]],
[mk, [Постојат помошни варијабли!]],
[ru, [Есть вспомогательные переменные!]],
])
