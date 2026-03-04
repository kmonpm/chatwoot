FROM chatwoot/chatwoot:v4.11.1-ce

COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

COPY public/brand-assets/logo.svg           /app/public/brand-assets/logo.svg
COPY public/brand-assets/logo_dark.svg      /app/public/brand-assets/logo_dark.svg
COPY public/brand-assets/logo_thumbnail.svg /app/public/brand-assets/logo_thumbnail.svg
