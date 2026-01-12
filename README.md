# openletter

> Generate professional business documents using AI and natural language prompts.

**openletter** is an open-source document generation toolkit designed for use with AI assistants (ChatGPT, Claude, etc.). Create invoices, contracts, business letters, and more by simply describing what you need.

## Why openletter?

- **AI-Native**: Templates optimized for LLM prompting and document generation
- **No Design Skills Needed**: Professional layouts out of the box
- **Fully Customizable**: Swap logos, colors, content with simple instructions
- **High-Quality PDF Export**: Production-ready documents via weasyprint
- **German & English**: Localized templates for DACH region and international use
- **Open Source**: MIT licensed, fork and modify freely

## Use Cases

- **Freelancers**: Generate invoices, quotes, and contracts
- **Startups**: Professional correspondence without design overhead
- **Developers**: Automate document generation in workflows
- **Anyone**: Cancel subscriptions, write complaints, request references

## Templates

| Template | German | Description |
|----------|--------|-------------|
| Business Letter | `letter-de.html` | Standard DIN 5008 business letter |
| Invoice | `rechnung-de.html` | Invoice with line items, VAT, payment info |
| Quote/Proposal | `angebot-de.html` | Project quotes with pricing tables |
| Payment Reminder | `mahnung-de.html` | Dunning letter with fee calculation |
| Cancellation | `kuendigung-de.html` | Contract/subscription cancellation |
| Contract | `vertrag-de.html` | Service agreement template |
| Cover Letter | `bewerbung-de.html` | Job application cover letter |
| Work Reference | `zeugnis-de.html` | German Arbeitszeugnis |
| Complaint | `beschwerde-de.html` | Formal complaint letter |
| Letter (EN) | `letter-en.html` | English business letter |

## Quick Start

### Installation

```bash
# macOS
brew install weasyprint imagemagick

# Ubuntu/Debian
apt install weasyprint imagemagick

# Windows (via pip)
pip install weasyprint
```

### Generate a PDF

```bash
# Clone the repo
git clone https://github.com/federicodeponte/openletter.git
cd openletter

# Generate PDF from any template
weasyprint templates/rechnung-de.html invoice.pdf
```

### Use with AI Assistant

1. Open your AI assistant (ChatGPT, Claude, etc.)
2. Share the system prompt from `prompts/system.md`
3. Ask naturally:

```
Create an invoice for my consulting work:
- My company: Acme GmbH, Hauptstraße 1, 10115 Berlin
- Client: TechCorp AG, Innovationsweg 5, 80331 München
- 16 hours consulting at €150/hour
- Logo from acme.de
```

The AI will generate the HTML and export a professional PDF.

## Example Prompts

### Invoice
> "Create an invoice from Muster GmbH to Max Kunde for 3 items: 8h consulting at €120, 24h development at €95, 4h documentation at €85"

### Cancellation
> "Write a cancellation letter for my gym membership at FitLife GmbH, contract number FL-2023-45678"

### Work Reference
> "Generate an Arbeitszeugnis for Julia Schmidt who worked as Senior Developer from April 2022 to December 2025, excellent performance"

### Quote
> "Create a project quote for website redesign: €3500 design, 40h frontend at €95/h, 24h CMS integration at €95/h"

## Project Structure

```
openletter/
├── templates/          # HTML templates (10 document types)
├── examples/           # Sample outputs with mock data
├── prompts/            # AI system prompts
├── scripts/            # Helper scripts (PDF generation, logo fetching)
└── assets/             # Logos and resources
```

## Customization

### Replace Logo
```bash
# Fetch and prepare logo from website
./scripts/fetch-logo.sh https://example.com/logo.png assets/my-logo.png
```

### Modify Styling
Edit CSS variables in any template:
```css
:root {
  --font-family: 'Helvetica Neue', Arial, sans-serif;
  --font-size: 11pt;
  --color-text: #1a1a1a;
  --color-accent: #2c3e50;
}
```

## Tech Stack

- **HTML/CSS**: Template format for maximum compatibility
- **weasyprint**: PDF rendering engine
- **ImageMagick**: Logo processing and optimization

## Contributing

Contributions welcome! Ideas for new templates, translations, or improvements - open an issue or PR.

## Keywords

document generator, PDF creator, invoice template, business letter template, AI document automation, German business documents, Rechnung erstellen, Geschäftsbrief, Arbeitszeugnis, Kündigung schreiben, contract template, quote generator, LLM document generation, ChatGPT documents, Claude documents, weasyprint templates

## License

MIT License - use freely for personal and commercial projects.

---

Made with AI assistance. Star ⭐ if you find it useful!
