# Uploads a specific image file to Tabula Civitates : https://tabula.civitat.es
# Usage: Save as fish function, and then use cat xyz.png | tabula
# Abe Indoria

function tabula
curl -F format=txt -F "source="@/dev/stdin -F key=Tabula_Civitates 'https://tabula.civitat.es/api/1/upload'
end
