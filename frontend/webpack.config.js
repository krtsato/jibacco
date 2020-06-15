const path = require("path")
const env = process.env.NODE_ENV || "development"

module.exports = {
  mode: env,
  entry: "./src/index.tsx",
  output: {
    filename: "bundle.js",
    path: path.resolve(__dirname, "public"),
  },

  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: ["ts-loader"],
        exclude: /node_modules/,
      },
      {
        test: /\.js$/,
        use: ["source-map-loader"],
        enforce: "pre",
        exclude: /node_modules/,
      },
    ],
  },

  resolve: {
    // import sentences
    alias: {
      "@lib": path.resolve(__dirname, "src/lib"),
      "@comp": path.resolve(__dirname, "src/components"),
      "@cont": path.resolve(__dirname, "src/containers"),
      "@redx": path.resolve(__dirname, "src/reducks"),
      "@serv": path.resolve(__dirname, "src/services"),
    },
    extensions: [".tsx", ".ts", ".js", ".json"],
  },

  // development
  devServer: {
    compress: true,
    contentBase: path.resolve(__dirname, "public"),
    historyApiFallback: true,
    host: "0.0.0.0",
    port: 8000,
    watchContentBase: true,
  },
  devtool: "eval-source-map",
}
