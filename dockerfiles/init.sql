SELECT 'CREATE DATABASE ai'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'ai');

SELECT 'CREATE DATABASE orthanc'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'orthanc');