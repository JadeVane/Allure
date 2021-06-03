English | [简体中文](./README_zh.md)

## About

**Allure** is a theme for trilium with a more beautiful interface and higher focus which means that just focus on what you need.

trilium is an excellent note taking app with powerful features, however, the excellent features don't lead to a pleasant experience, mainly because the interface with all the content side by side, buttons containing long text, and monotonous without layers is really not good enough, so after a period of time, I create allure theme after using it for a while, hoping to provide a more immersive visual experience.

There are currently three theme styles to choose from: `Allure` (original version), `Allure-clear` (lastest version), Allure-night (the night mode of lastest version). Due to limited time, only `Allure-clear` and `Allure-night` will be maintained, the version of `Allure` will be the last one.

## Features

1. more minimalist interface
1. more diverse color scheme
1. highlighting important content in a prominent style
1. both mobile and web support

## Screenshot

Allure theme has made some interface element changes to provide a better-looking interface

![screenshot](./resources/screenshot.png)

## What's different between stable version and radical version

The radical version has made some radical changes than the stable version to simplify the interface as much as possible, so some changes may not be suitable for everyone.

The additional changes in the current radical version:

1. Remove similar notes
1. Move attrs to the bottom of the note content
1. Move the note type button and menu button to the right side of the note content

## :warning: ATTENTION :warning:

**Do NOT keep more than one version of css style to trilium, or the styles of several css style will affect each other and cause unexpected errors**

## Steps

Install the theme by following these steps:

1. create a new note in trilium (of type **CSS**) named `Allure` / `Allure-clear` / `Allure-night` *(the name of note depends on which theme you want to apply)*
1. pick a theme below, copy the content of it and paste it into the new note created above:
    - [Allure.css](./Allure.css)
    - [Allure-clear.css](./Allure-clear.css)
    - [Allure-night.css](./Allure-night.css)
1. add `#appTheme` attribute to the note
1. download all the fonts in [fonts](./fonts/), then right-click on the note and select `Import to note` to import all fonts
1. add attribute `#customResourceProvider="font-name.ttf"` to each fonts
1. go to Menu > Options, and select `Allure` / `Allure-clear` / `Allure-night` as your new theme
1. Press `F5` or `Ctrl` + `R` to reload the page

![steps](./resources/steps.png)

## Known bugs

- [ ] The search bar cannot be collapsed following the left pane
- [ ] The width of the search bar and tab bar cannot be changed with the page width

## Donation

If Allure theme has helped you, considering buying me a cup of coffee

<a href="https://paypal.me/realwenjinyu"><img src="./resources/donate_with_paypal.jpg" height="40px"></a>

![donation](./resources/donation.png)

Donation list：
- chee

Thank you for your donation which really inspired me!
