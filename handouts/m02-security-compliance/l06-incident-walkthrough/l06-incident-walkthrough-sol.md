# Lab 2.6 – Lösung: Vorfallanalyse (Demo)

## Aufgaben

### 1.–2. Signalquellen im Szenario

Simuliertes Szenario: ungewöhnliche Anmeldung eines Nordwind-Kontos von einem neuen Standort, gefolgt von einem Zugriff auf ein vertrauliches Dokument. Signale stammen aus Entra ID (Anmelderisiko) und Purview (Zugriff auf klassifiziertes Dokument aus Lab 2.2).

### 3. Abgleich mit Rohdaten

Die generierte Zusammenfassung nannte korrekt Uhrzeit und betroffenes Konto, wich aber beim genannten Dokumentnamen leicht ab (Abkürzung statt vollständigem Dateinamen) — mit den Rohdaten abgeglichen und korrigiert.

### 4. Prüfstelle

Die Einschätzung "wahrscheinlich harmloser Standortwechsel" wäre vor einer Entscheidung zu prüfen, da kein Abgleich mit einer Reiseankündigung oder VPN-Nutzung vorlag.

### 5. Verbliebene Entscheidung beim Menschen

Die Entscheidung, das Konto vorsorglich zu sperren oder nur zu beobachten, blieb beim Sicherheitsverantwortlichen — Security Copilot lieferte nur die Empfehlung, nicht die Entscheidung.

## Checkpoint

- Der Abgleich in Aufgabe 3 hat eine tatsächliche, wenn auch kleine Abweichung gefunden.
- Die Prüfstelle in Aufgabe 4 ist konkret und nachvollziehbar begründet.
