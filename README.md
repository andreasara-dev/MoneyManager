# MoneyManager
iOS money manager SwiftUI App

![Esempio](MoneyManager/Example.gif)

A simple app for saving your revenues and expenses with a captivating graphic!

The accounts are divided in cards that show the balance and the relative transactions.

These last can be easily added by selecting amount, category and account type (revenue or cost).<br> 
They can be deleted through a swipe and, using a toggle located in the profile view, you can choose whether to eliminate it while maintaining its economic weight in the calculation of the balance, or eliminate it completely in case of incorrect entry.

By tapping a card, an histogram which visually informs the economic situation of that account is shown.

From the toolbar it’s possible to reach the Profile View, from which the data provided during the app first launch can be consulted, and a profile picture can also be uploaded.

### Technical details

- **SwiftUI** for design the User Interface,<br>
- **PhotosUI** for set the picture directly from the system Photo iOS app of the used device,<br>
- **SwiftCharts** for show cool charts

**MVVM** is the chosen architecture, each View has it’s own folder in which the UI file and the ViewModel file are stored.

**DocumentsDirectory** is used for saving the user data, **UserDefaults** is used for monitoring the first launch of the app.

---

Una semplice app per salvare le proprie entrate e uscite con una grafica accattivante!

I vari conti vengono divisi in carte che mostrano il bilancio attuale con le relative transazioni.

Queste ultime possono anche essere aggiunte facilmente selezionando importo, categoria e tipologia di conto (ricavo o costo). 

Possono essere eliminate con uno swipe e, con un apposito toggle presente nella profile view , si può scegliere se eliminarla mantenendo il suo peso economico nel computo del bilancio, oppure eliminarla totalmente in caso di inserimento errato.

Facendo tap sulla carta viene mostrato un’istogramma che informa visivamente la situazione economica di quel preciso conto.

Dalla toolbar è possibile raggiungere la Profile View, dalla quale si possono consultare i dati forniti durante il primo avvio dell’app, inoltre si può caricare una foto per il profilo

### Dettagli tecnici

Per la creazione è stato utilizzato:

**SwiftUI** per il design dell’interfaccia utente,<br>
**PhotosUI** per impostare la foto scelta direttamente dall’app Foto di sistema del Device,<br>
**SwiftCharts** per mostrare grafici accattivanti

L’architettura utilizzata è **MVVM**, ogni View ha la propria cartella con all’interno i file della UI e del relativo ViewModel. 

Per il salvataggio persistente dei dati creati dall’utente viene utilizzata la **DocumentsDirectory**. 

Per controllare e tenere traccia del primo avvio dell’app si utilizza **UserDefaults**.
