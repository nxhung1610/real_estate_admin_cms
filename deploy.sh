
fvm flutter clean && fvm flutter pub get && \
fvm flutter build web --release --base-href /cms/ && \
rm -rf cms && rm cms.zip && mkdir -p cms && \
mv  build/web/* cms/ && \
zip -r cms.zip cms/ && \
scp cms.zip root@4jnw.l.time4vps.cloud:/var/www/html && \
ssh root@4jnw.l.time4vps.cloud "cd /var/www/html && rm -rf cms && unzip cms.zip"
