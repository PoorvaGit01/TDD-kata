# String Calculator TDD Kata

This project implements the String Calculator TDD Kata in Ruby on Rails. The application parses strings of numbers and performs calculations while handling various input cases. The project follows a Test-Driven Development (TDD) approach with tests written using RSpec.

## Table of Contents

## Ruby Version

- **Ruby Version**: 3.1.2
- **Rails Version**: 7.0.8.6

Make sure to have the above versions installed on your system.

## System Dependencies

- **PostgreSQL**: Ensure PostgreSQL is installed and running on your system. This project uses PostgreSQL as the database. [It will without database as well, we just made a service. still I have integrated the database]

## Configuration

To configure the database connection, update `config/database.yml` with your PostgreSQL credentials.

Example configuration:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  username: postgres
  password: postgres
  host: localhost
  port: 5432
  pool: 5

development:
  <<: *default
  database: tdd_assessment_development

test:
  <<: *default
  database: tdd_assessment_test
