# Lab 5.2 – Lösung: Betriebsmodell skalieren

## Aufgaben

### 1. Pilot vs. Vollausbau

Pilotgruppe: 20 Nutzende. Zielgröße Vollausbau: 500 Nutzende über alle Abteilungen.

### 2. Automatisierbarkeit der Checkliste (Beispiel)

| Prüfschritt (aus Lab 3.8)               | Automatisierbar?                |
| ---------------------------------------- | ------------------------------- |
| Gerätekonformität prüfen                 | ja, per Intune-Regel            |
| Konten mit erhöhtem Anmelderisiko prüfen | teilweise, Eskalation manuell   |
| DLP-Regelverstöße auswerten              | teilweise, Bewertung manuell    |
| Adoptions-KPIs auswerten                 | ja, Datenerhebung automatisiert |

### 3. Rollenanpassung

Die einzelne "Sicherheitsverantwortliche Person" aus Lab 2.4 wird beim Vollausbau auf ein 2-3-köpfiges Team aufgeteilt, da das Volumen an DLP- und Anmelderisiko-Fällen bei 500 Nutzenden eine Einzelperson überlastet.

### 4. Skalierungsschritte

1. Automatisierte Vorprüfung für Konformität und KPI-Erhebung einrichten.
2. Eskalationsschwelle definieren: nur Grenzfälle gehen an die Sicherheitsverantwortlichen.
3. Sicherheitsrolle auf ein Team aufteilen.
4. Onboarding-Material für die größere Zielgruppe anpassen.
5. Monitoring-Checkliste aus Lab 3.8 mit den neuen Automatisierungsgrenzen aktualisieren.

## Checkpoint

- Jede Checklisten-Zeile in Aufgabe 2 hat eine begründete, nicht pauschale Einschätzung.
- Der Skalierungsschritt-Plan ist konkret und in sinnvoller Reihenfolge.
