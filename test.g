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
AddSet(set,"banana"); #Added into the right place (sorted)
AddSet(set,"apple"); #No change since already there
breakfast := ["tea","apple","egg"];
Intersection(breakfast,set);

[1..999999]; #Range
[1..99]=[1,2..99];
[1,3..999999]; #Step is 2
a:=[-2,-1,0,1,2,3,4,5];
IsRange(a);
ConvertToRange(a);; a;

pp := [ (1,3,2,6,8),(1,6)(2,7,8),(1,5,7)(2,3,8,6),
        (1,8,9)(2,3,5,6,4),(1,9,8,6,3,4,7,2) ];;
prod := ();
for p in pp do
    prod:=prod*p;
od;
prod;

n:=1333;;
factors:= [];;
for p in primes do
    while n mod p = 0 do
        n:=n/p;
        Add(factors,p);
    od;
od;
factors;
n;

primes:=[];;
numbers:=[2..1000];;
for p in numbers do
    Add(primes,p);
    for n in numbers do
        if n mod p = 0 then
            Unbind(numbers[n-1]); #remove it from the list of numbers
        fi;
    od;
od;

Product([1..15]); #Equellent to haskells fold with operator *
Product(pp);
Sum([1..15]); #Equellent to haskells fold with operator +
List([1..10],cubed); #Equellent to haskells map
Sum([2..10],cubed); # fold(map([2..10],cubed),'+')

Filtered(primes,x->x<30); #Equellent to haskells filter

primes{[1..10]}; #{} Generates a subset

list:=[1,2,3,4];
ForAll(list,x->x>0); #Is it true for all elements in list?
ForAll(list,x->x in primes);

IsRowVector(list); #Its a vector
list*list; #Scalar product of the vectors

m:=[[1,-1,1],[2,0,-1],[1,1,1]]; #Matrix
m[2][1]; #Access element in matrix

Display(m); #Pretty print

