
if (pbpaste  | grep -Eq  '^cd "[^"]*" && sh "[^"]*/site_publish_logs/sh_\d*\.sh" && open ""') 
then
    echo "========== MWEB AUTO PUBLISH START ==========" 
    echo "Runing command:"
    pbpaste

    if pbpaste | sh
    then

        echo "Success!"
        echo "clean pasteboard..."
        echo -n "" | pbcopy
        echo "==========  MWEB AUTO PUBLISH END  =========="
        echo "close terminal 5s later..."
        sleep 5
        exit

    else
        echo "Failed!"
        echo "==========  MWEB AUTO PUBLISH END  =========="
    fi

fi
