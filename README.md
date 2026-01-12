# openletter

Generate professional business documents using AI prompting. Swap logos, content, and styling with simple instructions.

## Features

- **Template-based**: Clean HTML templates for professional documents
- **AI-friendly**: System prompts optimized for LLMs to generate and modify documents
- **Easy customization**: Change logo, sender, recipient, content via prompts
- **PDF export**: Uses weasyprint for high-quality PDF generation
- **Multi-language**: German and English templates included

## Quick Start

```bash
# Install dependencies
brew install weasyprint imagemagick

# Generate PDF from template
./scripts/generate.sh templates/letter-de.html output.pdf

# Or use with AI assistant
# "Create an invoice using the openletter template with my company logo"
```

## Templates

| Template | Description | File |
|----------|-------------|------|
| **Brief (DE)** | German business letter | `letter-de.html` |
| **Letter (EN)** | English business letter | `letter-en.html` |
| **Rechnung** | Invoice with line items | `rechnung-de.html` |
| **Angebot** | Quote/Proposal | `angebot-de.html` |
| **Mahnung** | Payment reminder | `mahnung-de.html` |
| **Kündigung** | Cancellation letter | `kuendigung-de.html` |
| **Vertrag** | Contract template | `vertrag-de.html` |
| **Bewerbung** | Cover letter | `bewerbung-de.html` |
| **Zeugnis** | Work reference | `zeugnis-de.html` |
| **Beschwerde** | Complaint letter | `beschwerde-de.html` |

## Structure

```
openletter/
├── templates/          # HTML document templates
│   ├── letter-de.html
│   ├── letter-en.html
│   ├── rechnung-de.html
│   ├── angebot-de.html
│   ├── mahnung-de.html
│   ├── kuendigung-de.html
│   ├── vertrag-de.html
│   ├── bewerbung-de.html
│   ├── zeugnis-de.html
│   └── beschwerde-de.html
├── examples/           # Example outputs
├── prompts/            # AI system prompts
├── scripts/            # Build and export scripts
└── assets/             # Logos, fonts
```

## Usage with AI

1. Share the system prompt from `prompts/system.md` with your AI assistant
2. Provide your logo URL or file
3. Describe your document content
4. AI generates the HTML, exports to PDF

### Example Prompts

```
Create an invoice for my company using the openletter rechnung template.
Logo from mycompany.com, customer is XYZ GmbH, 3 line items.
```

```
Write a cancellation letter for my gym membership using the kündigung template.
```

```
Generate a job reference (Zeugnis) for an employee who worked as a developer.
```

## Customization

### Logo
Replace the logo path in templates or provide via prompt:
```html
<img src="your-logo.png" class="logo" alt="Company">
```

Tip: Use ImageMagick to trim whitespace:
```bash
convert logo.png -trim +repage logo-trimmed.png
```

### Styling
Edit CSS variables in template `<style>` sections:
```css
:root {
  --font-family: 'Helvetica Neue', Arial, sans-serif;
  --font-size: 11pt;
  --color-text: #1a1a1a;
}
```

## Export

```bash
# PDF via weasyprint
weasyprint document.html document.pdf

# With custom stylesheets
weasyprint document.html document.pdf -s custom.css
```

## License

MIT
