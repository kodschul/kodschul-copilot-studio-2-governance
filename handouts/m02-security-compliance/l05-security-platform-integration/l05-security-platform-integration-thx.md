---
theme: default
layout: default
---

# Lab 2.5: Plattform-Integration

**Leitfragen:**

1. Welche Signale liefert welches Produkt an Security Copilot?
2. Was ist der Unterschied zwischen eigenständiger und eingebetteter Security-Copilot-Nutzung?
3. Was sind Plugins, Promptbooks und Agents in diesem Kontext — grob eingeordnet, nicht vertieft?

**Antworten:**

<details>
<summary>1. Welches Produkt liefert welche Signale?</summary>

Entra ID liefert Identitäts-/Zugriffssignale, Purview liefert Klassifizierungs-/DLP-Signale, Defender XDR liefert Bedrohungssignale, Intune liefert Gerätesignale, Sentinel bündelt unternehmensweite Sicherheitsereignisse. _Quelle: `01-security-plattform-landkarte.md`, Microsoft Learn Security-Copilot-Integrationen, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Eigenständig vs. eingebettet</summary>

Eigenständig: Security Copilot als eigene Oberfläche für gezielte Analystenfragen. Eingebettet: Security-Copilot-Funktionen direkt innerhalb von Defender, Sentinel oder Intune. _Quelle: Microsoft Learn Security-Copilot-Einbettung, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Plugins, Promptbooks, Agents (grob)</summary>

Plugin: Anbindung einer zusätzlichen Datenquelle. Promptbook: vordefinierte Abfolge von Prompts für einen wiederkehrenden Analyseablauf. Agent: eigenständig handelnde Komponente, die einen Teilschritt automatisiert. _Quelle: `01-security-plattform-landkarte.md`, Microsoft Learn Security-Copilot-Konzepte, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Konkrete Konfiguration einzelner Plugins/Promptbooks im Detail → Parkplatz bzw. internes Security-Team.

- Diese Lab-Einheit hat keine eigene Übung — die Plattform-Landkarte aus `01-security-plattform-landkarte.md` wird gemeinsam durchgegangen.

## Signalquellen im Überblick

| Produkt      | Signalart                               |
| ------------ | --------------------------------------- |
| Entra ID     | Identität, Zugriff, Anmelderisiko       |
| Purview      | Klassifizierung, DLP-Verstöße           |
| Defender XDR | Bedrohungserkennung                     |
| Intune       | Gerätestatus, Konformität               |
| Sentinel     | unternehmensweite Sicherheitsereignisse |

## Eigenständig vs. eingebettet: wann welche Nutzung

| Situation                                          | Passende Nutzung                          |
| -------------------------------------------------- | ----------------------------------------- |
| Gezielte, tiefe Analyse eines komplexen Falls      | eigenständige Security-Copilot-Oberfläche |
| Schnelle Einordnung während der Arbeit in Defender | eingebettete Nutzung direkt im Produkt    |

> **Merksatz:** Die Signalqualität von Security Copilot hängt direkt davon ab, welche Produkte im eigenen Tenant tatsächlich angebunden sind.

## Grenzen

- Plugins, Promptbooks und Agents werden hier nur grob eingeordnet, nicht konfiguriert.
- Welche Produkte tatsächlich angebunden sind, ist tenant-spezifisch und muss vor einer Analyse geprüft werden.

## Fazit

- Security Copilot bündelt Signale aus Entra ID, Purview, Defender XDR, Intune und Sentinel.
- Eigenständige Nutzung eignet sich für tiefe Analysen, eingebettete Nutzung für schnelle Einordnung im laufenden Produkt.
- Plugins, Promptbooks und Agents sind die drei Erweiterungsbausteine dieser Plattform, hier nur grob eingeordnet.

Kein separates Übungsblatt — die Plattform-Landkarte wird im Plenum gemeinsam durchgegangen.
