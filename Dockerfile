FROM chatwoot/chatwoot:v4.11.1-ce

COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

COPY public/brand-assets/logo.svg           /app/public/brand-assets/logo.svg
COPY public/brand-assets/logo_dark.svg      /app/public/brand-assets/logo_dark.svg
COPY public/brand-assets/logo_thumbnail.svg /app/public/brand-assets/logo_thumbnail.svg
# Favicons
COPY public/favicon.ico                  /app/public/favicon.ico
COPY public/favicon-16x16.png           /app/public/favicon-16x16.png
COPY public/favicon-32x32.png           /app/public/favicon-32x32.png
COPY public/favicon-96x96.png           /app/public/favicon-96x96.png
COPY public/android-icon-192x192.png    /app/public/android-icon-192x192.png
COPY public/apple-icon-57x57.png        /app/public/apple-icon-57x57.png
COPY public/apple-icon-60x60.png        /app/public/apple-icon-60x60.png
COPY public/apple-icon-72x72.png        /app/public/apple-icon-72x72.png
COPY public/apple-icon-76x76.png        /app/public/apple-icon-76x76.png
COPY public/apple-icon-114x114.png      /app/public/apple-icon-114x114.png
COPY public/apple-icon-120x120.png      /app/public/apple-icon-120x120.png
COPY public/apple-icon-144x144.png      /app/public/apple-icon-144x144.png
COPY public/apple-icon-152x152.png      /app/public/apple-icon-152x152.png
COPY public/apple-icon-180x180.png      /app/public/apple-icon-180x180.png
