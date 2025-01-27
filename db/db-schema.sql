CREATE TABLE IF NOT EXISTS clerk_users (
  id VARCHAR(128) PRIMARY KEY NOT NULL,
  linked_identity TEXT NOT NULL
);

CREATE TYPE user_state AS ENUM('active', 'inactive');

CREATE TABLE IF NOT EXISTS users (
  id VARCHAR(128) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  status user_state,
  profile_image_url TEXT
);

CREATE TABLE IF NOT EXISTS files (
  id CHAR(26) PRIMARY KEY NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP,
  parent_id TEXT,
  file_name TEXT,
  mime_type TEXT NOT NULL,
  data BYTEA NOT NULL
);
