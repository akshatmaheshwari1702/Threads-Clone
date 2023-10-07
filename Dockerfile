FROM  node:18-slim
WORKDIR /app
COPY . ./
RUN npm install --production && \
npm run build
EXPOSE  3002/tcp

CMD ["node", "dist"]
