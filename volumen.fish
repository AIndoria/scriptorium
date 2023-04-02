# Upload a file or pipe the output to my pastebin : https://volumen.civitat.es
# Usage: cat xyz.md | volumen
# Usage 2: curl xyz | volumen
# Abe Indoria


function volumen
curl --data-binary @/dev/stdin https://volumen.civitat.es
end
