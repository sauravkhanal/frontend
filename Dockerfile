# Build stage

From node:18-alpine as Build
WORKDIR /app
COPY package.json ./
RUN npm i
COPY . .
RUN npm run Build

# Production stage
From nginx:alpine
#Copy built assets from build stage to deployment stage
COPY --from=build /app/dist /usr/share/nginx/html
COPY /Nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off"]