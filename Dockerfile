# build step
FROM node:alpine as build
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
CMD ["npm", "build"]

# release step
FROM nginx:alpine as release
COPY --from=build /app/build /usr/share/nginx/html/
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
