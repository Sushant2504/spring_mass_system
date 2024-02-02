from vpython import*
from time import*
import tkinter as tk
import math
scene = canvas(title ="PBL", width = 650, height = 500, center = vec(0, 0, 0), background = color.white)

springLength = 0.05    # meters
springStiffness = 20   # Newtons per meter
spring = helix( pos = vec(0, 0, 0), axis = vec(0, -2*springLength, 0),thickness=0.05,radius = 0.09,color=color.white)
spring.coils = 20

table = box( pos = vec(0,0,0), size = vec(1.6, 0.08, 2), color = color.orange)
# floor = box( pos = vec(0, -50*springLength, 0), size =  vec(3, 0.07, 2))

# cylinder(pos=vector(0.9,0,0),radius=0.05,axis=vector(0,-1,0),length=2.5)
# cylinder(pos=vector(-0.9,0,0),radius=0.05,axis=vector(0,-1,0),length=2.5)




springLength = 0.1
phi = math.pi/2
m = float(input("Enter the value of mass: "))
k = float(input("Enter the value of k: "))
zeta = float(input("Enter the value of zeta: "))
gravField = float(input("Enter the value of Gravity: "))
wn = math.sqrt(k/m)
wd = wn*math.sqrt(1-(zeta**2))
A = m*gravField/k


bobMass = m   # kilograms
# gravField = 9.8             # Newtons per kilogram
velocity = vec(0,0,0)   # starts by falling from rest
bob = box(color=color.red)
bob.pos = spring.pos + spring.axis
bob.axis = vec(0, 0.002, 0)
bob.size = vec(0.3, 0.3, 0.3)

dragCoefficient = 0.1

t = 0         # start time
dt = 0.01

f1=gcurve()

while(True):

    rate(1/dt)
    t = t + dt

    bob.pos = vec(0, A*(math.e**(-zeta*wn*t))*math.sin((wd*t)-phi)-A, 0)

    spring.axis = bob.pos

    bob.axis = bob.axis.mag * (spring.pos - bob.pos).norm()

    f1.plot(t,bob.pos.y+A)

    print(t,bob.pos.y+A)