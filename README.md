# Render Demo App

A minimal Todo List app demonstrating a web app + relational database, ready to deploy on [Render](https://render.com).

- **Backend:** Node.js + Express
- **Database:** PostgreSQL (relational)
- **Frontend:** Plain HTML/CSS/JS served as static files

## Run locally

```bash
npm install
cp .env.example .env   # then edit .env with a real local/remote Postgres URL
npm start
```

Visit `http://localhost:3000`.

## Deploy to Render

See the full course guide: **Render-Deployment-Guide.md** (provided alongside this app).

Quick version:
1. Push this folder to a GitHub repository.
2. On Render: create a PostgreSQL database.
3. On Render: create a Web Service from your repo, with build command `npm install` and start command `npm start`.
4. Add the database's **Internal Connection String** as the `DATABASE_URL` environment variable on the web service.
5. Deploy — the app creates its own table on first boot.

Or use the included `render.yaml` Blueprint to create both resources in one step.
