import turtle

pat = turtle.Turtle()
pat.forward(100)


count = int(input("How far? >"))
while (count > 0):
        pat.forward(count)
        pat.right(37)
        count = int(input("How far? >"))


turtle.mainloop()
