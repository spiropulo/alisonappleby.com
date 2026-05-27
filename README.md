# Alison Appleby Website

Static website for Alison R. Appleby's Educational Therapy Services.

## Structure

```
├── index.html      # Main page
├── css/styles.css  # Styles
├── js/main.js      # Navigation and scroll behavior
└── assets/img/     # Images and logos
```

## Local preview

```bash
python3 -m http.server 8080
```

Open http://localhost:8080

## Deployment

Hosted on [GitHub Pages](https://pages.github.com/). Push to `main` to publish.

### Enable Pages (one-time, in GitHub)

1. Open **Settings → Pages** on [github.com/spiropulo/alisonappleby.com](https://github.com/spiropulo/alisonappleby.com/settings/pages)
2. **Source:** Deploy from branch `main`, folder `/ (root)`
3. **Custom domain:** `alisonappleby.com` (also set via `CNAME` in this repo)
4. Wait for DNS check to pass, then enable **Enforce HTTPS**

### DNS (Squarespace / Google Domains)

Delete any existing A records pointing to `34.96.121.84`, then add:

**Root domain** (`alisonappleby.com`) — leave the **Host** field **blank** (or enter `alisonappleby.com` if required). Add four separate A records:

| Host | Type | Data / Points to |
|------|------|------------------|
| *(blank)* | A | `185.199.108.153` |
| *(blank)* | A | `185.199.109.153` |
| *(blank)* | A | `185.199.110.153` |
| *(blank)* | A | `185.199.111.153` |

**WWW subdomain** — Host: `www`

| Host | Type | Data / Points to |
|------|------|------------------|
| `www` | CNAME | `spiropulo.github.io` |

GitHub will serve the site at `https://alisonappleby.com` and automatically redirect `www` traffic to the apex domain.

DNS changes can take up to 24 hours to propagate; HTTPS is usually ready within an hour after DNS is correct.
