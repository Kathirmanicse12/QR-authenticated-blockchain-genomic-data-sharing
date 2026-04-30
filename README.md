# QR-Authenticated Blockchain for Protected Genomic and Medical Research Data Sharing

A secure web application to upload and share sensitive medical files using 
QR code login, blockchain hashing, and multi-layer encryption.
## About This Project

This project allows doctors and researchers to safely share medical and genomic 
files over the internet. It uses multiple security layers so that only 
approved users can access the files.

- Files are encrypted before storing
- Login requires scanning a QR code from your email (like OTP)
- The file's secret key is hidden inside an image (steganography)
- Every uploaded file is tracked using blockchain hashing
- ## Technologies Used

- Python 3.x
- Flask (Web Framework)
- MySQL (Database)
- OpenCV (Webcam QR Code scanning)
- ECIES (File Encryption)
- Fernet (Key Encryption)
- Stegano LSB (Hiding key inside image)
- SHA-256 HMAC (Blockchain Hashing)
- QRcode library (QR generation)
- Gmail SMTP (Sending emails)
- ## Installation Steps

Step 1 - Install Python 3.8 or above from https://python.org

Step 2 - Install required libraries by running this command:
pip install flask mysql-connector-python eciespy opencv-python qrcode[pil] stegano cryptography

Step 3 - Install and start MySQL (using XAMPP or WAMP)

Step 4 - Create these folders inside the static/ folder:
   static/upload
   static/Encrypt
   static/Decrypt
   static/Encode
   static/Uupload
   static/Decode
   static/Qrcode
   ## Database Setup

Step 1 - Open phpMyAdmin and create a database named:  26clouddbpy

Step 2 - Click Import and select the file:  Project_code_mysql_.sql

Step 3 - Click Go — all 4 tables will be created automatically

Tables created:
- ownertb   → stores data owners
- regtb     → stores users
- filetb    → stores uploaded file details
- userfiletb → stores file access requests
- ## How to Run the Project

Step 1 - Start MySQL server (via XAMPP or WAMP)

Step 2 - Open terminal in the project folder and run:
         python app.py

Step 3 - Open browser and go to:
         http://localhost:5000
         ## How It Works

SERVER ADMIN:
- Logs in with username: server  password: server
- Approves Owner and User registrations
- Sends QR code to their email after approval

OWNER (uploads files):
1. Register and wait for server approval
2. Receive QR code on email
3. Login using username + password + scan QR code via webcam
4. Upload medical file → file gets ECIES encrypted
5. Blockchain hash is generated and stored
6. Approve user requests by hiding the key inside an image

USER (downloads files):
1. Register and wait for server approval
2. Receive QR code on email
3. Login using username + password + scan QR code via webcam
4. Search files and send access request to owner
5. After owner approves, receive 3 keys via email
6. Enter all 3 keys to decrypt and download the file
7. ## Project Folder Structure

project/
├── app.py                     ← Main Python Flask code
├── Project_code_mysql_.sql    ← Database file
├── static/
│   ├── upload/                ← Original files uploaded by owner
│   ├── Encrypt/               ← Encrypted files stored here
│   ├── Decrypt/               ← Decrypted files saved here
│   ├── Encode/                ← Steganography images stored here
│   ├── Uupload/               ← Images uploaded by user for download
│   ├── Decode/                ← Decoded images saved here
│   └── Qrcode/                ← QR code images stored here
└── templates/                 ← All HTML pages
