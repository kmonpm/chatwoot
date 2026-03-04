FROM chatwoot/chatwoot:v4.11.1-ce

# ── 1) Login page shell (title, CSS overrides, JS white-label) ──────────────
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

# ── 2) Replace brand logo SVGs (light + dark mode) ──────────────────────────
#    Chatwoot serves these from /brand-assets/ via the Rails public folder
COPY brand-assets/logo.svg      /app/public/brand-assets/logo.svg
COPY brand-assets/logo_dark.svg /app/public/brand-assets/logo_dark.svg

# ── 3) (Optional) Replace favicons with your own Boster icons ───────────────
#    Uncomment these lines once you have your own favicon files in /public/
# COPY public/favicon.ico            /app/public/favicon.ico
# COPY public/favicon-16x16.png      /app/public/favicon-16x16.png
# COPY public/favicon-32x32.png      /app/public/favicon-32x32.png
# COPY public/apple-icon-180x180.png /app/public/apple-icon-180x180.png
