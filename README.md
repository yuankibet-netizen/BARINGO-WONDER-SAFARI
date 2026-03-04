# Booking System

A modern, responsive booking system built with React, TypeScript, and Tailwind CSS. This application allows users to book appointments for various services with an intuitive interface.

## Features

- **Service Selection**: Browse and select from multiple service categories
- **Calendar Integration**: Interactive calendar for date selection
- **Time Slot Management**: Available time slots with real-time availability
- **Customer Information**: Secure form for collecting booking details
- **Booking Confirmation**: Immediate confirmation with booking details
- **Recent Bookings**: View recent appointment history
- **Responsive Design**: Works seamlessly on desktop and mobile devices

## Technologies Used

- **React 18** - UI framework
- **TypeScript** - Type safety
- **Tailwind CSS** - Styling
- **React Calendar** - Date selection
- **Date FNS** - Date manipulation
- **Lucide React** - Icons

## Getting Started

### Prerequisites

- Node.js (version 14 or higher)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd booking-system
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm start
```

The application will open in your default browser at `http://localhost:3000`.

## Usage

1. **Select a Service**: Browse available services organized by categories
2. **Choose Date & Time**: Pick a date from the calendar and select an available time slot
3. **Enter Information**: Fill in your contact details
4. **Confirm Booking**: Review your booking details and confirm

## Project Structure

```
src/
├── components/          # React components
│   ├── Calendar.tsx    # Custom calendar component
│   ├── ServiceSelector.tsx    # Service selection interface
│   ├── TimeSlotSelector.tsx   # Time slot selection
│   └── BookingForm.tsx # Customer information form
├── types/              # TypeScript type definitions
│   └── booking.ts      # Booking-related types
├── utils/              # Utility functions
│   └── mockData.ts     # Mock data for services and bookings
├── App.tsx             # Main application component
├── index.tsx           # Application entry point
└── index.css           # Global styles
```

## Customization

### Adding New Services

Edit `src/utils/mockData.ts` to add or modify services:

```typescript
export const mockServices: Service[] = [
  {
    id: 'unique-id',
    name: 'Service Name',
    description: 'Service description',
    duration: 60, // in minutes
    price: 100,
    category: 'Category Name'
  }
];
```

### Styling

The application uses Tailwind CSS for styling. Customize the theme by editing `tailwind.config.js`.

## Available Scripts

- `npm start` - Runs the app in development mode
- `npm build` - Builds the app for production
- `npm test` - Launches the test runner
- `npm run eject` - Ejects from Create React App (one-way operation)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License.
