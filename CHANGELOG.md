# Changelog

All notable changes to PiggyBack are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

---

## [1.0.3] - 2026-03-04

### Fixed
- Ship default category mappings in production migration — without these, budget, activity, home dashboard, and AI categorization could not display or organize transactions for new deployments

---

## [1.0.1] - 2026-03-02

### Fixed
- Fixed incorrect `UP_API_ENCRYPTION_KEY` length in cloud deployment guide — docs incorrectly stated 32 characters instead of the required 64-character hex string (32 bytes), causing a 500 error on first visit

---

## [1.0.0] - 2026-02-26

### Added
- Open source release of PiggyBack
- Budget engine with pure-function architecture
- AI financial assistant (Piggy Chat) with 35 tools and multi-provider support
- UP Bank integration with real-time webhook sync
- Investment tracking with Yahoo Finance and CoinGecko price APIs
- FIRE calculator with Australian two-bucket strategy
- Zero-based budgeting with 5 methodology presets
- Income tracking with pattern detection
- Recurring expense management with automatic transaction matching
- Budget sharing for couples
- Notification system with daily reminders
- Spending analysis and anomaly detection
- Net worth snapshots
- Demo mode with seeded data
- Supabase Auth with SSR cookie-based sessions
- Row Level Security on all tables
- Landing page and documentation
