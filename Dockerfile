# Stage 1: Build the React app
FROM node:22-alpine AS builder
WORKDIR /app
# Install dependencies
COPY package*.json ./
RUN npm install
# Copy source code and build
COPY . .
# Build with environment variables injected from OpenShift secrets
# ENV VITE_CUSTOM_MESSAGE=$VITE_CUSTOM_MESSAGE
RUN npm run build
# Stage 2: Serve the built app with 'serve'
FROM node:22-alpine
WORKDIR /app
# Install 'serve' globally
RUN npm install -g serve
# Copy built files from builder stage
COPY --from=builder /app/dist /app/dist
EXPOSE 8080
CMD ["serve", "-s", "dist", "-l", "8080"]