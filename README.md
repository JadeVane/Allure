English | [简体中文](./README_zh.md)

## Project Status

I used Trilium for a while, then developed a set of themes to my liking, and then open sourced it to GitHub on a whim, hoping that more people could use it.

Now I no longer use Trilium, but considering that many people are still using this theme, I will continue to maintain this project. If I have new ideas for this theme one day in the future, I may upgrade it. theme, but in any case, in order to make this theme available on the latest version of Trilium, I will ensure basic adaptation.

Therefore, when Trilium updates cause Allure to become unusable, you can open an issue to notify me, and I will complete the adaptation work when I am free.

> tested on: `TriliumNext 0.99.5`

## About

**Allure** is a theme for trilium with a more beautiful interface and higher focus which means that just focus on what you need.

trilium is an excellent note taking app with powerful features, however, the excellent features don't lead to a pleasant experience, mainly because the interface with all the content side by side, buttons containing long text, and monotonous without layers is really not good enough, so after a period of time, I create allure theme after using it for a while, hoping to provide a more immersive visual experience.

## Features

1. more minimalist interface
1. more comfortable color scheme
1. clearer layout
<!-- 1. both mobile and web support -->


## Screenshot

Allure theme has made some interface element changes to provide a better-looking interface

![Screenshot](./resources/screenshot.png)

<!-- ## What's different between stable version and radical version

The radical version has made some radical changes than the stable version to simplify the interface as much as possible, so some changes may not be suitable for everyone.

The additional changes in the current radical version:

1. Remove similar notes
1. Move attrs to the bottom of the note content
1. Move the note type button and menu button to the right side of the note content -->

<!-- ## :warning: ATTENTION :warning:

**Do NOT keep more than one version of css style to trilium, or the styles of several css style will affect each other and cause unexpected errors** -->

## Steps by Steps

### Easy installation (Recommend)

1. Download `Allure-clear.zip` or `Allure-night.zip` in the release page, then right-click on any note and select "Import to note"
2. Select the file you just downloaded and **uncheck Safe Import**, then click "Import"

> How to upgrade?
> Just delete the theme file and re-import the latest version.

### Manual installation

1. create a new note in trilium (of type **CSS**) named `Allure-clear` / `Allure-night` *(the name of note depends on which theme you want to apply)*
1. pick a theme below, copy the content of it and paste it into the new note created above:
    <!-- - [Allure-clear.css](https://github.com/JadeVane/Allure/releases/latest/download/Allure-clear.css) -->
    - [Allure-clear.css](./Allure-clear.css)
    <!-- - [Allure-night.css](https://github.com/JadeVane/Allure/releases/latest/download/Allure-night.css) -->
    - [Allure-night.css](./Allure-night.css)
1. add `#appTheme=[theme_name]` attribute to the note
1. download all the fonts in [fonts](./fonts/), then right-click on the note and select `Import to note` to import all fonts
1. add attribute `#customResourceProvider="font-name.suffix"` to each fonts

> How to upgrade?
> Copy the latest css file content and replace Allure-icon.woff2 in it. If other fonts are updated, other font files also need to be replaced.

## Enable Allure Theme

1. go to Menu > Options, and select `Allure-clear` / `Allure-night` as your new theme
1. Press `F5` or `Ctrl` + `R` to reload the page

<!-- ![steps](./resources/steps.png) -->

## Known bugs

- [x] copying note properties also causes the note content to scroll
- [x] The edit button is not displayed by default, refreshing the page will restores it *(this is a bug in Trilium when setting readonly for a note, the temporary solution is to force the edit button to be displayed) *
- [ ] Link Map does not expand to full screen due to the properties bar moving to the bottom of the page *(This is due to a change in layout, and I have not found a reliable solution yet)*
- [ ] Mobile style does not match yet *(not much demand from users, and I have a lot of things to do, so not enough time to finish it for now)*
- [ ] Notes split button doesn't move up and down as the action bar expands and closes *(This is due to a change in layout, waiting for Trilium to fix)*

Feel free to submit pr to help solve the above issue if you want.

## Donation

If Allure theme has helped you, considering buying me a cup of coffee

<a href="https://paypal.me/realwenjinyu"><img src="./resources/donate_with_paypal.jpg" height="40px"></a>

![donation](./resources/donation.png)

Donation list：
- Chee Rabbits
- Jonathon Fuller
- Artjom Vitsjuk
- Judging Xu

Thank you for your donation which really inspired me!
