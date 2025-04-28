# REpont Plusz

<b>Ez a git repo a 2024/2025-ös iskolai év végi projekthez lett létrehozva, és a létezésének oka a változtatások követése a projekt haladása közben.</b><br>
Maga a projektnek a célja, hogy a felhasználóknak biztosítsunk egy olyan felületet, ahol tudják követni, hogy mennyi palackot váltottak vissza, és ezekért díjakat kapnak, emellet van egy gépkereső, amelyben olyan települések láthatóak amiben találhatók REpont gépek, így meg tudják nézni, hogy melyek vannak hozzájuk a legközelebb.<br>
<br>
Rendszer követelmények:
|         | Ajánlott      | Minimális  |
| ------------- |-------------:| -----:|
| Processzor (CPU)      | Intel Core i3-2100 3.1GHz | Intel Pentium G630 |
| Operációs Rendszer (OS)      | Windows 10   |  Windows 10 |
| RAM | 4GB      |   2GB |
| Tárhely  | 1GB      |   1GB |
| Internet | Szélessávú      |  Szélessávú |
| Videókártya  | NVIDIA GeForce 605      |   Nvidia GeForce 405 |
## Szoftver követelmények
Legújabb NodeJS, PHP Composer, XAMPP, és egy aktívan támogatott webböngésző
## Használati útmutató
Először el kell indítani a XAMPP-ot, azon belül az Apache Web Servert, és a MySQL modulokat, utána egy parancssorban elnavigálni oda, ahová le lett töltve/kitömörítve a Laravel, és ott lefuttatni egy `php artisan migrate --seed` parancsot, amivel fel lesz töltve az adatbázis részlegesen (ha kérdezi, hogy létre akarjuk-e hozni, akkor engedélyezzük). Utána vissza kell menni XAMPP-ra és ott a MySQL modulnál rálépni az Admin gombra, ami elvisz a phpMyAdmin adatbázis kezelő webes felületre, utána a baloldali menüben megkeresni a ’repont’ nevezetű adatbázist, és rákattintani utána felül az importálás gombra, és ott a fájl importálásnál betenni a’ settlementNmachineImport.sql’ nevezetű fájlt, miután feltöltődött, utána letekerni és rákattintani az importálás gombra. Ezután az előbb említett parancssorban, hogy fusson a backend, ezt a parancsot kell beírni ’php artisan serve’. Utána kell nyitni egy másik parancssort úgy, hogy ami most lett elindítva azt nem zárjuk be, és az új parancssorral pedig elnavigálunk az Angular mappájába, ahova le lett töltve, és ott lefuttatunk egy ’ng serve’ parancsot, és ezzel így már használható lesz a webalkalmazás.
