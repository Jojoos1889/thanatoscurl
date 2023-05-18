#usr/bin/bash
echo ╱╭╮╭╮╱╱╱╱╱╱╱╱╱╱╭╮
echo ╭╯╰┫┃╱╱╱╱╱╱╱╱╱╭╯╰╮
echo ╰╮╭┫╰━┳━━┳━╮╭━┻╮╭╋━━┳━━╮
echo ╱┃┃┃╭╮┃╭╮┃╭╮┫╭╮┃┃┃╭╮┃━━┫
echo ╱┃╰┫┃┃┃╭╮┃┃┃┃╭╮┃╰┫╰╯┣━━┃
echo ╱╰━┻╯╰┻╯╰┻╯╰┻╯╰┻━┻━━┻━━╯
read -p "target:" targetvar

nmap -Pn -T4 -A -p- $targetvar
testssl -9 $targetvar
nikto --host $targetvar
