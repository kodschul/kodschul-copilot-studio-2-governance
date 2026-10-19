# Lab 3.1 – Lösung: Gerätekonformität

## Aufgaben

### 1.–2. Konformitätsrichtlinie und Test

Richtlinie "Nordwind-Basiskonformität": Verschlüsselung aktiv + Betriebssystem nicht älter als eine Vorgängerversion. Testgerät 1 (aktuell, verschlüsselt): konform. Testgerät 2 (veraltetes Betriebssystem): nicht konform.

### 3.–4. Zusammenspiel mit Conditional Access

Testgerät 2 wurde von der Conditional-Access-Richtlinie aus Lab 2.1 korrekt blockiert, da das Signal "nicht konform" von Intune übernommen wurde.

### 5. Reihenfolge

Intune bewertet zuerst die Konformität, Conditional Access nutzt dieses Ergebnis anschließend als eines von mehreren Signalen für die Zugriffsentscheidung — Intune liefert, Conditional Access entscheidet.

## Checkpoint

- Beide Testgeräte wurden korrekt bewertet und das Ergebnis stimmt mit der erwarteten Konformitätsprüfung überein.
- Testgerät 2 wurde tatsächlich vom Zugriff blockiert, konsistent mit der Blockier-Entscheidung aus Lab 2.1.
