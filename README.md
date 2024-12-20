# Decentralized Certificate Verification System

## Overview

The Decentralized Certificate Verification System is a smart contract-based application built using Clarinet for managing and verifying digital certificates in a decentralized manner.

## Features

- **Certificate Issuance**: Allows the creation and issuance of unique certificates.
- **Certificate Revocation**: Enables revoking previously issued certificates.
- **Verification**: Provides methods to check the validity and status of certificates.

## Project Structure

- **contracts/**: Contains the Clarinet contracts for certificate issuance and revocation.
  - `certificate-issuer.clar`
  - `certificate-revoker.clar`
- **.cache**: Directory for caching contract data.
- **repl.analysis**: Analysis settings for contract safety checks.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/oluwadareBoluwatifeDecentralized-Certificate-Verification-System
   cd DecentralizedCertificateVerificationSystem
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Set up Clarinet:
   ```bash
   clarinet dev
   ```

## Usage

- **Certificate Issuance**: 
  - Use `certificate-issuer.clar` to issue new certificates.
- **Certificate Revocation**: 
  - Use `certificate-revoker.clar` to revoke certificates.

## Testing

To run the tests, use:
```bash
npm test
```

## License

[MIT](LICENSE)