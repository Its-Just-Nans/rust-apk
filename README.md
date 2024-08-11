# eframe template

[![dependency status](https://deps.rs/repo/github/emilk/eframe_template/status.svg)](https://deps.rs/repo/github/emilk/eframe_template)
[![Build Status](https://github.com/emilk/eframe_template/workflows/CI/badge.svg)](https://github.com/emilk/eframe_template/actions?workflow=CI)

This is a template repo for [eframe](https://github.com/emilk/egui/tree/master/crates/eframe), a framework for writing apps using [egui](https://github.com/emilk/egui/).

The goal is for this to be the simplest way to get started writing a GUI app in Rust.

You can compile your app natively or for the web, and share it using Github Pages.

## Getting started

Start by clicking "Use this template" at https://github.com/emilk/eframe_template/ or follow [these instructions](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).

Change the name of the crate: Choose a good name for your project, and change the name to it in:

- `Cargo.toml`
  - Change the `package.name` from `eframe_template` to `your_crate`.
  - Change the `package.authors`
- `main.rs`
  - Change `eframe_template::TemplateApp` to `your_crate::TemplateApp`
- `index.html`
  - Change the `<title>eframe template</title>` to `<title>your_crate</title>`. optional.
- `assets/sw.js`
  - Change the `'./eframe_template.js'` to `./your_crate.js` (in `filesToCache` array)
  - Change the `'./eframe_template_bg.wasm'` to `./your_crate_bg.wasm` (in `filesToCache` array)

Alternatively, you can run `fill_template.sh` which will ask for the needed names and email and perform the above patches for you. This is particularly useful if you clone this repository outside GitHub and hence cannot make use of its
templating function.

### Learning about egui

`src/app.rs` contains a simple example app. This is just to give some inspiration - most of it can be removed if you like.

The official egui docs are at <https://docs.rs/egui>. If you prefer watching a video introduction, check out <https://www.youtube.com/watch?v=NtUkr_z7l84>. For inspiration, check out the [the egui web demo](https://emilk.github.io/egui/index.html) and follow the links in it to its source code.

### Testing locally

Make sure you are using the latest version of stable rust by running `rustup update`.

`cargo run --release`

On Linux you need to first run:

`sudo apt-get install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libssl-dev`

```bash
cargo install cargo-ndk
rustup target add \
    aarch64-linux-android \
    armv7-linux-androideabi \
    x86_64-linux-android \
    i686-linux-android
ANDROID_SDK_ROOT=$HOME/.android/sdk
clear && rm -rf java/app/build && export ANDROID_NDK_HOME=$HOME/.android/sdk/ndk/ && export ANDROID_HOME=$HOME/.android/sdk/ && make
```

<https://apilevels.com/>
