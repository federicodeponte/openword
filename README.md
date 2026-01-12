# openletter

Generate professional business letters and documents using AI prompting. Swap logos, content, and styling with simple instructions.

## Features

- **Template-based**: Clean HTML templates for professional letters
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
# "Create a letter using the openletter template with my company logo from example.com"
```

## Structure

```
openletter/
├── templates/          # HTML letter templates
│   ├── letter-de.html  # German business letter
│   └── letter-en.html  # English business letter
├── examples/           # Example letters and outputs
├── prompts/            # System prompts for AI assistants
├── scripts/            # Build and export scripts
└── assets/             # Logos, fonts, etc.
```

## Usage with AI

1. Share the system prompt from `prompts/system.md` with your AI assistant
2. Provide your logo URL or file
3. Describe your letter content
4. AI generates the HTML, exports to PDF

### Example Prompt

```
Create a business letter using the openletter template:
- Logo: fetch from mycompany.com
- Sender: My Company GmbH, Street 1, 12345 City
- Recipient: Target Organization, Their Street 2, 67890 Town
- Subject: Project Proposal
- Content: [your content here]
- Export as PDF
```

## Templates

### German Business Letter (`letter-de.html`)
Standard DIN 5008 inspired layout with:
- Logo top-right
- Sender address line
- Recipient block left
- Date right-aligned
- Subject line bold
- Signature block

### English Business Letter (`letter-en.html`)
Professional layout with:
- Logo top-right
- Full sender address
- Recipient block
- Date and reference line
- Signature block

## Customization

### Logo
```html
<img src="your-logo.png" class="logo" alt="Company">
```

Tip: Use ImageMagick to trim whitespace:
```bash
convert logo.png -trim +repage logo-trimmed.png
```

### Styling
Edit CSS variables in the template `<style>` section:
```css
:root {
  --font-family: 'Helvetica Neue', Arial, sans-serif;
  --font-size: 11pt;
  --color-text: #1a1a1a;
  --page-margin: 2cm 2.5cm;
}
```

## Export

### PDF via weasyprint
```bash
weasyprint letter.html letter.pdf
```

### PDF via pandoc (alternative)
```bash
pandoc letter.md -o letter.pdf --pdf-engine=weasyprint
```

## License

MIT
