# SPAdes: Genome Assembly Project

Dal 2012 **SPAdes** (St. Petersburg genome Assembler) si è affermato come uno degli strumenti più utilizzati per l’assemblaggio del genoma a partire da dati di sequenziamento di nuova generazione (NGS). Basato su De Bruijn Graph, SPAdes è particolarmente adatto per l’assemblaggio di genomi batterici e di piccoli eucarioti, con ottimizzazioni mirate per piattaforme come Illumina e IonTorrent. Grazie all’utilizzo dei De Bruijn Graph multidimensionali, è in grado di fornire risultati di alta qualità, combinando i migliori risultati ottenuti da ogni iterazione.

## 🎯 Obiettivi

- Analizzare nel dettaglio il funzionamento e i protocolli d’uso di SPAdes nei diversi scenari applicativi;
- Esaminare il codice sorgente di SPAdes, con particolare attenzione a tre moduli:
  - il modulo principale, responsabile della gestione dell'intero workflow;
  - il modulo per la costruzione dei De Bruijn Graph;
  - i moduli per la risoluzione di errori, come bulge, tip e bubble;
- Applicare SPAdes a un dataset Illumina del batterio *Escherichia coli*, confrontandone i risultati con quelli ottenuti tramite l’assemblatore **Velvet**.

## 📁 Struttura del Repository

- `deliverables/`: contiene la documentazione completa del progetto;  
- `output/`: contiene i contigs prodotti da SPAdes e Velvet, oltre ai risultati del controllo di qualità effettuato con BUSCO.

## 🧬 Dati di Sequenziamento

I dati di sequenziamento dell’intero genoma di *E. coli* sono stati ottenuti dalla [National Library of Medicine](https://trace.ncbi.nlm.nih.gov/Traces/?view=run_browser&acc=SRR32812502&display=metadata).  
Il sequenziamento è stato eseguito nell’ambito del programma **National Antimicrobial Resistance Monitoring System (NARMS)**, che impiega l’analisi genomica di patogeni di origine alimentare per monitorare la resistenza antimicrobica e identificare potenziali minacce per la salute pubblica.

### Pre-processing per SPAdes

Per garantire una corretta esecuzione di SPAdes, è necessaria una fase di pre-processing che separi i filamenti forward e reverse in due file distinti (`forward.fastq` e `reverse.fastq`) con il seguente comando:

```bash
awk 'NR % 8==1 || NR % 8==2 || NR % 8==3 || NR % 8==4 { print > "forward.fastq" } NR % 8==5 || NR % 8==6 || NR % 8==7 || NR % 8==0 { print > "reverse.fastq" }' SRR32812502.fastq
```
SPAdes si occupa autonomamente della correzione degli errori nei dati di sequenziamento Illumina grazie al modulo BayesHammer.

### Pre-processing per Velvet 
Poiché Velvet, a differenza di SPAdes, non dispone di un modulo di correzione degli errori, l’esecuzione è stata preceduta da una fase di trimming tramite il tool [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic).


## Maggiori informazioni
Per dettagli tecnici, consultare la [documentazione PDF allegata](https://github.com/Smo17817/analisi-spades-genome-assembler/blob/main/deliverables/SPAdes_un_nuovo_algoritmo_di_assemblaggio_del_genoma.pdf).
