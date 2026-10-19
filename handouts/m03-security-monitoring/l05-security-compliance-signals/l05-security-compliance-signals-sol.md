# Lab 3.5 – Lösung: Security & Compliance Signale zusammenführen

## Aufgaben

### 1. Signalübersicht (Beispiel)

| Quelle       | Signal                  | Status bei Nordwind                     | Bezug          |
| ------------ | ----------------------- | --------------------------------------- | -------------- |
| Entra ID     | Anmelderisiko           | 2 Konten mit erhöhtem Risiko            | Lab 2.1       |
| Intune       | Gerätekonformität       | 3 nicht konforme Geräte                 | Lab 3.1       |
| Purview      | Sensitivity Label / DLP | 1 DLP-Regelverstoß diese Woche          | Lab 2.2, 2.3 |
| Rollenmatrix | Zugriffsberechtigung    | IT-Leitung + Sicherheitsverantwortliche | Lab 2.4       |

### 2. Rollenwahl

Zugriff auf die zusammengeführte Sicht: IT-Leitung und die benannte Sicherheitsverantwortliche Person aus der Rollenmatrix (Lab 2.4) — nicht die allgemeine Geschäftsführung, da diese laut Matrix keine operative Sicherheitsverantwortung trägt.

### 3. Einzelsignal vs. Kombination

Ein erhöhtes Anmelderisiko allein hätte fälschlich als Angriff eingestuft werden können; erst die Kombination mit "Gerät konform, kein Zugriff auf klassifizierte Inhalte" zeigte, dass es sich um eine legitime Dienstreise handelte.

### 4. Verdichtete Übersicht

Die vier Zeilen aus Aufgabe 1 wurden auf eine Seite mit kurzer Kopfzeile ("Nordwind Sicherheitslage – Kurzüberblick") zusammengefasst.

## Checkpoint

- Alle vier Signalquellen sind mit realistischem, spezifischem Status befüllt.
- Die Rollenwahl bezieht sich konkret auf die Rollenmatrix aus Lab 2.4.
