Feature: Verify Search feature

Scenario Outline: verify that user can see narrow results in left side after searching the items

Given I am on home page
When I search for "<Keyword>" in search text field                    
	And I click "SEARCH" button 
Then I should be on the "search results" page 
	And number of items found should be greater than zero
	And I should see "<Keyword>" on the header
       	And I should see "NARROW RESULTS" on Left Pane 
	And verify for few products if the "<Keyword>" exist in product description below product Image
	

Examples:
|Keyword|
|Jeans	|
|CARDIGAN|
|SWEET PEA|
|HARDTAIL|
|SHIRTDRESS|
|JACKETS|
|SKIRT|
|MAXI DRESS|
|BLENDER|
|COFFEEMAKER|
|ESPRESSO MAKER|
|FOOD PROCESSOR|
|GRILL|
|JUICER|
|MIXER|
|TOASTER|
|WAFFLE MAKER|
|fondue|
|standmixer|
|artisan stand mixer|
|kitchenaid|
|cuisinart|
|delonghi|
|pants|
|strapless dress|
|casual dress|
|prom dress|
|skinny jeans|
|skinny pants|
|JOHNNY WAS|
|VEST|
|LUCKY BRAND|
|THEORY PANTS|
|SUIT|
|JOES JEANS|
|LEATHER JACKETS|
|TOPS|
|JUICY VELOUR|
|WHITE JEAN|
|MICHAEL STARS|
|HIGH WAIST |
|CITIZENS|
|PENCIL SKIRT|
|SWEATERS|
|CAMI|
|C&C|
|3/4 SLEEVE|
|BOOTCUT JEANS|
|SILK|
|DENIM SKIRT|
|JOES|
|BLOUSE|
|HUDSON|
|L.A.M.B.|
|MAXI|
|MINI DRESS|
|TRUE RELIGIONS|
|JULIE HAUS|
|AQUA DRESSES|
|SPLENDID|
|TUNIC|
|BOOTCUT|
|FLARE|
|CROPPED JEAN|
|HOODIE|
|MATERNITY|
|ONE SHOULDER|
|7 JEANS|
|FLORAL DRESS|
|LACE DRESS|
|WIDE LEG JEANS|
|COWL |
|RICH AND SKINNY|
|MATTE JERSEY|
|BABYDOLL|
|SWEATER COAT|
|WRAP|
|TOP|
|TANK|
