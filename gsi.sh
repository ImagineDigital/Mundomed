#!/bin/bash
# Generate Cordova icon and splash screens
# Thanks for http://tlvince.com

devices=android,ios
eval mkdir -p "./res/{icon,screen}/{$devices}"
eval mkdir -p "./res/appstore"
eval mkdir -p "./res/playstore"

# Show the user some progress by outputing all commands being run.
set -x

splash_base="./gsi-base-splash.png"
icon_base="./gsi-base-icon.png"
store_base="./gsi-base-store.png"
background="#FFFFFF"

# Splash iOS and Android
convert="convert $splash_base -background $background -gravity center"

  $convert -resize 272x272 -extent 320x480 "./res/screen/ios/splash-ios-320x480.png"
  $convert -resize 548x548 -extent 640x960 "./res/screen/ios/splash-ios-640x960.png"
  $convert -resize 548x548 -extent 640x1136 "./res/screen/ios/splash-ios-640x1136.png"
$convert -resize 666x666 -extent 750x1334 "./res/screen/ios/splash-ios-750x1334.png"
$convert -resize 1334x1334 -extent 1242x2208 "./res/screen/ios/splash-ios-1242x2208.png"
$convert -resize 1334x1334 -extent 2208x1242 "./res/screen/ios/splash-ios-2208x1242.png"
$convert -resize 666x666 -extent 768x1024 "./res/screen/ios/splash-ios-768x1024.png"
$convert -resize 666x666 -extent 1024x768 "./res/screen/ios/splash-ios-1024x768.png"
$convert -resize 1334x1334 -extent 1536x2048 "./res/screen/ios/splash-ios-1536x2048.png"
$convert -resize 1334x1334 -extent 2048x1536 "./res/screen/ios/splash-ios-2048x1536.png"



$convert -resize 781x781 -extent 1280x720 "./res/screen/android/drawable-land-xhdpi.png"
$convert -resize 611x611 -extent 720x1280 "./res/screen/android/drawable-port-xhdpi.png"
$convert -resize 272x272 -extent 320x480 "./res/screen/android/drawable-port-mdpi.png"
$convert -resize 342x342 -extent 480x320 "./res/screen/android/drawable-land-mdpi.png"
$convert -resize 237x237 -extent 320x200 "./res/screen/android/drawable-land-ldpi.png"
$convert -resize 172x172 -extent 200x320 "./res/screen/android/drawable-port-ldpi.png"
$convert -resize 402x402 -extent 480x800 "./res/screen/android/drawable-port-hdpi.png"
$convert -resize 563x563 -extent 800x480 "./res/screen/android/drawable-land-hdpi.png"
$convert -resize 800x800 -extent 960x1600 "./res/screen/android/drawable-port-xxhdpi.png"
$convert -resize 800x800 -extent 1600x960 "./res/screen/android/drawable-land-xxhdpi.png"
$convert -resize 1334x1334 -extent 1536x2048 "./res/screen/android/drawable-port-fr-xhdpi.png"
$convert -resize 1334x1334 -extent 2048x1536 "./res/screen/android/drawable-land-fr-xhdpi.png"


# Icons iOS and Android
icons="convert $icon_base -background transparent"

$icons -resize 128x128 "./res/icon/icon.png"
$icons -resize 36x36 "./res/icon/android/drawable-ldpi.png"
$icons -resize 48x48 "./res/icon/android/drawable-mdpi.png"
$icons -resize 72x72 "./res/icon/android/drawable-hdpi.png"
$icons -resize 96x96 "./res/icon/android/drawable-xhdpi.png"
$icons -resize 144x144 "./res/icon/android/drawable-xxhdpi.png"
$icons -resize 192x192 "./res/icon/android/drawable-fr-xxhdpi.png"


  $icons -resize 29x29 "./res/icon/ios/icon-29x29.png"
  $icons -resize 40x40 "./res/icon/ios/icon-40x40.png"
  $icons -resize 50x50 "./res/icon/ios/icon-50x50.png"
  $icons -resize 58x58 "./res/icon/ios/icon-58x58.png"
  $icons -resize 57x57 "./res/icon/ios/icon-57x57.png"
  $icons -resize 60x60 "./res/icon/ios/icon-60x60.png"
  $icons -resize 72x72 "./res/icon/ios/icon-72x72.png"
  $icons -resize 76x76 "./res/icon/ios/icon-76x76.png"
  $icons -resize 80x80 "./res/icon/ios/icon-80x80.png"
  $icons -resize 100x100 "./res/icon/ios/icon-100x100.png"
  $icons -resize 114x114 "./res/icon/ios/icon-114x114.png"
  $icons -resize 120x120 "./res/icon/ios/icon-120x120.png"
  $icons -resize 144x144 "./res/icon/ios/icon-144x144.png"
  $icons -resize 152x152 "./res/icon/ios/icon-152x152.png"
  $icons -resize 180x180 "./res/icon/ios/icon-180x180.png"

#Imagens para serem utilizadas na App Store
store="convert $store_base -background $background -gravity center"

$store -resize 548x548 -extent 640x960 "./res/appstore/3-5.png"
$store -resize 548x548 -extent 640x1096 "./res/appstore/4.png"
$store -resize 666x666 -extent 750x1334 "./res/appstore/4-7.png"
$store -resize 666x666 -extent 1242x2208 "./res/appstore/5-5.png"
$store -resize 666x666 -extent 768x1024 "./res/appstore/ipad.png"
$icons -resize 1024x1024 "./res/appstore/icon-1024x1024.png"

#Imagens para serem utilizadas na Play Store
store="convert $store_base -background $background -gravity center"

$store -resize 548x548 -extent 640x960 "./res/playstore/telefone.png"
$store -resize 548x548 -extent 640x1096 "./res/playstore/telefone2.png"
$store -resize 666x666 -extent 750x1334 "./res/playstore/tv.png"
$store -resize 666x666 -extent 1242x2208 "./res/playstore/tablet10.png"
$store -resize 666x666 -extent 768x1024 "./res/playstore/tablet7.png"
$store -resize 500x500 -extent 1024x500 "./res/playstore/recursos-graficos.png"
$icons -resize 512x512 "./res/playstore/icon-512x512.png"

# Ref: http://cordova.apache.org/docs/en/3.6.0/config_ref_images.md.html
