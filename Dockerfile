FROM node:22-alpine
WORKDIR /app
COPY server.js VERSION HEALTH ./
RUN echo "version-c fails its Docker build on purpose" >&2 && exit 1
USER node
EXPOSE 3000
CMD ["node", "server.js"]
