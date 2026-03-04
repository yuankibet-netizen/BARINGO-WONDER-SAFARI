# Baringo Wonders Safari Booking System - TODO

## Completed ✅

### Backend Integration
- [x] Created database service (server/database.js) for Supabase
- [x] Created admin routes (server/routes/admin.js)
- [x] Added booking API endpoints to server/index.js
- [x] Added sendBookingConfirmation method to emailService.js
- [x] Set up Supabase client (server/supabase.js)

### Frontend Integration
- [x] Created AdminDashboard component (src/components/AdminDashboard.tsx)
- [x] Updated App.tsx with Admin Dashboard access
- [x] Backend health check includes database status

### Database
- [x] Created Supabase schema (server/supabase_setup.sql)
- [x] Tables: bookings, payments, services

## Next Steps

### 1. Set up Supabase Database
Run the SQL in server/supabase_setup.sql in your Supabase SQL Editor

### 2. Configure Environment Variables
Create server/.env with:
```
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_anon_key
MPESA_CONSUMER_KEY=your_mpesa_consumer_key
MPESA_CONSUMER_SECRET=your_mpesa_consumer_secret
MPESA_PASSKEY=your_mpesa_passkey
MPESA_SHORTCODE=174379
MPESA_CALLBACK_URL=https://your-ngrok-url.ngrok.io/api/mpesa/callback
MPESA_ENVIRONMENT=sandbox
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=your_email@gmail.com
EMAIL_PASS=your_email_app_password
ADMIN_EMAIL=yuankibet@gmail.com
```

### 3. Start the Backend Server
```
bash
cd server
npm install
npm start
```

### 4. Access Admin Dashboard
- Click "Admin" button on the home page, OR
- Add `?admin=true` to the URL

### 5. Test M-Pesa Integration
Use test phone number: 254708374149
PIN: 1234

## API Endpoints

### Public
- GET /api/health - Health check
- POST /api/bookings - Create booking
- POST /api/mpesa/stkpush - Initiate payment
- GET /api/mpesa/query/:id - Query payment status
- POST /api/mpesa/callback - M-Pesa callback

### Admin
- GET /api/admin/bookings - Get all bookings
- GET /api/admin/bookings/:id - Get booking by ID
- PUT /api/admin/bookings/:id/status - Update booking status
- POST /api/admin/resend-email - Resend confirmation email

## Notes
- The system uses Supabase for data persistence
- M-Pesa payments work in sandbox mode for testing
- Emails are sent to both customer and admin for each booking/payment
- All bookings are stored in Supabase with full transaction tracking
