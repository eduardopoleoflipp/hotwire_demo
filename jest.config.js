module.exports = {
  "testMatch": null,
  "testRegex": "(/__tests__/.*|(\\.|/))\\.test.js(x?)?$",
  "moduleFileExtensions": [
    "js",
    "jsx",
    "json"
  ],
  "testEnvironment": "jsdom",
  "testURL": "http://localhost",
  "collectCoverage": true,
  "coverageDirectory": "reports/coverage",
  "globals": {
  },
  "reporters": [
    "default",
    "jest-junit"
  ],
  "modulePaths": [
    "app/javascript",
    "node_modules"
  ],
  "moduleNameMapper": {
    "\\.(jpg|jpeg|png|gif|eot|otf|webp|svg|ttf|woff|woff2|mp4|webm|wav|mp3|m4a|aac|oga)$": "<rootDir>/__mocks__/fileMock.js"
  },
  "coveragePathIgnorePatterns": ["/node_modules/"]
};
