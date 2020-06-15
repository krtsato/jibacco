#!/bin/bash

# This script runs at the Dockerfile entry point

# npm install notes
## The command "create-react-app" is not executed to avoid making a black box.

## TypeScript as a transpiler and type definer
## Babel is used as a dependencies

## TypeScript
### typescript ts-loader @types/react @types/react-dom source-map-loader webpack webpack-cli webpack-dev-server (React & Webpack from https://bit.ly/39xoYjc)

## ESLint
### eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks (React rules from https://bit.ly/37E4nrV)
### eslint-plugin-jest (Jest Rules from https://bit.ly/39I6WuW)
### prettier eslint-config-prettier eslint-plugin-prettier (Prettier from https://bit.ly/2rPSz6q)
### @typescript-eslint/parser @typescript-eslint/eslint-plugin (TypeScript Rules from https://bit.ly/2tq4Pey)

## And more packages...

## Install peer dependencies myself
### npm WARN eslint-config-airbnb@18.1.0 requires a peer of eslint@^6.8.0 but none is installed.
### npm WARN eslint-config-airbnb@18.1.0 requires a peer of eslint-plugin-react-hooks@^2.5.0 but none is installed.
### npm WARN @egoist/vue-to-react@1.1.0 requires a peer of vue@^2.6.10 but none is installed.
### npm WARN connected-react-router@6.8.0 requires a peer of immutable@^3.8.1 || ^4.0.0-rc.1 but none is installed.
### npm WARN connected-react-router@6.8.0 requires a peer of seamless-immutable@^7.1.3 but none is installed.

## Skip optional dependency
### npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.11
### wanted {"os":"darwin","arch":"any"} / current: {"os":"linux","arch":"x64"}

npm_install_save() {
  npm i \
    axios \
    @material-ui/core \
    @material-ui/icons \
    @material-ui/lab \
    react \
    redux \
    react-dom \
    react-helmet \
    react-redux \
    react-router \
    react-router-dom \
    connected-react-router
}

npm_install_save_dev() {
  npm i -D \
    axios-mock-adapter \
    @babel/core \
    babel-loader \
    babel-plugin-import \
    eslint@^6.8.0 \
    eslint-config-airbnb \
    eslint-config-prettier \
    eslint-import-resolver-webpack \
    eslint-plugin-import \
    eslint-plugin-jsx-a11y \
    eslint-plugin-jest \
    eslint-plugin-material-ui \
    eslint-plugin-prettier \
    eslint-plugin-react \
    fork-ts-checker-webpack-plugin \
    jest \
    prettier \
    react-is \
    react-docgen-typescript-loader \
    react-test-renderer \
    source-map-loader \
    @storybook/addons \
    @storybook/addon-a11y \
    @storybook/addon-actions \
    @storybook/addon-docs \
    @storybook/addon-knobs \
    @storybook/addon-links \
    @storybook/addon-storyshots \
    @storybook/addon-viewport \
    @storybook/preset-typescript \
    @storybook/react \
    ts-jest \
    ts-loader \
    typescript \
    @typescript-eslint/eslint-plugin \
    @typescript-eslint/parser \
    @types/material-ui \
    @types/jest \
    @types/node \
    @types/react \
    @types/react-dom \
    @types/react-helmet \
    @types/react-router \
    @types/react-router-dom \
    @types/react-redux \
    @types/react-test-renderer \
    webpack \
    webpack-cli \
    webpack-dev-server
}

npm_install_save_peer() {
  npm i -D \
    eslint-plugin-react-hooks@^2.5.0 \
    immutable@^4.0.0-rc.1 \
    seamless-immutable@^7.1.3 \
    vue@^2.6.10
}

npm_install_save
npm_install_save_dev
npm_install_save_peer
npm audit fix
npm dedupe
