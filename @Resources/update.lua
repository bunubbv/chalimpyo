function updateExecute(p, hash, lo)
    path = SKIN:MakePathAbsolute(p)
    command = string.format('powershell -command "cd \'%s\';wget %s\'&\'download=1 -OutFile Chalimpyo_Update.zip;$pubHash = \'%s\';$fileHash = Get-FileHash Chalimpyo_Update.zip -Algorithm md5;if($fileHash.Hash -eq $pubHash){;expand-archive -Force -path \'Chalimpyo_Update.zip\';cd ../;cd ../;cp \'Chalimpyo/@Resources/Chalimpyo_Update\' -Destination \'Chalimpyo_Update\' -Recurse -Force;RD Chalimpyo -Recurse;mv Chalimpyo_Update Chalimpyo;}else{;exit;}"', path, lo, hash)

    os.execute(command)
end