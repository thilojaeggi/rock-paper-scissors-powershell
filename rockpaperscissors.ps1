$playerpoints = 0
$computerpoints = 0
$optionen = @("schere", "stein", "papier")
do {
    Clear-Host
    Write-Host "Deine Punktzahl: $playerpoints" -ForegroundColor Green
    Write-Host "Computer Punktzahl: $computerpoints" -ForegroundColor Red
    $question = Read-Host $optionen
    $random = Get-Random -Minimum 0 -Maximum 2
    switch ($question) {
        "schere" {
            switch ($optionen[$random]) {
                "schere" {
                    echo "Unentschieden"
                }
                "stein" {
                    echo "Computer gewinnt"
                    $computerpoints++ 
                }
                "papier" {
                    echo "Spieler gewinnt"
                    $playerpoints++
                }
            }
        }
        "stein" {
            switch ($optionen[$random]) {
                "schere" {
                    echo "Spieler gewinnt"
                    $playerpoints++
                }
                "stein" {
                    echo "Unentschieden"
                }
                "papier" {
                    echo "Computer gewinnt"
                    $computerpoints++   
                }
            }
        }
        "papier" {
            switch ($optionen[$random]) {
                "schere" {
                    echo "Computer gewinnt"
                    $computerpoints++ 
                }
                "stein" {
                    echo "Spieler gewinnt"
                    $playerpoints++ 
                }
                "papier" {
                    echo "Unentschieden" 
                }
            }
            
        }
        "abbrechen" {
            exit
        }
    }
    Start-Sleep 2
}
while ($computerpoints -lt 3 -AND $playerpoints -lt 3)
if ($computerpoints -gt $playerpoints) {
    Write-Host "Computer gewinnt das Spiel" -ForegroundColor red
}
else {
    Write-Host "Spieler gewinnt das Spiel" -ForegroundColor green
}
PAUSE