Smoke test suite SWAG LABS www.saucedemo.com with Robot Framework

1. Test cases: User can login.

| Number | Discription | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 1 | User standart_user can login to app | Open browser at "https://www.saucedemo.com" -> Insert login "standart_user" -> Insert password "secret_sauce" -> Click login-button | User can login and see products page |
| 4 | User locked_out_user can login to app | Open browser at "https://www.saucedemo.com" -> Insert login "locked_out_user" -> Insert password "secret_sauce" -> Click login-button | User can login and see products page |
| 2 | User problem_user can login to app | Open browser at "https://www.saucedemo.com" -> Insert login "problem_user" -> Insert password "secret_sauce" -> Click login-button | User can login and see products page |
| 3 | User performance_glitch_user can login to app | Open browser at "https://www.saucedemo.com" -> Insert login "performance_glitch_user" -> Insert password "secret_sauce" -> Click login-button | User can login and see products page |

2. Test cases: User can choose product, add it to the cart and delete it from the cart.

| Number | Description | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 1 | User can choose product and add it to the cart | Open browser at "https://www.saucedemo.com" -> Insert login "standart_user" -> Insert password "secret_sauce" -> Click login-button -> Click on "Sauce Labs Backpack" -> Click on "Add to cart"-button -> Click on "Cart"-button | Chosen product must be listed in the cart |
| 2 | User can delete product from the cart | Continuing from previous test case: User click on "Remove"-button -> Click on "Continue shopping"-button | The "Cart"-sign does not show any number of added products |
