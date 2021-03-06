const path = require("path")
const createCompiler = require("@storybook/addon-docs/mdx-compiler-plugin")

module.exports = {
  stories: ["../src/components/**/*.stories.(ts?(x)|js|mdx)"],
  addons: [
    "@storybook/addon-a11y/register",
    "@storybook/addon-actions/register",
    "@storybook/addon-docs/register",
    "@storybook/addon-knobs/register",
    "@storybook/addon-links/register",
    "@storybook/addon-viewport/register",
    "@storybook/preset-typescript",
  ],
  webpackFinal: async (config) => {
    // Storybook addon-docs
    config.module.rules.push({
      test: /\.stories\.[tj]sx?$/,
      enforce: "pre",
      exclude: /node_modules/,
      use: ["@storybook/source-loader"],
    })

    // Storybook addon-docs : jsx in the markdown file
    config.module.rules.push({
      test: /\.stories\.mdx$/,
      exclude: /node_modules/,
      use: [
        {
          loader: require.resolve("babel-loader"),
          options: {plugins: ["@babel/plugin-transform-react-jsx"]},
        },
        {
          loader: require.resolve("@mdx-js/loader"),
          options: {compilers: [createCompiler({})]},
        },
      ],
    })

    // TypeScript
    config.module.rules.push({
      test: /\.tsx?$/,
      use: ["ts-loader", "react-docgen-typescript-loader"],
    })

    config.resolve.alias = {
      "@lib": path.resolve(__dirname, "../src/lib"),
      "@comp": path.resolve(__dirname, "../src/components"),
      "@cont": path.resolve(__dirname, "../src/containers"),
      "@redx": path.resolve(__dirname, "../src/reducks"),
      "@serv": path.resolve(__dirname, "../src/services"),
    }

    config.resolve.extensions.push(".tsx", ".ts")
    config.devServer = {host: "0.0.0.0", port: 6006}
    return config
  },
}