# Quiz 3.2

function Count-VowlesAndConsonants {
    param (
        [string]$GivenWord
    )
        $Vowel = 'a','e','i','o','u'
        $Con = 'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'
        $CountVowel=0
        $CountCon=0
        foreach ($Character in $GivenWord.ToCharArray()) {
           if ($Character -in $Vowel) {
           $CountVowel++
           }
           elseif ($Character -in $Con) {
           $CountCon++
           }
        
        
        }
            return $CountVowel,$CountCon
}

Count-VowlesAndConsonants -GivenWord 'vision'