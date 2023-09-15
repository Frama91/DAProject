
# 1. Abbiamo la stinga : nome_scuola = "Epicode". Stampare ogni carattere della stringa, uno su ogni riga, utilizzando il costrutto for
nome_scuola = "Epicode"

for el in nome_scuola:
    print (str(el))



# 2. Abbiamo un serie di dimboli di elementi chimici (tutti da una sola lettera) all'interno della variabile elementi: elementi = "NPKOHC". Stampare ogni elemennto su una riga diversa

elementi = "NPKOHC"

for el in elementi:
    print (str(el))


# 3. **come punto 2. + Stampare ogni elemennto su una riga diversa, preceduto dalla scritta "elemento - "

elementi_3 = "NPKOHC"

for el in elementi_3:
    print ("Elemento - " + str(el))



# 4. **come punto 3. + Stampare ogni elemennto su una riga diversa, preceduto dalla scritta "elemento - numero n " dove al posto di n scriveremo un numero progressivo che parte da 1

elementi_4 = "NPKOHC"

for el in elementi_4:
    print ("Elemento - numero " + str(elementi_4.index(el) + 1) + ": "  + str(el))


# 5. Modificare la parola "marmalade" in modo da sostituire le "e" con le "a" e viceversa. Salvare il risultato in una variabile e stamparla a video. Fare diverse versioni:-Una con un ciclo For, -Una con un ciclo While, -Una con il metodo delle stringhe .replase()
parola = "marmalade"
frase_a = str("")
frase_e = str("")

for el in parola:
    if el == "e": el = "a"
    frase_a += el
    if el == "a": el = "e"
    frase_e += el
print ("Risultati del ciclo For:\nSostituite le 'e' con la 'a' : " + frase_a +"\nSostituite le 'a' con le 'e': " + frase_e )

frase_a = str("")
frase_e = str("")
conta = int(0)

while conta < len(parola):
    if parola[conta] == "e": frase_a += "a"
    else: frase_a += parola[conta]
    if parola[conta] == "a": frase_e += "e"
    else: frase_e += parola[conta]
    conta += 1

print ("Risultati del ciclo While:\nSostituite le 'e' con la 'a' : " + frase_a +"\nSostituite le 'a' con le 'e': " + frase_e )

frase_a = parola.replace("e","a")
frase_e = parola.replace("a","e")
print ("Risultati del metodo '.replace':\nSostituite le 'e' con la 'a' : " + frase_a +"\nSostituite le 'a' con le 'e': " + frase_e )



## 5. Calcolare e stampare tutte le prime 10 potenze di 2 utilizzando il ciclo For e la funzione range().
contatore = 0
for contatore in range(10):
    print("2^" + str(contatore) + "=" + str(2**contatore), end=" ")



# 6. Calcoare(ma non stampare) le prime N potenze di 2; ognuna di esse andrà memorizzata in coda a una lista. Alla fine, stampare la lista risultante. Realizzare due versioni: una con ciclo While, una con ciclo For.
while True:
    try:
        N = int(input("Inserire il numero di potenze di 2 da calcolare, partendo da 0: "))
        break
    except: print("Il numero non è corretto: riprovare.")
x = 0
lista_while=[]
while x in range(N):
    lista_while.append("2^" + str(x) + "=" + str(2**x))
    x +=1
print ("La lista creata dal ciclo While: " + str(lista_while))

lista_for = []
for el in range(N):
    lista_for.append("2^" + str(el) + "=" + str(2**el))
print("La lista creata dal ciclo For: " + str(lista_for))



# 7. Calcoare(ma non stampare) le prime N potenze di K; ognuna di esse andrà memorizzata in coda a una lista. Alla fine, stampare la lista risultante.
#    Proviamo con diversi valori di K, oppure facciamola inserire all'utente Realizzare due versioni: una con ciclo While, una con ciclo For.
import random
while True:
        K =input("Inserire il numero della quale si voglio calcolare le potenze.\nInserire 'R' per generare un numero casuale: ")
        if str(K)=="R": break 
        try: 
            K = int(K)
        except: print("Inserire un valore adeguato")
        else: break
        
