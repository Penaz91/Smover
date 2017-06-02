# CParser 0.0.1
# Parser di configurazione per Smover
#-------------------------------------
#Apri il file di configurazione in lettura
fil=open("ext.conf","r")
#Apri il file move.bat in scrittura
mv=open("move.bat","w")
#Svuota il contenuto di move.bat e completa la scrittura
mv.write("")
mv.flush()
#Leggi la prima linea
line=fil.readline()
#Continua a leggere fino alla fine del file
while line!="":
#Dividi la linea in corrispondenza della barra verticale
parse=line.split("|")
#Memorizza il pattern
pat=parse[0]
#Memorizza il percorso, escludendo il carattere di ritorno
path=parse[1].split("\n")[0]
#Scrivi la riga di move.bat
mv.write('move ' +pat+ ' "' +path+'"\n')
#Prossima linea
line=fil.readline()
#Chiusura dei files
fil.close()
mv.close()
