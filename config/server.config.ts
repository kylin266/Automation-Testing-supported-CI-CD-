
const commonConfig = {
  protocol: process.env.WEBDRIVER_PROTOCOL,
  hostname: process.env.WEBDRIVER_HOST,
  port: parseInt(process.env.WEBDRIVER_PORT, 10) || 4444,
}

function getDriverSpecificConfigs(type: string) {
  if (type === 'browserless') {
    return {
      path: '/webdriver'
    }
  }

  return {}
}

export const serverConfig = {
  ...commonConfig,
  ...getDriverSpecificConfigs(process.env.WEBDRIVER_TYPE)
}
