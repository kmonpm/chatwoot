FROM chatwoot/chatwoot:v4.11.1-ce

# ── 1) Login page shell (title, CSS overrides, JS white-label) ──────────────
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

# ── 2) Replace brand logo SVGs (light + dark mode) ──────────────────────────
#    Chatwoot serves these from /brand-assets/ via the Rails public folder
COPY brand-assets/logo.svg      /app/public/brand-assets/logo.svg
COPY brand-assets/logo_dark.svg /app/public/brand-assets/logo_dark.svg

# ── 3) Devise email templates ────────────────────────────────────────────────
COPY app/views/devise/mailer/confirmation_instructions.html.erb   /app/app/views/devise/mailer/confirmation_instructions.html.erb
COPY app/views/devise/mailer/reset_password_instructions.html.erb /app/app/views/devise/mailer/reset_password_instructions.html.erb
COPY app/views/devise/mailer/invitation_instructions.html.erb     /app/app/views/devise/mailer/invitation_instructions.html.erb

# ── 4) (Optional) Favicons — uncomment after adding PNG files to repo ────────
 #COPY public/favicon.ico                  /app/public/favicon.ico
 COPY public/favicon-16x16.png           /app/public/favicon-16x16.png
 COPY public/favicon-32x32.png           /app/public/favicon-32x32.png
 COPY public/favicon-96x96.png           /app/public/favicon-96x96.png
 COPY public/android-icon-192x192.png    /app/public/android-icon-192x192.png
 COPY public/apple-icon-180x180.png      /app/public/apple-icon-180x180.png
