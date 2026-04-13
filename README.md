# Global Citizen Resource Hub

A secure, dynamic web application for tracking and analyzing international migration trends and security reports.

## Project Overview

The Global Citizen Resource Hub is a full-stack application that provides:
- Real-time security impact monitoring
- Migration trend analysis
- User authentication and authorization
- Data visualization and reporting
- Responsive web interface with dark mode support

## Technical Architecture

### Backend (Python/Flask)
- **Framework**: Flask 2.3.3
- **Database**: SQLAlchemy with SQLite
- **Authentication**: Flask-Bcrypt for password hashing
- **Security**: Input sanitization, XSS prevention, SQL injection protection
- **API**: RESTful endpoints with JSON responses

### Frontend (HTML5, CSS3, JavaScript)
- **Styling**: Custom CSS with CSS Variables and Grid/Flexbox
- **Interactivity**: Vanilla JavaScript (ES6+)
- **Features**: Dark mode, form validation, responsive design
- **Animations**: Loading states, hover effects, smooth transitions

### Database
- **SQLite** for development and demonstration
- **Models**: User, Report with proper relationships
- **Security**: Parameterized queries, input validation

## Features

### Security Impact Monitor
- Real-time security report tracking
- Regional stability analysis
- Automated categorization based on keywords
- Recent report display with sorting

### User Dashboard
- Statistics overview (total reports, security reports, migration reports)
- Recent reports table with filtering
- Animated number counters
- Responsive data visualization

### Report Submission
- Secure form with validation
- Automatic categorization (Migration, Security, Logistics, General)
- Input sanitization against XSS
- Real-time feedback

### Authentication System
- User registration with password hashing
- Secure login with session management
- Input validation and sanitization
- Protection against common attacks

## Installation and Setup

### Prerequisites
- Python 3.8 or higher
- pip package manager
- Modern web browser

### Backend Setup

1. **Navigate to backend directory:**
   ```bash
   cd backend
   ```

2. **Create virtual environment:**
   ```bash
   python -m venv venv
   
   # Windows
   venv\Scripts\activate
   
   # macOS/Linux
   source venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the application:**
   ```bash
   python app.py
   ```

The backend server will start on `http://localhost:5000`

### Frontend Setup

1. **Navigate to frontend directory:**
   ```bash
   cd frontend
   ```

2. **Open the application:**
   - Simply open `index.html` in a modern web browser
   - Or use a local server for better development experience:
     ```bash
     # Using Python
     python -m http.server 8000
     
     # Using Node.js (if installed)
     npx serve .
     ```

The frontend will be available at `http://localhost:8000` (if using a local server)

## API Endpoints

### Authentication
- `POST /api/users/register` - Register new user
- `POST /api/users/login` - User login

### Reports
- `GET /api/reports` - Get all reports (sorted by timestamp)
- `POST /api/reports` - Create new report
- `GET /api/security-monitor` - Get security reports for monitoring

### Request/Response Examples

#### Register User
```bash
POST /api/users/register
Content-Type: application/json

{
    "username": "john_doe",
    "email": "john@example.com",
    "password": "secure_password123"
}
```

#### Create Report
```bash
POST /api/reports
Content-Type: application/json

{
    "user_id": 1,
    "title": "Security Alert: Border Activity",
    "description": "Increased activity detected at northern border region",
    "location": "Northern Border, Country"
}
```

## Security Features

### Input Sanitization
- HTML tag removal
- Special character escaping
- SQL injection prevention
- XSS protection

### Authentication Security
- Password hashing with bcrypt
- Session management
- Input validation
- Rate limiting (recommended for production)

### Data Protection
- Parameterized queries
- Input length validation
- Type checking
- Error handling without information leakage

## Development Workflow

### Version Control
```bash
# Initialize repository (if not already done)
git init

# Add files
git add .

# Commit changes
git commit -m "Initial commit: Full-stack application setup"

# Add remote repository
git remote add origin https://github.com/yourusername/global-citizen-hub.git

# Push to GitHub
git push -u origin main
```

### Development Best Practices
- Write descriptive commit messages
- Create feature branches for new functionality
- Test security measures thoroughly
- Keep dependencies updated
- Use environment variables for sensitive data

## Testing

### Manual Testing
1. Test user registration and login
2. Verify report submission and categorization
3. Test security monitor functionality
4. Validate responsive design
5. Test dark mode functionality

### Security Testing
- Test for XSS vulnerabilities
- Verify SQL injection protection
- Test authentication bypass attempts
- Validate input sanitization

## Deployment Considerations

### Production Environment
- Use PostgreSQL or MySQL instead of SQLite
- Implement proper session management
- Add rate limiting and DDoS protection
- Use HTTPS for all communications
- Set up proper logging and monitoring

### Environment Variables
```bash
SECRET_KEY=your-secret-key-here
DATABASE_URL=your-production-database-url
FLASK_ENV=production
```

## Browser Compatibility

The application supports:
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For issues and questions:
1. Check the troubleshooting section
2. Review the API documentation
3. Create an issue on GitHub

## Troubleshooting

### Common Issues

**Backend not starting:**
- Check Python version compatibility
- Verify all dependencies are installed
- Check if port 5000 is available

**Frontend not loading data:**
- Ensure backend is running on localhost:5000
- Check browser console for CORS errors
- Verify API endpoints are accessible

**Database issues:**
- Delete the `global_citizen.db` file to reset
- Check file permissions
- Verify SQLAlchemy configuration

**Authentication problems:**
- Check password requirements (minimum 8 characters)
- Verify email format is valid
- Ensure username is unique