if K == "R" : K = random.randint(1,20) 
while True:
    try:
        N_7 = int(input("Inserire il numero di potenze di 2 da calcolare, partendo da 0: "))
        break
    except: print("Il numero non è corretto: riprovare.")
x_7 = 0
lista_while_7=[]
while x_7 in range(N_7):
    lista_while_7.append(str(K) + "^" + str(x_7) + "=" + str(K**x_7))
    x_7 +=1
print ("La lista creata dal ciclo While: " + str(lista_while_7))

lista_for_7 = []
for el in range(N_7):
    lista_for_7.append(str(K) + "^" + str(el) + "=" + str(K**el))
print("La lista creata dal ciclo For: " + str(lista_for_7))

# 8. Calcolare e stampare tutte le potenze di 2 minori di 25000
x_8 = int(0)
c_8 = int(0)
while True:
    x_8 = (2**c_8)
    if x_8 > 2500 : break
    print(str(x_8),end= " ")
    c_8+=1


# 9. Calcolare e stampare tutte le potenze di 2 minori di un certo numero N
while True:
    try: N_9=int(input("Inserire il numero massimo da raggiungere con le potenze: "))
    except:print("Riprovare")
    else:break
x_9 = int(0)
c_9 = int(0)
while True:
    x_9 = (2**c_9)
    if x_9 > N_9 : break
    print(str(x_9),end= " ")
    c_9+=1


# 10. Calcolare e stampare tutte le prime 100 potenze di 2 ogni 3 (2^0,2^3,2^6). Oltre a stamparle, memorizzarle in coda ad una lista e stamparla alla fine.
#   Usate metodi diversi: usare un costrutto for e range(100) e poi un costruttp if per memorizzare e visualizzare solo ogni 3. Usare un costrutto for e range(0,100,3)

lista_10 = []
for el in range(100):
    if el%3 == 0: lista_10.append("2^" + str(el) + "=" + str(2**el))
print ("Lista con il metodo 1:\n" + str(lista_10)) 

lista_10 = []
for el in range(0,100,3):
    lista_10.append("2^" + str(el) + "=" + str(2**el))
print ("Lista con il metodo 2:\n" + str(lista_10))


# 11. Abbiamo una lista con dei numeri. Utilizzando un costrutto For, trovare il massimo di questa lista e stamparlo a video

numeri_11 = [4,9,5,1,7,10,2,3]
n_11=int(0)
for el in numeri_11:
    if el > n_11:n_11=el
print("Il massimo è: " + str(n_11))


# 12. Abbiamo raccolto tutte le età degli studenti in  una lista. Utilizzando un ciclo for, calcolare la media delle età. Alla fine stampa il risultato
eta_studenti =  [20,30,40,50,60]
media = float(0)
for el in eta_studenti:
    media += int(el)
media = round(media/len(eta_studenti),2)
print("La media degli studenti è: " + str(media))


# 13. Abbiamo una lista con i guadagni degli ultimi 12 mesi. Usando un costrutto For, calcolare la media dei guadagni e stamparla

guadagni =[100,90,70,40,50,80,90,120,80,20,50,50]
media_13 = float(0)
for el in guadagni:
    media_13 += int(el)
media_13 = round(media_13/len(guadagni),2)
print("La media dei guadagni è: " + str(media_13))



# 14. Abbiamo una lista con i guadagni degli ultimi N mesi. Usando un costrutto For, calcolare la media dei guadagni e stamparla. Stampa anche il numero dei mesi considerati

gd_14 = [100,90,70,40,50,80,90,120]
md_14 = float(0)
for el in gd_14:
    md_14 += int(el)
md_14 = round(md_14/len(gd_14),2)
print("La media dei guadagni è: " + str(md_14) + "\nPer un periodo di " + str(len(gd_14)) + " mesi.")



# 15. Abbiamo una lista di studenti. Utilizzare un ciclo for per stampare i nomi di tutti gli studenti con questa formattazione.("- Nomestudente")

studenti_15 = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith","Grace", "Henry"]
for el in studenti_15:
    print("- "+ str(el))


# 16. Abbiamo tre liste della stessa lunghezza. stampare a video, usando print(), ogni studente che corso segue e che edizione. "Studente segue Corso, edizione X"

