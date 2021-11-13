#!/bin/bash

: '
    This program will
    show how to use
    single & double quotes
    with variables
'

var0=aman
echo $var0 # aman

: '
    var=aman => correct
    var=aman raj => throws error
    var="aman raj" => works fine
'

var1='yash raj'

var2="Shiva"

echo $var1
echo "$var1   $var2" # yash raj   Shiva
echo $var1 $var2 # yash raj Shiva
echo $var1$var2 # yash rajShiva