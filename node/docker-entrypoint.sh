#!/bin/bash

if [ -z "$(ls -A $APP_CONTAINER)" ]; then
  npm init nuxt-app $APP_CONTAINER --answers '
  {"name":"'"$PROJECT_NAME"'",
  "language":"'"$LANGUAGE"'",
  "pm":"'"$PM"'",
  "ui":"'"$UI"'",
  "features":"'"$FEATURES"'",
  "linter":"'"$LINTER"'",
  "test":"'"$TEST"'",
  "mode":"'"$MODE"'",
  "target":"'"$TARGET"'",
  "devTools":"'"$DEVTOOLS"'"}
  '
fi

cd $APP_CONTAINER

npm run dev