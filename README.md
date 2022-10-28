# Smoke test suite www.saucedemo.com with Robot Framework.
## Folders and files:

1. doc - folder:
 
2. resources - folder:
 - common.resource Contains "Begin web test" and "End web test" keywords.
 - saucedemo.resource Contains "Login" and "Logout" keywords.
 - variables.py Contains tests' variables.

3. tests - folder:
 - login_test.robot - User standard_user can login and logout.
 - banned_login_test.robot - Banned user locked_out_user can not login.
 - product_cart.robot - User standard_user can add product to cart and delete product from cart.
 - purchase.robot - User standard_user can successfully make a purchase.

4. reports folder:
 - log.html - tests results.

## Test cases:

1. Approved User can login.

| Number | Discription | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 1.1 | User standart_user can login and log out | Open Browser "Firefox" -> Go to "https://www.saucedemo.com" -> Insert login "standard_user" -> Insert password "secret_sauce" -> Click login-button -> Page should contain "Products" -> Click "Menu"-button -> Click "Logout" -> Page should contain "Login"-button -> Close Browser| User can login to products page and logout|

2. Banned User can not login.

| Number | Discription | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 1.2 | Banned User locked_out_user can not login to app | Open Browser "Firefox" -> Go to "https://www.saucedemo.com" -> Insert login "locked_out_user" -> Insert password "secret_sauce" -> Click login-button -> Page should contain: "Sorry, this user has been locked out" -> Close Browser | Banned User can not login to app

3. User can choose product, add it to the cart and delete it from the cart.

| Number | Description | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 2.1 | User can choose product and add it to the cart | Open browser at "https://www.saucedemo.com" -> Insert login "standard_user" -> Insert password "secret_sauce" -> Click login-button -> Click on "Add to cart" near a backpack" -> Click on "Cart"-image | Chosen product must be listed in the cart and there must be a "remove"-button |
| 2.2 | User can delete product from the cart | Continuing from previous test case: User click on "Remove"-button -> Click on "Continue shopping"-button | The "Cart"-sign does not show any number of added products |

4. User can successfully purchase a product.

| Number | Description | Steps | Expected result |
| :-- | :-- | :-- | :-- |
| 3.1 | User can successfully make a purchase | Open browser at "https://www.saucedemo.com" -> Insert login "standard_user" -> Insert password "secret_sauce" -> Click login-button -> Click on "Add to cart" near a backpack" -> Click on "Cart"-image -> Chosen product must be listed in the cart and there must be a "remove"-button -> Click on "checkout"-button -> Insert First Name -> Insert Last Name -> Insert Postal Code -> Press "Continue"-button -> Page should contain "shipping information" -> Press "Finnish"-button -> Page should contain "Checkout: complete!" -> Click on "burger-menu"-button -> Click on "Logout" -> Page should contain "Login"-button| User standard_user can successfully make a purchase on app |
