# Lab 8.3 – Übung: Studio-Agent anlegen

**Ändert die Nordwind-Projektbasis?** Ja — es entsteht die Studio-Variante des Nordwind Support-Agenten für Lab 8.4.

## Ausgangslage

Der Chat-Agent aus Lab 8.1 ist optimiert. Für den Ausbau mit Skills wird derselbe Support-Fall in Copilot Studio auf dem GitHub-Copilot-Harness angelegt.

## Zielartefakt

Ein Nordwind Studio-Agent mit Instructions, Knowledge, Modellnotiz, Preview-Testprotokoll und Vergleich zum Chat-Agenten.

## Voraussetzungen und Starterdateien

- System-Prompt aus Lab 7.3.
- Wissensquellen und fünf Testfragen aus Lab 8.1.
- Zugriff auf Copilot Studio mit GitHub-Copilot-Harness, Umgebung und Credits oder eine bereitgestellten Demo als Fallback.

## Aufgaben

1. **Neuen Agenten anlegen**  
   Einen neuen Agenten auf dem GitHub-Copilot-Harness anlegen. Name: **Nordwind Support-Agent (Studio)**.

2. **Instructions übernehmen**  
   Den System-Prompt aus Lab 7.3 in die Instructions übertragen. Rollen-, Quellen- und Eskalationsregeln erhalten.

3. **Knowledge ergänzen**  
   `../../project/nordwind-it-richtlinie.md` und `../../project/nordwind-onboarding-leitfaden.md` als Knowledge hinzufügen.

4. **Modellwahl dokumentieren**  
   Ein verfügbares Modell auswählen und notieren, welche Auswahl im Tenant sichtbar war. Konkrete Namen und Verfügbarkeit gelten als **vor Kursbeginn im Tenant zu prüfen**.

5. **Preview mit fünf Fragen testen**  
   Die fünf Fragen aus Lab 8.1 stellen und Antwortqualität, Quellenbezug und Eskalationsverhalten dokumentieren.

6. **Mit dem Chat-Agenten vergleichen**  
   Eine Tabelle mit `Antwortqualität`, `Quellenbezug`, `Steuerbarkeit`, `Aufwand` und `Credits` ausfüllen.

7. **Nächsten Ausbaupunkt notieren**  
   Festhalten, welche Aufgabe in Lab 8.4 über Skills statt über weitere globale Instruktionen gelöst werden soll.

## Checkpoint

- Instructions und Knowledge entsprechen inhaltlich dem Stand aus Lab 8.1.
- Alle fünf Testfragen wurden in Preview oder anhand einer Demo dokumentiert.
- Die Vergleichstabelle nennt auch Aufwand und Credit-Aspekt, nicht nur Qualitätsvorteile.

## Abschlusskriterien

- Der Studio-Agent ist angelegt oder vollständig dokumentiert.
- Der Vergleich zeigt, ob die Studio-Variante für den geplanten Skill-Ausbau sinnvoll ist.
- Lab 8.4 kann auf den Agenten zugreifen oder mit der Fallback-Dokumentation weiterarbeiten.

## Erweiterung

Eine sechste kombinierte Frage stellen, etwa „Wie kommt ein neuer Mitarbeiter am ersten Tag per VPN ins Firmennetz?“. Beobachten, ob die Antwort beide Wissensquellen verbindet.

## Fallback

Ohne Credits oder Harness-Zugang: der bereitgestellten Demo folgen und alle Felder als Beobachtungsprotokoll ausfüllen. Einschränkung: kein eigener Build, kein eigener Credit-Verbrauch und keine selbst erzeugte Preview-Antwort.
