# Punto e, Integracion con Simpson ----------------------------------------
simpson = function(f,a,b,m){
  h=(b-a)/m
  s=0
  x=a
  for (i in 1:m)
    s=s+2*((i%%2)+1)*f(x+i*h)
  s=h/3*(f(a)+s+f(b))
  return(s)
}
f= function(x) sqrt(1+(cos(x)^2))
E=0.0001
prop=0
aux=0
i=0
cont=0
repeat{
cont=cont+1
i=4+i
aux=result
result=simpson(f,0,2,i)
cat("iteracion ",cont)
print(result)
  if(i!=4 && aux-result < E) break
}
