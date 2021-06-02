const report = require('multiple-cucumber-html-reporter');

const customData = {
  title: 'Run info',
  data: [
    {
      label: 'Project',
      value: 'Web automation'
    },
    {
      label: 'Generated on:',
      value: new Date().toUTCString()
    },
    {
      label: 'Reporter:',
      value: '<a href="https://www.npmjs.com/package/multiple-cucumber-html-reporter" ' +
        'target="_blank">multiple-cucumber-html-reporter</a>'
    },
  ]
};

report.generate({
  jsonDir: './report/cucumber/',
  reportPath: './report/cucumber/html',
  displayDuration: true,
  removeFolders: true,

  pageTitle: 'Web Automation Framework',
  reportName: 'Web Automation Framework',
  openReportInBrowser: true,
  customData: addCIMetadata(customData),
});

function addCIMetadata(customData) {
  customData.data = customData.data
    .concat(...fromGitlabActions())

  return customData;
}


function* fromGitlabActions() {
  if (process.env.CI_PROJECT_NAME) {
    yield { label: 'CI', value: process.env.CI_PROJECT_NAME };
  }

  if (process.env.CI_COMMIT_BRANCH) {
    yield { label: 'Branch', value: process.env.CI_COMMIT_BRANCH };
  }

  if (process.env.CI_COMMIT_BRANCH) {
    yield { label: 'Commit', value: process.env.CI_COMMIT_BRANCH }
  }
}

