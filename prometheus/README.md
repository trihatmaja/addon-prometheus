# Home Assistant Add-on: Prometheus

Prometheus server for Home Assistant.

## About

You can use this add-on to check whether your configuration files are valid against the
new version of Home Assistant before you actually update your Home Assistant
installation. This add-on will help you avoid errors due to breaking changes,
resulting in a smooth update.

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Find the "Prometheus" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

1. Start the add-on.
2. Have some patience and wait a couple of minutes.
3. Check the add-on log output to see the result.

If the log ends with `no error found! :)`,
it means the check against your configuration passes on the specified
Home Assistant version.

## Configuration

Add-on configuration:

```yaml
"log_level": "info",
"scrape_interval": 15,
"token": "",
"latitude": "",
"longitude": "",
"remote_write": ""
```

### Option: `log_level`

The log level of the Prometheus addons

Setting this option to `info` will result in print all the log.

### Option: `scrape_interval` (seconds)

The interval for prometheus server to scrap the metrics in seconds. The default value is 15 seconds


### Option: `token`

The long lived token use to access Home-Assistant api.

### Option: `latitude`

The latitude of current Home-Assistant.

### Option: `longitude`

The longitude of current Home-Assistant.

### Option: `remote_write`

The url for the remote prometheus db.


## Known issues and limitations

- Currently, this add-on only supports checking against Home Assistant >= 0.94
  or less 0.91.

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Discord Chat Server][discord].
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

In case you've found a bug, please [open an issue on our GitHub][issue].

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[discord]: https://discord.gg/c5DvZ4e
[forum]: https://community.home-assistant.io
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/home-assistant/hassio-addons/issues
[reddit]: https://reddit.com/r/homeassistant
[repository]: https://github.com/hassio-addons/repository