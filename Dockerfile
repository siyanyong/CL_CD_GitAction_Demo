# Stage 1: Build React app
FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with nginx configured for GitHub Pages subpath
FROM nginx:alpine
# Copy build files to nginx html folder under /CL_CD_GitAction_Demo
COPY --from=builder /app/build /usr/share/nginx/html/CL_CD_GitAction_Demo

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

