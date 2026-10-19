# Lab 8.1 – Übung: Chat-Agent optimieren

**Ändert die Nordwind-Projektbasis?** Ja — der Chat-Agent erhält die Wissensbasis und den Teststand für den Vergleich in Lab 8.3.

## Ausgangslage

Der Nordwind IT-Helfer aus Lab 6.3 existiert als einfacher Chat-Agent ohne belastbare Wissensquellen. Aus Lab 7.3 liegen ein finaler System-Prompt und mindestens ein `SKILL.md`-Entwurf vor.

## Zielartefakt

Ein optimierter Copilot-Chat-Agent mit System-Prompt, zwei Nordwind-Wissensquellen und einer ausgefüllten Vorher/Nachher-Testtabelle.

## Voraussetzungen und Starterdateien

- Chat-Agent **Nordwind IT-Helfer** aus Lab 6.3 oder eine dokumentierte Fallback-Konfiguration.
- System-Prompt aus `../../m07-nextise-agentic-way/l03-skill-generator-assistant/` beziehungsweise aus den eigenen Lab-7.3-Notizen.
- Wissensquellen: `../../project/nordwind-it-richtlinie.md` und `../../project/nordwind-onboarding-leitfaden.md`.
- Testprotokoll aus Lab 6.3 mit drei Fragen: VPN, erster Arbeitstag, Gehalts-/Sonderfall.

## Aufgaben

1. **Ausgangsstand sichern**  
   Agentennamen, bisherige Instruktionen und bisherige Wissensquellen in einer kurzen Notiz festhalten.

2. **Drei bekannte Testfragen erneut stellen**  
   Die Fragen aus Lab 6.3 stellen und die Antworten in der Spalte `Vorher` dokumentieren.

3. **Instruktionen ersetzen**  
   Die bisherigen Instruktionen durch den finalen System-Prompt aus Lab 7.3 ersetzen. Keine Richtlinienfakten in die Instruktionen kopieren.

4. **Wissensquellen ergänzen**  
   `nordwind-it-richtlinie.md` und `nordwind-onboarding-leitfaden.md` im Agent Builder als Wissen hinzufügen. Klickpfad und Bezeichnungen gelten als **vor Kursbeginn im Tenant zu prüfen**.

5. **Fünf Testfragen stellen**  
   Die drei bekannten Fragen plus zwei neue Fragen testen:
   - „Was passiert, wenn mein VPN-Zertifikat abgelaufen ist?“
   - „Wann bekomme ich Zugriff auf projektspezifische Ablagen?“

6. **Vorher/Nachher-Tabelle ausfüllen**  
   Pro Frage `Vorher`, `Nachher`, `Quelle oder Eskalation` und `Nachschärfung` dokumentieren.

7. **Kurze Bewertung formulieren**  
   In zwei Sätzen festhalten, was durch Wissen besser wurde und welche Grenze weiterhin bleibt.

## Checkpoint

- Beide Nordwind-Dateien sind als Wissen hinterlegt oder in der Fallback-Konfiguration dokumentiert.
- Alle fünf Testfragen enthalten eine Vorher/Nachher-Beobachtung.
- Mindestens eine Antwort verweist erkennbar auf die IT-Richtlinie oder den Onboarding-Leitfaden.

## Abschlusskriterien

- Der Chat-Agent beantwortet VPN- und Onboarding-Fragen aus den Nordwind-Quellen.
- Der Gehalts-/Sonderfall wird nicht erfunden, sondern an HR oder IT eskaliert.
- Die Testtabelle ist vollständig und als Referenz für Lab 8.3 nutzbar.

## Erweiterung

Eine kombinierte Frage ergänzen, die VPN und Erstlogin verbindet. Beobachten, ob der Agent beide Quellen korrekt zusammenführt oder eine Rückfrage benötigt.

## Fallback

Ohne Agent-Builder-Zugang: die Optimierung als Konfigurationstabelle dokumentieren und die Nachher-Antworten anhand einer bereitgestellten Demo oder vorbereiteten Beispielantworten vergleichen. Einschränkung: kein eigener Live-Nachweis für Grounding und Quellenanzeige.