studenti_16 = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith","Grace", "Henry"]
corsi_16 = ["Cybersecurity", "Data Analyst", "Backend", "Frontend", "Data Analyst", "Backend", "Frontend","Cybersecurity"]
edizioni_16 = [1,2,3,2,2,1,3,3]
for x in range(len(studenti_16)):
    print(str(studenti_16[x]) + " segue " + str(corsi_16[x]) + ", edizione " + str(edizioni_16[x]))



# 17. Abbiamo una lista di parole. Stampiamo, per ogni parola, quante volte appare la lettera "e"

parole_17 = ["Albergo","Sedia","Borgo","Petalo","Belvedere","Semestre","Sosta","Orpello","Abete"]
conta_e=int(0)
for word in parole_17:
    conta_e = 0
    for el in word:
        if el == "e": conta_e += 1
    print(str(word) + " contiene " + str(conta_e) + " 'e'")



# 18. Abbiamo una lista di parole. Stampiamo, per ogni parola, quante volte appare la lettera "e" facendo attenzione al fatto che appare sia maiuscola che minuscola

parole_18 = ["Albergo","Sedia","Borgo","Petalo","Eremo","Belvedere","Semestre","Esteta","Sosta","Orpello","Abete","Orologio","Cesta","Ermellino"]
conta_e18=int(0)
for word in parole_18:
    conta_e18 = 0
    for el in word:
        if str(el).upper() == "E": conta_e18 += 1
    print(str(word) + " contiene " + str(conta_e18) + " 'e'")
    


# 19. Abbiamo una lista di codici fiscali. Trovare i codici fiscali che contengono "95", metterli in una lista e alla fine stamparla

lista_cf = ["ABCDEF95G01A123B", "GHIJKL91MO2A321C","MNOPOR89S03A456D", "STUVWX95Z04A654E", "XYZABCO1D05A789F","DEFGHI95J06A987G"]
out = []
for el in lista_cf:
    if el.__contains__("95"): out.append(el)
print("I codici che contengono '95' sono : " + str(out)) 



# 20. Abbiamo una lista di codici fiscali. Per ognuno di esse, stampare a video i caratteri relativi al nome e quelli relativi al cognome
lista_cf_20 = ["ABCDEF95G01A123B", "GHIJKL91MO2A321C","MNOPOR89S03A456D", "STUVWX95Z04A654E", "XYZABCO1D05A789F","DEFGHI95J06A987G"]
cg = []
nm = []
for el in lista_cf_20:
    cg.append(el[0:3])
    nm.append(el[3:6])
for x in range(len(lista_cf_20)):
    print("Codice Fiscale : " + lista_cf_20[x] + ", Cognome: " + cg[x] + ", Nome : " + nm[x])



# 21. Abbiamo tre liste della stessa lunghezza dove ogni elemento nella medesima posizione si riferisce ai dati dello stesso studente. Stampare a video tutti e solo gli studenti che frequentano una prima edizione. Utilizzare solo i dati necessari

st_21 = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith","Grace", "Henry"]
cr_21 = ["Cybersecurity", "Data Analyst", "Backend", "Frontend", "Data Analyst", "Backend", "Frontend","Cybersecurity"]
ed_21 = [1,2,3,2,2,1,3,3]

for el in range(len(st_21)):
    if ed_21[el] == 1:
        print (st_21[el] + " ",end="")


# 22. Creiamo un dizionario che assegni ad ogni proprietario la sua auto. Poi stampiamo il dizionario per intero e poi l'auto associata a Debbie

car_own = {"Ada" :"Punto",
           "Ben" : "Multipla",
           "Charlie" : "Golf",
           "Debbie" : "107"}
print("L'intero dizionario: " + str(car_own))
print("Debbi guida una: " + str(car_own["Debbie"]))


# 23. Abbiamo un dizionario che assegni ad ogni proprietario la sua auto. Aggiungere Emily e Fred che posseggono rispettivamente una A1 e una Octavia; eliminare i dati relativi a Ben. Stampare il dizionario per controllare che sia tutto ok

car_own23 = {"Ada" :"Punto",
           "Ben" : "Multipla",
           "Charlie" : "Golf",
           "Debbie" : "107"}
car_own23.update({"Emily" : "A1","Fred":"Octavia"})
car_own23.pop("Ben")
print(car_own23)


