# Inventory Tracker

This is a rails-based application that tracks warehouses and their items.

## Local Setup

1. Clone repo
2. Run `bundle install`
3. `bundle exec rspec` to run test suite

## Explaining the App

<details close="close">
  <summary>Landing Page</summary>

- 'Warehouses' links to a warehouses index page
- 'Inventory Items' links to an items index page 
  
![Screen Shot 2022-05-22 at 1 12 35 PM](https://user-images.githubusercontent.com/87088092/169711973-80b7349e-2b13-4ee7-b34a-6fb77392ac82.png)

</details>

<details close="close">
  <summary>Warehouses</summary>
  
  <div align="center">Warehouses Index page lists all existing warehouses
  
  ![Screen Shot 2022-05-22 at 1 24 11 PM](https://user-images.githubusercontent.com/87088092/169712652-86371a92-8000-48e4-8e41-dfad85937589.png)
  
  Each warehouse links to it's Show Page where I see only items from this warehouse
  
  ![Screen Shot 2022-05-22 at 1 45 16 PM](https://user-images.githubusercontent.com/87088092/169713213-d9947fd9-a6e1-4f25-91de-38b45c07e66f.png)

  And there is a link to create a new warehouse; this link takes you to a form to submit. (sad path testing to come)
    
  ![Screen Shot 2022-05-22 at 1 49 08 PM](https://user-images.githubusercontent.com/87088092/169713286-da303182-ed4a-4039-a9d4-3e71153660c3.png)
  
  </div>
</details>

<details close="close">
  <summary>Inventory Items</summary>
  
  <div align="center">Inventory Items Index page lists all existing items
    
    ![Screen Shot 2022-05-22 at 1 57 00 PM](https://user-images.githubusercontent.com/87088092/169713574-ec3c04da-d457-4bbc-8d17-bb61fc3ce11a.png)

    
    All items link to their Show Page, where I can create, read, update, or delete that item
  
    ![Screen Shot 2022-05-22 at 2 00 12 PM](https://user-images.githubusercontent.com/87088092/169713753-9a5ed598-bfb1-4238-b935-f1c4690d2f70.png)

  </div>
</details>
    
    
