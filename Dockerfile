FROM node:20-alpine3.18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./ ./

ENV NODE_ENV=production
ENV PORT=5001
ENV API_GATEWAY_URL="*"
ENV LOG_LEVEL="info"
ENV ERROR_EXPOSURE_DEPTH="BUSINESS"

EXPOSE 5001

CMD ["npm", "start"]