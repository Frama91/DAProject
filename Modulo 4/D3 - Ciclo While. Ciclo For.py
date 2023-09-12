
## 1.
nome_scuola = "Epicode"
x=0
while x < len(nome_scuola):
    print(nome_scuola[x])
    x += 1

## 2.
numero = 0
frase_2 = []
while numero < 21:
    frase_2.append(str(numero))
    numero += 1
print(" - ".join(frase_2))

## 3.
fr_3 = ""
pt_3 = 0
while pt_3 < 11:
    fr_3 = (fr_3 + str(2**pt_3) + " - ")
    pt_3 += 1
print(fr_3[0:-2])

## 4.
pt_4_N = int(input("Inserire, di seguito, le N potenze di 2 che si desiderano calcolare: "))
fr_4 = str("")
pt_4 = int(0)
while pt_4 <= pt_4_N:
    fr_4 = (fr_4 + str(2**pt_4) + " - ")
    pt_4 += 1
print( "La lista delle " + str(pt_4_N) + " potenze di 2 è:\n" + fr_4[0:-2])

## 5 parte 1
studenti = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith","Grace", "Henry"]
corsi = ["Cybersecurity", "Data Analyst", "Backend", "Frontend", "Data Analyst", "Backend", "Frontend"]
if len(studenti) == len(corsi):
    print ("Le due liste hanno la stessa lunghezza")
else: print("Le liste hanno lunghezza differente")

## 5 parte 2
studenti_2 = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith","Grace", "Henry"]
corsi_2 = ["Cybersecurity", "Data Analyst", "Backend", "Frontend", "Data Analyst", "Backend"]
corsi_2.append("Frontend")
corsi_2.append("Cybersecurity")
if len(studenti_2) == len(corsi_2):
    print("Le liste hanno la stessa lunghezze.\nEcco la lista corsi:\n" + str(corsi_2))


## 6.
fr_6=input( str("Inserire la stringa da elaborare: "))
while len(fr_6) < 6:
    print("La lunghezza della stringa è inferiore a 6: inserirne una con 6 o più caratteri")
    fr_6=input( str("Inserire la stringa da elaborare: "))
fr_6 = (fr_6[0:3] + "..." + fr_6[-3:])
print("Il risultato dell'elaborazione è :\n" + fr_6)


## 7.
n_7 = int(input("Inserire il numero di cui calcolare i fattori: "))
lista_fattori = [1]
fattore = 2
while n_7 != 1:
    if n_7%fattore == 0:
        n_7 /= fattore
        lista_fattori.append(str(fattore))
    else: fattore += 1
print ("La lista dei fattori è :\n" + str(lista_fattori))
