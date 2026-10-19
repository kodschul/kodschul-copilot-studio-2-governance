# Lab 8.1 – Chat-Agent optimieren

Der Nordwind IT-Helfer wird mit besser getrennten Instruktionen und Wissensquellen nachgeschärft. Das Lab macht sichtbar, ob Antworten aus Wissen, Prompt-Regeln oder Vermutung entstehen.

**Leitfragen:**

<details><summary>Wie zeigt sich, ob eine Antwort aus einer Wissensquelle stammt?</summary>
Die Antwort nennt belegbare Details aus der Datei oder verweist sichtbar auf eine Quelle. Unbelegte Antworten bleiben kritisch, auch wenn sie plausibel klingen.
</details>

<details><summary>Was gehört in Instruktionen und was gehört in Wissen?</summary>
Instruktionen steuern Rolle, Verhalten, Grenzen und Ausgabeform. Wissen liefert Fakten, Richtlinien und Prozessdetails.
</details>

<details><summary>Was hat die Assistenten-Kette gegenüber dem direkten Bau verändert?</summary>
Die Kette trennt Problemklärung, Lösungsentwurf und Prompt-/Skill-Formulierung. Der Chat-Agent erhält dadurch klarere Regeln und testbare Erwartungen.
</details>

## Bausteine im Agent Builder

| Baustein | Zweck | Nordwind-Beispiel |
| --- | --- | --- |
| Instruktionen | Verhalten, Ton, Grenzen, Eskalation | System-Prompt aus Lab 7.3 |
| Wissensquelle | überprüfbare Faktenbasis | IT-Richtlinie und Onboarding-Leitfaden |
| Testprotokoll | Beobachtung statt Bauchgefühl | Fragen aus Lab 6.3 plus zwei neue Fälle |
| Nachschärfung | gezielte Änderung nach Testfehler | Eskalationsregel oder Quellenhinweis präzisieren |

## Wissensquellen im Chat-Agenten

| Quelle | Typische Nutzung | Prüffrage |
| --- | --- | --- |
| Datei | kleine, stabile Richtlinie oder Leitfaden | Wird ein konkreter Dateifakt genannt? |
| SharePoint | geteilte Dokumente und gepflegte Wissensablage | Gelten Berechtigungen und Aktualität? |
| Web | öffentlich erreichbare Inhalte | Ist die Quelle verlässlich und zugelassen? |

Die konkrete Oberfläche des Agent Builders ist tenantabhängig. Bezeichnungen und verfügbare Optionen sind **vor Kursbeginn im Tenant zu prüfen**.

## Instruktion vs. Wissen

| Entscheidung | Gute Praxis | Risiko bei Vermischung |
| --- | --- | --- |
| Verhaltensregel | in Instruktionen schreiben | Regeln verschwinden in langen Dokumenten |
| Fakt aus Richtlinie | als Wissensquelle bereitstellen | Prompt wird schnell veraltet |
| Eskalation | in Instruktionen und Wissen konsistent halten | Agent erfindet Zuständigkeiten |
| Testfrage | gegen erwartete Quelle prüfen | Antwortqualität bleibt subjektiv |

> **Merksatz:** Instruktionen sagen, wie der Agent arbeitet; Wissensquellen sagen, worüber er belastbar antworten darf.

## Nordwind-Szenario

Der einfache Nordwind IT-Helfer aus Lab 6.3 beantwortet bereits Standardfragen. Jetzt ersetzt der System-Prompt aus Lab 7.3 die erste Instruktionsfassung, und die zwei Nordwind-Dokumente werden als Wissen ergänzt.

## Beispiel für Grounding-Prüfung

| Testfrage | Erwartetes belastbares Signal |
| --- | --- |
| „Wie lang muss ein Nordwind-Passwort sein?“ | mindestens 12 Zeichen, Wechsel alle 180 Tage, aus der IT-Richtlinie |
| „Darf ich mein privates Tablet für Teams nutzen?“ | nur mobile Teams-/Outlook-App mit App-Schutzrichtlinie, kein VPN |
| „Kann ich eine Ausnahme von der MFA-Pflicht bekommen?“ | keine Zusage, Eskalation an das IT-Ticket-Portal |

## Typische Fehlermuster

- Der Agent beantwortet Richtlinienfragen aus allgemeinem Weltwissen statt aus den Dateien.
- Der Prompt enthält Fakten, die eigentlich aus einer Datei gepflegt werden müssten.
- Ein Grenzfall wird freundlich beantwortet, aber nicht eskaliert.
- Eine Quellenanzeige fehlt oder ist im Tenant nicht sichtbar; dann zählt die überprüfbare Antwortsubstanz.

## Beispiel: Wissensfrage mit typischer Ausgabe

Die Ausgabe zeigt ein typisches Muster; Wortlaut und Quellenanzeige variieren zwischen Läufen und Tenants.

### Ohne angebundene Wissensquelle

```text
Frage an den Chat-Agenten:
Welche Standardsoftware ist auf einem neuen Nordwind-Firmengerät installiert?
```

```text
Typische Antwort:
Auf neuen Firmengeräten sind üblicherweise Office-Anwendungen,
Teams, ein Browser und Sicherheitssoftware installiert.
Für die genaue Nordwind-Ausstattung bitte die IT kontaktieren.
```

Risiko: Die Antwort klingt plausibel, nennt aber keine belegte Nordwind-Quelle.

### Mit Onboarding-Leitfaden als Wissen

```text
Frage an den optimierten Chat-Agenten:
Welche Standardsoftware ist auf einem neuen Nordwind-Firmengerät installiert?
Bitte Quelle nennen.
```

```text
Typische Antwort:
Laut Onboarding-Leitfaden, Abschnitt „Standard-Software“,
enthält das Standard-Image Microsoft 365 Apps inklusive Copilot,
Cisco Secure Client, Microsoft Teams und Antivirus/Endpoint-Schutz.
Zusätzliche Fachsoftware wird über das IT-Ticket-Portal beantragt.
```

Passt, weil die Antwort konkrete Dateifakten nutzt und die Grenze für zusätzliche Software nennt.

## Fazit

- Der optimierte Chat-Agent entsteht aus klar getrennten Instruktionen, Wissen und Tests.
- Grounding wird über beobachtbare Dateifakten geprüft, nicht über Sprachgefühl.
- Vorher/Nachher-Vergleiche zeigen, ob die Optimierung tatsächlich wirkt.

Die Übung ersetzt Instruktionen, ergänzt Wissen und dokumentiert die Wirkung in einer Testtabelle.
