# STK Push Fix - Solution Guide

## Problem Identified

The STK Push is failing due to **Invalid Callback URL**:
- Current Callback URL: `http://localhost:5000/api/mpesa/callback`
- M-Pesa needs a **publicly accessible HTTPS URL** to send payment notifications

## Solution: Use ngrok to expose localhost

### Step 1: Download and install ngrok
1. Go to https://ngrok.com/download
2. Download the Windows version
3. Extract the zip file
4. Add ngrok to your PATH (or use full path)

### Step 2: Start ngrok tunnel
```bash
ngrok http 5000
```

This will give you a public URL like: `https://your-ngrok-id.ngrok.io`

### Step 3: Update .env file
Edit `server/.env` and set the callback URL:

```env
# Use the ngrok URL (must be HTTPS for production)
MPESA_CALLBACK_URL=https://your-ngrok-id.ngrok.io/api/mpesa/callback
```

### Step 4: Restart the server
```bash
cd server
npm start
```

### Step 5: Test STK Push
Use phone: `254708374149` and PIN: `1234`

## Alternative: Use a tunneling service

If ngrok doesn't work, you can also use:
- **localtunnel**: `npx localtunnel --port 5000`
- **Serveo**: `ssh -R 80:localhost:5000 serveo.net`

## Production Deployment

For production, you need:
1. A registered domain with SSL certificate
2. A server with public IP or use a service like:
   - Render.com
   - Railway
   - Heroku
   - AWS/Google Cloud

Set your callback URL to:
```env
MPESA_CALLBACK_URL=https://your-domain.com/api/mpesa/callback
MPESA_ENVIRONMENT=production
```

## Quick Test (Without full setup)

The code now includes retry logic and better error messages. Try again after:
1. Setting up ngrok
2. Updating the callback URL in .env
3. Restarting the server

## Current Status

Your M-Pesa integration code is correct! The issue is:
- ✅ Credentials are valid (token generation works)
- ✅ Code implementation is correct
- ❌ Callback URL not publicly accessible
- ⚠️ Safaricom sandbox may be busy at times

