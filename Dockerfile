# Stage 1: Build React app
FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with nginx configured for OpenShift
FROM nginx:alpine

# Copy build files to nginx html folder under /CL_CD_GitAction_Demo
COPY --from=builder /app/build /usr/share/nginx/html/CL_CD_GitAction_Demo

# Copy full nginx config (overwriting main nginx.conf)
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]


