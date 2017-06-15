# SilverWare Admin Module

Allows an admin style for [SilverStripe Admin v4][silverstripe-admin] to be defined via configuration, and fixes the
broken page icons currently present in SS4 alpha.

## Contents

- [Background](#background)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Issues](#issues)
- [Contribution](#contribution)
- [Maintainers](#maintainers)
- [License](#license)

## Background

Spiritual successor to [SilverStripe Moderno Admin][moderno-admin], for SS4.

## Requirements

- [SilverStripe Admin v4][silverstripe-admin]

## Installation

Installation is via [Composer][composer]:

```
$ composer require silverware/admin
```

## Configuration

As with all SilverStripe modules, configuration is via YAML. Extensions to `LeftAndMain` are applied
via `config.yml`.

### Page Icon Fix

The module fixes the broken page icons currently present in SS4 alpha, and
uses the `page_icon_selectors` array defined in `config.yml` to build its custom CSS.
By default, these selectors are:

- `.page-icon.class-%s`
- `li.class-%s > a .jstree-pageicon`

Elements matching the configured selectors will have their CSS class backslashes
replaced with underscores, resulting in valid CSS and allowing the page icons to appear again
in the site tree.

### Admin Style

You can customise the admin appearance via YAML by defining an `admin_style`
array in your configuration. This needs to be applied to `LeftAndMain`. For example:

```yaml
SilverStripe\Admin\LeftAndMain:
  admin_style:
    ColorBackgroundLogo: '#005b94'
    ColorForegroundLogo: 'rgba(255, 255, 255, 0.8)'
    ColorLinkLogo: '#fff'
    ColorLinkLogoIcon: 'rgba(255, 255, 255, 0.8)'
    ColorBorderBottomLogo: '#106ba4'
    ColorBackgroundMenu: '#20282c'
    ColorBackgroundMenuItem: '#20282c'
    ColorForegroundMenuItem: '#bfc0c0'
    ColorBackgroundHoverMenuItem: 'rgba(255, 255, 255, 0.1)'
    ColorForegroundHoverMenuItem: '#fff'
    ColorBackgroundCurrentMenuItem: '#139fda'
    ColorForegroundCurrentMenuItem: '#fff'
    ColorBorderRightMenuHide: false
    ColorBorderRightMenu: '#20282c'
    ColorMenuItemIcon: '#bfc0c0'
    ColorMenuItemAfterText: '#fff'
    ColorHoverMenuItemIcon: '#fff'
    ColorCurrentMenuItemIcon: '#fff'
    ColorBackgroundToggle: '#20282c'
    ColorBorderTopToggle: '#20282c'
    ColorToggleStatus: '#fff'
    ColorToggleCollapse: '#fff'
```

Each variable should be self-explanatory, with the exception of `ColorBorderRightMenuHide`. If set to `true`,
the thin line on the right-hand side of the admin menu will be hidden, and `ColorBorderRightMenu`
will be ignored.

### Disabling Admin Style

If you need to disable the admin style, so that the standard SS4 admin style is used, simply
set `admin_style_disabled` to `true` for `LeftAndMain`:

```yaml
SilverStripe\Admin\LeftAndMain:
  admin_style_disabled: true
```

## Issues

Please use the [GitHub issue tracker][issues] for bug reports and feature requests.

## Contribution

Your contributions are gladly welcomed to help make this project better.
Please see [contributing](CONTRIBUTING.md) for more information.

## Maintainers

[![Colin Tucker](https://avatars3.githubusercontent.com/u/1853705?s=144)](https://github.com/colintucker) | [![Praxis Interactive](https://avatars2.githubusercontent.com/u/1782612?s=144)](http://www.praxis.net.au)
---|---
[Colin Tucker](https://github.com/colintucker) | [Praxis Interactive](http://www.praxis.net.au)

## License

[BSD-3-Clause](LICENSE.md) &copy; Praxis Interactive

[composer]: https://getcomposer.org
[silverstripe-admin]: https://github.com/silverstripe/silverstripe-admin
[issues]: https://github.com/praxisnetau/silverware-admin/issues
[moderno-admin]: https://github.com/praxisnetau/silverstripe-moderno-admin
