#to read the file Read("filename.g")
17 mod 3;
(1,2,3)*(1,2); #Permutation product
(1,2,3)^-1; #Inverse
2^(1,2,3); #Image of a point under the permutation
(1,2,3)^(1,2); #Conjugate that is
((1,2)^-1)*(1,2,3)*(1,2)=(1,2,3)^(1,2); #Showing the above conjugate

Factorial(17);
Gcd(1234,5678);
Print(1234,"\n");

cubed:= x->x^3;
cubed(5);

primes:=[2,3,5,7,11,13,17,19,23,29];
Append(primes,[31,37]);
Length(primes);
primes[7];
primes[14]:=43;
primes[20]:=71; #Misses some elements, but works
primes; #Still counts the missed elements
Length(primes);

Position(primes,17); #Find the element

i:=1;; #No output

immutable:=Immutable(primes);;

set:=Set(["apple","cherry","plum"]);;
"apple" in set;
"banana" in set;
AddSet(set,"banana"); #added into the right place (sorted)
breakfast := ["tea","apple","egg"];
Intersection(breakfast,set);


