FROM chatwoot/chatwoot:v4.11.1-ce

# Login page shell
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

# Brand logos
COPY public/brand-assets/logo.svg           /app/public/brand-assets/logo.svg
COPY public/brand-assets/logo_dark.svg      /app/public/brand-assets/logo_dark.svg
COPY public/brand-assets/logo_thumbnail.svg /app/public/brand-assets/logo_thumbnail.svg

# Favicons — uncomment after adding PNG files to repo
# COPY public/favicon.ico /app/public/favicon.ico
 COPY public/favicon-16x16.png /app/public/favicon-16x16.png
 COPY public/favicon-32x32.png /app/public/favicon-32x32.png
 COPY public/apple-icon-180x180.png /app/public/apple-icon-180x180.png
 COPY public/android-icon-192x192.png /app/public/android-icon-192x192.png
