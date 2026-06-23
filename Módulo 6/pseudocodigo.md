def descuento(V):

  if V>150000:
    D = V* 0.05
    print (f"el descunto es:{D}")
    
  else: 
    print("no hay descuento")

V = float(input("Indique el valor del producto: "))
descuento(V)




--------------------------------------------------




L= float(input("ingrese valor de el lado del hexagono:"))
a=float(input("ingrese apotema del hexagono:"))
P=(L*6)

def perimetro(L):
    P=L*6
    print(P)


def Area(P,a):
    A=(P*a)/2
    print(A)

perimetro(L)
Area(P,a)