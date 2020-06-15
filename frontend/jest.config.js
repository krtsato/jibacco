const {jsWithTs: tsjPreset} = require("ts-jest/presets")

module.exports = {
  // The path to directories that Jest should use to search for files in
  rootDir: "./src/",

  // A map from regular expressions to module names that allow to stub out resources with a single module
  moduleNameMapper: {
    "^@lib/(.*)$": "<rootDir>/lib/$1",
    "^@comp/(.*)$": "<rootDir>/components/$1",
    "^@cont/(.*)$": "<rootDir>/containers/$1",
    "^@redx/(.*)$": "<rootDir>/reducks/$1",
    "^@serv/(.*)$": "<rootDir>/services/$1",
  },

  // A map from regular expressions to paths to transformers
  transform: {
    ...tsjPreset.transform,
    "^.+\\.stories\\.[tj]sx?$": "@storybook/addon-storyshots/injectFileName",
    "^.+\\.mdx$": "@storybook/addon-docs/jest-transform-mdx",
  },

  // An array of regexp pattern strings that are matched against all source file paths, matched files will skip transformation
  transformIgnorePatterns: ["/node_modules/", "/cmd/", "/docker/", "/env/", "/public/"],

  // Avoid test
  testPathIgnorePatterns: ["/node_modules/", "/cmd/", "/docker/", "/env/", "/public/"],

  // ts-jest options
  globals: {
    "ts-jest": {
      tsConfig: "tsconfig.json",
    },
  },
}