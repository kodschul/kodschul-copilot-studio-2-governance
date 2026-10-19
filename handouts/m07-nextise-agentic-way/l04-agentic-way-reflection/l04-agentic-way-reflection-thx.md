# Lab 7.4 – The Nextise Agentic Way

The Nextise Agentic Way trennt Problem, Architektur und Bauartefakt. Dieses Lab vergleicht den direkt gebauten Agenten mit dem Ergebnis der Drei-Assistenten-Kette.

**Leitfragen:**

<details><summary>Was ändert Problem-vor-Lösung am Ergebnis?</summary>
Der Agent bekommt klarere Grenzen, bessere Testfälle und weniger implizite Annahmen.
</details>

<details><summary>Warum bleibt der Mensch in der Schleife?</summary>
Priorisierung, Freigaben, Risikoabwägung und fachliche Verantwortung werden nicht an die KI abgegeben.
</details>

<details><summary>Warum gilt das Muster auch für Coding und Vibecoding?</summary>
Auch dort verbessert die Trennung von Problem, Architektur, Teilaufgabe, Test und Review die Ergebnisqualität.
</details>

## Methodik in vier Entscheidungen

| Entscheidung | Frage | Ergebnis |
| --- | --- | --- |
| Problem vor Lösung | Welcher Schmerz soll gelöst werden? | Canvas und Top-1 |
| Chaining | Welcher Spezialist bearbeitet welchen Schritt? | drei fokussierte Assistenten |
| Human-in-the-loop | Wo bleibt menschliche Freigabe Pflicht? | Eskalation und Governance |
| Transfer | Wo passt das Muster außerhalb dieses Kurses? | Agentenbau, Coding, Prozesse |

## Direkter Bau vs. Kette

| Kriterium | Lab 6.3 direkt gebaut | Lab 7.1–7.3 Kette |
| --- | --- | --- |
| Präzision | erste Instruktion, sichtbare Lücken | Problem, Scope und Tests geschärft |
| Umfang | schnell, aber tendenziell unscharf | bewusst begrenzte Skills und Nicht-Scope |
| Eskalation | abhängig von erster Formulierung | explizit aus Risiko und Governance abgeleitet |
| Testbarkeit | Testlog zeigt Schwächen | Testfälle entstehen vor dem Ausbau |

> **Merksatz:** Chaining ersetzt keinen Menschen; es macht menschliche Entscheidungen besser sichtbar.

## Transfer auf Coding und Vibecoding

- Problem klären, bevor Code generiert wird.
- Architektur oder Schnittstelle festlegen, bevor Implementierung entsteht.
- Kleine Skills, Funktionen oder Komponenten einzeln testen.
- Menschliche Reviews für Sicherheit, Daten, Kosten und irreversible Aktionen einplanen.

## Beispiel: One-Shot gegen Kette mit typischer Ausgabe

Die Ausgaben zeigen typische Muster; der Wortlaut variiert zwischen Läufen.

| Weg | Eingabe | Typische Ausgabe |
| --- | --- | --- |
| One-Shot | „Bau mir einen Headset-Agenten für Nordwind.“ | Name, grobe Beschreibung, allgemeine Antwortlogik; Quellen, Stopppunkt und Tests bleiben oft unscharf. |
| Kette | Problem-Canvas → Architect-Übergabe → Skill-Generator für `nordwind-headset-anfrage-vorbereiten` | begrenzter Scope, Quelle `IT-Geräte`, Stopppunkt vor Bestellung, Skill-Kopf und drei Tests. |

```text
Kettenresultat:
Präzision: Quelle und Gerätetyp benannt.
Scope: Headset-Anfrage vorbereiten, keine Bestellung.
Eskalation: IT-Support bei Bestand, Standort oder Sonderfall.
Testbarkeit: Normalfall, fehlende Angaben, Bestellwunsch.
```

Passt, weil die Kette die Entscheidungspunkte vor dem Bau erzwingt.

## Fazit

- Die Kette verbessert vor allem Präzision, Scope, Eskalation und Testbarkeit.
- Human-in-the-loop ist ein Qualitätsmerkmal, kein Bremspunkt.
- Dasselbe Muster trägt Agentenbau und KI-gestützte Softwarearbeit.

Die Übung vergleicht Lab 6.3 mit dem Kettenergebnis und benennt den stärksten Veränderungsschritt.