# 24. Abbiamo un dizionario che assegni ad ogni proprietario la sua auto. Aggiornarte il dizipnario_auto con i dati contenuti in nuovi_proprietari e stamparlo. Cosa è successo a Ben?

dizionario_auto = {"Ada": "Punto", "Ben": "Multipla","Charlie": "Golf", "Debbie": "107", "Emily": "A1"}
nuovi_proprietari = {"Ben": "Polo", "Fred": "Octavia","Grace": "Yaris", "Hugh": "Clio"}
dizionario_auto.update(nuovi_proprietari)
print("Il dizionario aggiornato è: " + str(dizionario_auto))
print("Ben, il cui nome era ripetuto, è stato associato ad un nuovo mezzo")


# 25. Abbiamo un dizionario che assegni ad ogni proprietario la sua auto. Viene richiesto di ricercare in questo dataset i dati di Hugh, Ada, Emily e debbie e visualizzare le loro auto

proprietari_auto_25 = {'Ada': 'Punto', 'Ben': 'Multipla', 'Charlie': 'Golf', 'Debbie': '107', 'Emily': 'A1', 'Fred': 'Octavia', 'Grace': 'Yaris', 'Hugh': 'Clio'}
print("L'auto di Hugh è: " + str(proprietari_auto_25['Hugh']))
print("L'auto di Ada è: " + str(proprietari_auto_25['Ada']))
print("L'auto di Emily è: " + str(proprietari_auto_25['Emily']))
print("L'auto di Debbie è: " + str(proprietari_auto_25['Debbie']))


# 26. Abbiamo un dizionario che assegni ad ogni proprietario la sua auto. Viene richiesto di ricercare in questo dataset i dati di Hugh, Ada, Emily, Charlie, Jade e Kelly, visualizzare le loro auto

proprietari_auto_26 = {'Ada': 'Punto', 'Ben': 'Multipla', 'Charlie': 'Golf', 'Debbie': '107', 'Emily': 'A1', 'Fred': 'Octavia', 'Grace': 'Yaris', 'Hugh': 'Clio'}
ricerca =  ["Ada", "Emily","Jade","Ben","Hugh","Kelly", "Charlie"]
for el in ricerca:
    try: 
        proprietari_auto_26[el]
    except: print("Non è presente alcun " + str(el) + " nel dizionario.")
    else: print(str(el) + " guida una: " + str(proprietari_auto_26[el]))


# 27. Abbiamo un dizionario. Utilizzando il metodo .keys() stampiamone tutte le chiavi.

diz = {"a":121,"zy": 3774,"qop":147726,"ab":328,"k":12,"clap":9}
print("Le chiavi del dizionario sono: " + str(diz.keys()) )

# 28. Abbiamo un dizionario. Utilizzando il metodo .values() stampiamone tutti i valori.

diz_28 = {"a":121,"zy": 3774,"qop":147726,"ab":328,"k":12,"clap":9}
print("I valori del dizionario sono: " + str(diz_28.values()) )

# 29. Abbiamo un dizionario. Utilizzando il metodo .items() stampiamone le coppie di valori su righe diverse.

diz_29 = {"a":121,"zy": 3774,"qop":147726,"ab":328,"k":12,"clap":9}
print("Le coppie keys-values sono:\n " + str(diz_29.items()).replace("),","\n").replace("dict_items([(","").replace("(","").replace(")])",""))
  
 

# 30. Abbiamo un dizionario. Utilizzando il metodo .values() calcoliamo il valore massimo, il valore minimo, la somma e stampiamo i risultati.

diz_30 = {"a":121,"zy": 3774,"qop":147726,"ab":328,"k":12,"clap":9}

print("I valori richiesti sono: \n" +
      "-il valore massimo: " + str(max(diz_30.values())) + "," +
      "\n-il valore minimo: " +  str(min(diz_30.values())) + "," +
      "\n-la somma dei valori: " + str(sum(diz_30.values())) + "."
      )


# 31. Abbiamo un dizionario che assegna ad ogni proprietario la sua auto. Con un ciclo For e usando il metodo items(), stampiamo ogni proprietario e la sua auto, formattandolo come "ada guida una punto"

