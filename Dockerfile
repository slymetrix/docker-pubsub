FROM google/cloud-sdk:alpine

ENV PROJECT_ID="gcp-project"

ADD start.sh /start.sh

RUN set -eux; \
    apk --update add openjdk11-jre; \
    gcloud components install beta pubsub-emulator --quiet; \
    gcloud components update; \
    rm -rf /var/cache/apk/*; \
    chmod +x /start.sh

EXPOSE 8085

CMD [ "/start.sh" ]