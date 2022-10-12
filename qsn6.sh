#!/bin/bash
for i in u11 u22 u33; do #u44 u44 u55... istənilən qədər işləyəcək
        if grep -q $i /etc/passwd; then
        read -p "$i useri mövcuddur, Silinsin? Hə/yox" cavab
                case $cavab in
                Hə)
                 userdel -r $i;
                echo $i useri sildiniz;;
                yox)
                echo $i useri silmədiniz;;
                *)
                echo $i useri silmədiniz;;
                esac                 
        else
                useradd $i;
                echo $i useri əlavə olundu;
        fi
done        