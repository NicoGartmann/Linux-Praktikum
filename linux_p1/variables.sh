#!/bin/bash

Var1=SomeContent
Var2="SomeContent"
Var3=3
Var4="3"

echo ${Var1}
echo ${Var2}
echo ${Var3}
echo ${Var4}

echo $Var1Extended # Versucht die Variable "Var1Extended" auszugeben, existiert aber nicht -> nichts wird ausgegeben
echo ${Var1}Extended # Konkateniert Inhalt von Var1 (SomeContent) mit Extended -> Ergibt SomeContentExtended

echo $Var1$Var3
echo ${Var1}${Var3}
# Kein Unterschied hier

echo "The content of Var1 is: ${Var1}" # Variableninhalt von Var1 wird ausgegeben
echo 'The content of Var1 is: ${Var1}' # ${Var1} Wird als String interpretiert und nicht als Variable


