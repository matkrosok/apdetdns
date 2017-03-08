# apdetdns
Script sederhana ini mempermudah tugas sysadmin untuk menambahkan database blacklist DNS TRUST Positif dari KOMINFO. Database domain biasanya diperoleh via email dari KOMINFO atau bisa juga didownload di http://trustpositif.kominfo.go.id/files/

Requirement :
- Sudah terinstall DNS Server Bind
- Sudah terconfigurasi RPZ (Responce policy zone)

Usage :
- Silahkan edit variabel IP, PATH_NAMED, dan FILE_ZONE
- Set chmod +x apdetdns.sh
- Untuk menjalankan ketik ./apdetdns.sh, masukkan nama file update DNS TRUST+ dari kOMINFO, setelah selesai diproses restart service named

