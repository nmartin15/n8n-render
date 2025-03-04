FROM n8nio/n8n:1.50.0 
 
# Set the data directory path 
ENV N8N_USER_FOLDER=/n8n-data 
 
# Ensure directory exists with proper permissions 
RUN mkdir -p /n8n-data && \ 
    chown -R node:node /n8n-data 
 
# Run as the node user (default in n8n image) 
USER node 
 
# Start n8n 
CMD ["n8n", "start"] 
