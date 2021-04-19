# orama-sample-app

This repository demonstrates a simple iOS app consisting of 3 screens:
- Home screen:
  - Lists an [API](https://s3.amazonaws.com/orama-media/json/fund_detail_full.json) first 6 funds on a Collection View
  - When a cell is clicked, the selected fund is shown in Detail Screen
  - A History button is available at the bottom of screen. When clicked, it leads to History screen
- Detail screen:
  - Shows the selected fund information
  - A Buy button is available at the bottom of screen. When clicked, a password popup is shown. If the user wishes to continue, he must fill the password and click "Comprar" to save the fund in his history

- History screen:
- Lists the bought funds, allowing selection (leading to Detail screen)
