# Repo Viewer

A Flutter app for browsing GitHub repositories. Sign in with your GitHub
account to view your starred repositories, search for repos across GitHub, and
inspect repository details — all with offline caching and infinite scrolling.

## Features

- **GitHub OAuth2 sign-in** — authenticate securely against the GitHub API.
- **Starred repos** — browse the repositories you've starred, with paginated
  infinite scrolling.
- **Search** — full-text repository search with a persistent search history.
- **Repo detail** — view a repository's README and metadata.
- **Offline-first caching** — results are cached locally with Sembast and served
  as "fresh" or "cached" data, so the app works without a connection.
- **Adaptive UI** — platform-aware widgets, shimmer loading placeholders, and
  toast notifications.

## Architecture

The codebase follows a layered (Domain-Driven Design) structure. Each feature is
split into the same four layers:

| Layer | Responsibility |
| --- | --- |
| `domain` | Entities, value objects, and failures (pure Dart). |
| `application` | State notifiers / use-case logic. |
| `infrastructure` | API clients, DTOs, repositories, local persistence. |
| `presentation` | Widgets, pages, and routing. |

Top-level features under `lib/`:

- `auth/` — OAuth2 authentication and credential storage.
- `github/` — core GitHub domain plus the `repos` (starred & searched) and
  `detail` features.
- `search/` — search bar and search-history handling.
- `core/` — shared infrastructure (Dio, Sembast, routing, toasts).
- `splash/` — initial loading screen.

## Tech stack

- **State management:** `hooks_riverpod` + `flutter_hooks`
- **Routing:** `auto_route`
- **Networking:** `dio` + `oauth2`
- **Local storage:** `sembast`, `flutter_secure_storage`
- **Code generation:** `freezed`, `json_serializable`, `auto_route_generator`
- **Functional error handling:** `dartz`

## Getting started

### Prerequisites

- Flutter SDK (Dart `^3.10.4`)
- A registered [GitHub OAuth App](https://github.com/settings/developers) to
  obtain a client ID and client secret.

### Setup

1. Install dependencies:

   ```bash
   flutter pub get
   ```

2. Create a `.env` file in the project root with your configuration:

   ```env
   BASE_URL=https://api.github.com
   TOKEN=your_github_token
   ```

3. Generate the code for Freezed, JSON serialization, and routing:

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Project commands

```bash
# Regenerate code after changing models or routes
dart run build_runner build --delete-conflicting-outputs

# Watch for changes and regenerate continuously
dart run build_runner watch --delete-conflicting-outputs --force-jit

# Run static analysis
flutter analyze

# Run tests
flutter test
```
