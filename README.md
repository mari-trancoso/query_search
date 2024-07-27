# Real-time Search and Analytics

## Description

This project is a Rails application that implements real-time search and collects analytics on what users are searching for. The application has two main functionalities:

1. **Real-time Search**: Allows users to search for articles and displays results instantly as they type. The search is processed in real-time with a debounce mechanism to avoid recording incomplete queries.

2. **Search Analytics**: Collects and displays analytics on what users are searching for, including trends and query frequencies, and stores these queries by user IP.

## Features

- **Real-time Search**: Uses a search box that updates results instantly while the user types, leveraging debounce to prevent logging incomplete queries.
- **Query Storage**: Records complete queries in the database, ignoring incomplete or fragmented queries.
- **Analytics and Trends**: Displays the most frequent queries and queries by IP in the analytics dashboard.

## Technologies Used

- **Ruby on Rails**: Main framework for developing the application.
- **StimulusJS**: For real-time behavior of the search box.
- **PostgreSQL**: Database for storing queries.
- **Heroku**: Hosting and deployment platform.
