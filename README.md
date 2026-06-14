# LaTeX-Projekte & Vorlagen

Eine strukturierte Sammlung von LaTeX-Projekten, wissenschaftlichen Dokumentenvorlagen und automatisierten Workflows.

---

## 📌 Inhalt des Repositories

Hier ist eine Übersicht der typischen Verzeichnisse in diesem Projekt:

* 📂 `/Vorlagen` – Universelle Templates für Berichte, Protokolle, Hausarbeiten und Dokumente.
* 📂 `/Abschlussarbeit` – Quellcode und Struktur für wissenschaftliche Arbeiten (Bachelor-/Masterarbeit).
* 📂 `/Lebenslauf` – Moderne, professionelle und minimalistische Lebenslauf-Vorlagen (CV).
* 📂 `/Praesentationen` – Beamer-Templates für wissenschaftliche oder geschäftliche Vorträge.

---

## 🚀 Voraussetzungen & Installation (Für die lokale Bearbeitung)

Wenn du die Dokumente direkt auf deinem eigenen Computer bearbeiten und kompilieren möchtest, benötigst du eine LaTeX-Distribution und einen geeigneten Editor.

### 1. LaTeX-Distribution installieren
* **Windows:** [MiKTeX](https://miktex.org/) oder [TeX Live](https://www.tug.org/texlive/)
* **macOS:** [MacTeX](https://www.tug.org/mactex/)
* **Linux (Ubuntu/Debian):** `sudo apt-get update && sudo apt-get install texlive-full`

### 2. Empfohlene Editoren
* **VS Code (Empfohlen):** Zusammen mit der Erweiterung **LaTeX Workshop**.
* **TeXstudio:** Eine klassische, einsteigerfreundliche Komplettlösung.
* **Overleaf (Cloud):** Alternativ einfach als ZIP-Datei exportieren und in [Overleaf](https://www.overleaf.com/) hochladen.

---

## 🛠️ Manuelle Kompilierung (Kommandozeile)

```bash
# Kompilierung mit pdfLaTeX (Standard)
latexmk -pdf main.tex

# Bereinigen von temporären Hilfsdateien (.aux, .log, .toc, etc.)
latexmk -c
```

---

## 🤖 Automatische PDF-Erstellung (GitHub Actions)

Dieses Repository ist für eine automatische Hintergrund-Funktion (CI/CD) vorbereitet.

### 🤔 Was bedeutet das für dich?
Jedes Mal, wenn du eine Änderung an deinen LaTeX-Dateien vornimmst und sie hier auf GitHub hochlädst (ein "Push"), fängt im Hintergrund ein virtueller Computer von GitHub automatisch an zu arbeiten. Er liest deinen LaTeX-Code komplett durch und baut daraus die fertige PDF-Datei zusammen. 

**Dein großer Vorteil:** Du musst LaTeX nicht einmal auf deinem eigenen Computer installiert haben, um zu sehen, wie das fertige Dokument aussieht. GitHub übernimmt das fehlerfrei für dich im Hintergrund!

### 📂 Wo finde ich die automatisch erstellte PDF?
1. Klicke ganz oben auf dieser GitHub-Projektseite auf den Reiter **"Actions"** (direkt neben "Code").
2. Klicke in der Liste auf den obersten (neuesten) Eintrag.
3. Scrolle auf der folgenden Detailseite ganz nach unten bis zum Bereich **"Artifacts"** (Artefakte).
4. Klicke auf den Download-Link namens `pdf-dokument`, um deine fertige PDF-Datei als ZIP-Archiv herunterzuladen.

---

## 📝 TODO: CI/CD Automatisierung im Repository aktivieren

> ⚠️ **HINWEIS:** Damit die oben beschriebene automatische PDF-Erstellung funktioniert, muss dieser technische Bauplan noch im Repository hinterlegt werden.

**Deine Aufgabe (TODO):**
1. Erstelle im Hauptverzeichnis dieses Repositories einen Ordner namens `.github` (mit dem Punkt am Anfang).
2. Erstelle darin einen Unterordner namens `workflows`.
3. Erstelle in diesem Ordner eine Datei namens `compile_latex.yml`.
4. Kopiere den folgenden YAML-Code exakt so in diese Datei hinein und speichere sie ab:

```yaml
name: LaTeX PDF automatisch erstellen

on:
  push:
    branches: [ main ] # Startet die Automatisierung bei jedem Push in den "main"-Branch

jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      # 1. Den Code aus diesem Repository auf den virtuellen Server laden
      - name: Code auschecken
        uses: actions/checkout@v4

      # 2. LaTeX im Hintergrund ausführen und PDF erstellen
      - name: LaTeX kompilieren
        uses: xu-cheng/latex-action@v3
        with:
          root_file: main.tex # ⚠️ WICHTIG: Wenn deine Hauptdatei anders heißt, hier anpassen (z.B. master.tex)!

      # 3. Die fertige PDF-Datei auf GitHub als Download bereitstellen
      - name: PDF als Download speichern
        uses: actions/upload-artifact@v4
        with:
          name: pdf-dokument
          path: main.pdf # ⚠️ WICHTIG: Wenn deine Hauptdatei anders heißt, hier anpassen (z.B. master.pdf)!
```

---

## ✍️ Beitrag leisten (Contributing)

GitHub-Issues und Pull Requests sind herzlich willkommen!
1. Repository forken
2. Neuen Feature-Branch erstellen (`git checkout -b feature/OptimierteVorlage`)
3. Änderungen committen und Branch hochladen
4. Einen Pull Request auf GitHub eröffnen

---

## 📄 Lizenz

Dieses Projekt ist unter der [MIT-Lizenz](LICENSE) lizenziert.
