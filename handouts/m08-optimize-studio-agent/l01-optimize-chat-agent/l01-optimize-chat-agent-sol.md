# Lab 8.1 – Lösung: Chat-Agent optimieren

**Ändert die Nordwind-Projektbasis?** Ja — der Chat-Agent erhält die Wissensbasis und den Teststand für den Vergleich in Lab 8.3.

## Ausgangslage

Der dokumentierte Ausgangsstand ist ein einfacher Nordwind IT-Helfer mit allgemeinen Instruktionen und ohne hinterlegte Nordwind-Wissensquellen.

## Zielartefakt

Das Zielartefakt ist ein optimierter Copilot-Chat-Agent mit System-Prompt, zwei Wissensquellen und nachvollziehbarer Testtabelle.

## Voraussetzungen und Starterdateien

| Voraussetzung | Tragfähiger Stand |
| --- | --- |
| Chat-Agent aus Lab 6.3 | Agent vorhanden oder Konfiguration dokumentiert |
| System-Prompt aus Lab 7.3 | enthält Rolle, Quellenbindung, knappe Antwort und Eskalation |
| Wissensquellen | `../../project/nordwind-it-richtlinie.md`, `../../project/nordwind-onboarding-leitfaden.md` |
| Testfragen | VPN, erster Arbeitstag, Gehalts-/Sonderfall plus zwei neue Fragen |

## Aufgaben

### 1. Ausgangsstand sichern

Beispielnotiz:

| Feld | Ausgangsstand |
| --- | --- |
| Name | Nordwind IT-Helfer |
| Instruktionen | erste kurze Rollenbeschreibung aus Lab 6.3 |
| Wissen | keine Nordwind-Dateien oder noch nicht belastbar hinterlegt |
| Schwäche | Antworten wirken plausibel, aber Quellenbezug ist unsicher |

### 2. Drei bekannte Testfragen erneut stellen

| Testfrage | Vorher-Beobachtung |
| --- | --- |
| „Welches VPN nutzen wir bei Nordwind?“ | nennt eventuell allgemeine VPN-Hinweise oder rät |
| „Was passiert am ersten Arbeitstag?“ | bleibt allgemein oder unvollständig |
| „Wie hoch ist die Gehaltsbandbreite meiner Position?“ | muss eskalieren; ohne klare Regel besteht Spekulationsrisiko |

### 3. Instruktionen ersetzen

Beispiel für den Kern des übernommenen System-Prompts:

```text
Rolle: interner Nordwind IT-Helfer für IT- und Onboarding-Standardfragen.
Nutze nur die hinterlegte IT-Richtlinie und den Onboarding-Leitfaden.
Antworte kurz, sachlich und ohne Vermutungen.
Wenn eine Frage Gehalt, individuelle Ausnahmen oder nicht belegte Sonderfälle betrifft,
verweise an IT oder HR und erfinde keine Antwort.
```

Die Instruktionen enthalten Verhalten und Grenzen, aber keine kopierten Richtlinientabellen.

### 4. Wissensquellen ergänzen

| Wissensquelle | Zweck |
| --- | --- |
| `nordwind-it-richtlinie.md` | VPN, Geräte, Passwörter, MFA, Supportkontakt, Eskalation |
| `nordwind-onboarding-leitfaden.md` | erster Arbeitstag, Standardsoftware, Buddy, erste 30 Tage |

Klickpfad und UI-Bezeichnungen bleiben tenantabhängig und werden vor Kursbeginn geprüft.

### 5. Fünf Testfragen stellen

| Testfrage | Erwartetes Nachher-Verhalten |
| --- | --- |
| „Welches VPN nutzen wir bei Nordwind?“ | nennt Cisco Secure Client, Verbindungsziel und MFA |
| „Was passiert am ersten Arbeitstag?“ | nennt Erstlogin, Passwortwechsel, MFA, vorinstallierte Apps und Buddy |
| „Wie hoch ist die Gehaltsbandbreite meiner Position?“ | eskaliert an HR, keine Spekulation |
| „Was passiert, wenn mein VPN-Zertifikat abgelaufen ist?“ | verweist auf automatische 12-Monats-Laufzeit und IT-Support |
| „Wann bekomme ich Zugriff auf projektspezifische Ablagen?“ | nennt schrittweise Freigabe durch Projektleitung, nicht automatisch am ersten Tag |

### 6. Vorher/Nachher-Tabelle ausfüllen

| Testfrage | Vorher | Nachher | Quelle oder Eskalation | Nachschärfung |
| --- | --- | --- | --- | --- |
| VPN-Nutzung | allgemeiner VPN-Hinweis | Cisco Secure Client, `vpn.nordwind-consulting.example`, MFA | IT-Richtlinie | keine |
| Erster Arbeitstag | unvollständige Liste | Erstlogin, Passwort ändern, MFA, Apps, Buddy | Onboarding-Leitfaden | Antwort knapper formatieren |
| Gehaltsbandbreite | Spekulationsrisiko | HR-Eskalation | Eskalationsregel | HR-Themen explizit ergänzt |
| VPN-Zertifikat | unsicher | Zertifikat läuft nach 12 Monaten ab; IT erneuert | IT-Richtlinie | Supportkontakt ergänzen |
| Projektablagen | allgemeiner Zugriffshinweis | schrittweise Freigabe durch Projektleitung | Onboarding-Leitfaden | keine |

### 7. Kurze Bewertung formulieren

Beispielbewertung: Die Wissensquellen verbessern konkrete Nordwind-Fakten deutlich, besonders bei VPN und Onboarding. Grenzen bleiben bei individuellen Sonderfällen, fehlenden Quellen und tenantabhängiger Quellenanzeige.

## Checkpoint

- Beide Nordwind-Dateien sind als Wissen hinterlegt oder sauber in der Fallback-Konfiguration dokumentiert.
- Alle fünf Testfragen sind mit Vorher/Nachher-Beobachtung ausgefüllt.
- Die Antworten zu VPN, Zertifikat und Projektablagen lassen sich auf konkrete Dateien zurückführen.

## Abschlusskriterien

- Der Agent nennt Cisco Secure Client, MFA und den Nordwind-Supportkontakt aus der IT-Richtlinie.
- Onboarding-Antworten nennen Erstlogin, Passwortwechsel, MFA und Buddy aus dem Leitfaden.
- HR- und Sonderfälle werden eskaliert statt erfunden.

## Erweiterung

Eine kombinierte Frage wie „Wie komme ich am ersten Arbeitstag per VPN ins Firmennetz?“ sollte Cisco Secure Client, Erstlogin, Passwortwechsel und MFA zusammenführen. Wenn die Antwort zu lang wird, ist eine knappe Phasenstruktur eine sinnvolle Nachschärfung.

## Fallback

Die Fallback-Lösung bleibt statisch tragfähig, wenn Prompt, Wissensquellen, erwartete Antworten und Grenzen vollständig dokumentiert sind. Ein echter Grounding-Nachweis bleibt bis zum Live-Test offen.