car_own_31 = {"Ada" :"Punto",
           "Ben" : "Multipla",
           "Charlie" : "Golf",
           "Debbie" : "107"}

for el in car_own_31.keys():
    print(str(el) + " guida una " + str(car_own_31[el]))


# 31. Abbiamo un dizionario che assegna ad ogni proprietario la sua auto. Con un ciclo For e usando il metodo values(), stampiamo tutte le auto che non sono Multipla

car_own_32 = {"Ada" :"Punto",
           "Ben" : "Multipla",
           "Charlie" : "Golf",
           "Debbie" : "107"}

for el in car_own_32.values():
    if el != "Multipla": print(el)

    

# 32. Abbiamo i seguenti dati riguardo dei collezionisti e le loro collezioni. Creare dei dizionari intestati che contengano questi dati e quindi visualizzarli

funko_pop = {"Ada":10,"Ben":2,"Charlie":0,"Debbie":1}
action_figures = {"Ada":5,"Ben":6,"Charlie":31,"Debbie":2}
manga = {"Ada":35,"Ben":40,"Charlie":0,"Debbie":25}
graphic_novel = {"Ada":0,"Ben":2,"Charlie":18,"Debbie":9}

for el in funko_pop.keys():
    print(str(el) + " possiede : " + str(funko_pop[el]) + " Funko Pop, " + str(action_figures[el]) + " Action Figures, "+ str(manga[el]) + " Manga, "+ str(graphic_novel[el]) + " Graphic Novel") 



# 33. Abbiamo i seguenti dati riguardo dei collezionisti e le loro collezioni. Creare dei dizionari intestati che contengano questi dati e quindi visualizzarli

fn_pop = {"Ada":10,"Ben":2, "Charlie":0, "Debbie":1}
ac_fig = {"Ada":5, "Ben":6, "Charlie":31,"Debbie":2}
manga_ = {"Ada":35,"Ben":40,"Charlie":0, "Debbie":25}
grap_n = {"Ada":0, "Ben":{"Marvel" : 2}, "Charlie":{"Marvel":10,"DC":8},"Debbie":{"Marvel":5,"DC":4}}

for el in fn_pop.keys():
    print(str(el) + " possiede : " + str(fn_pop[el]) + " Funko Pop, " + str(ac_fig[el]) + " Action Figures, "+ str(manga_[el]) + " Manga, "+ str(grap_n[el]) + " Graphic Novel") 



# 34. Riguardo l'esercizio precedente, stampiamo le risposte a:

f_34 = {"Ada":10,"Ben":2, "Charlie":0, "Debbie":1}
a_34 = {"Ada":5, "Ben":6, "Charlie":31,"Debbie":2}
m_34 = {"Ada":35,"Ben":40,"Charlie":0, "Debbie":25}
g_34 = {"Ada":{"Marvel": 0, "DC":0}, "Ben":{"Marvel" : 2,"DC":0}, "Charlie":{"Marvel":10,"DC":8},"Debbie":{"Marvel":5,"DC":4}}

# 1. Quani funko pop ha ADA?
print("Ada possiede " + str(f_34["Ada"]) + " Funko Pop.")

# 2. Quanti Manga ha Ben?
print("Ben possiede " + str(m_34["Ben"]) + " Manga.")

# 3. Quante Graphic Novel della marvel ha Debbie?
print("Debbie possiede " + str(g_34["Debbie"]["Marvel"]) + " Graphic Novel della Marvel.")

# 4. Quanti Funko Pop hanno Ada e Ben in tutto?
print("Ada e Ben hanno in totale " + str(f_34["Ada"] + f_34["Ben"]) + " Funko Pop.")

# 5. Quanti Manga hanno i totale i collezionist?
print("I collezionisti posseggono " + str(sum(m_34.values())) + " Manga in totale.")

#6. Quante Graphic Novel della DC hanno in tutto i colezionisti?
var = int(0)
for e in g_34.keys():
    var  += int(g_34[e]["DC"])
print("I collezionisti posseggono in totale " + str(var) + " Graphic novel della DC.")

#7. Quante Graphic Novel hanno in tutto i colezionisti?
var = int(0)
for e in g_34.values():
    for l in e.values():
        var += l
print("I collezionisti posseggono in totale " + str(var) + " Graphic novel.")