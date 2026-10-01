-- schema.sql
-- Reference schema for the "render-demo-app" database.
-- The app also creates this table automatically on startup, but you can
-- run this file manually against your Render Postgres instance if you'd
-- like to demonstrate the schema explicitly during the course (e.g. via
-- psql or Render's "Connect" > "PSQL Command" shell).

CREATE TABLE IF NOT EXISTS todos (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Optional: a couple of sample rows for demo purposes.
-- INSERT INTO todos (title, completed) VALUES
--   ('Create a Render account', TRUE),
--   ('Deploy the web service', FALSE),
--   ('Connect the database', FALSE);
