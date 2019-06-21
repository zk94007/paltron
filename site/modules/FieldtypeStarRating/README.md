# FieldtypeStarRating

Module for ProcessWire - Field that stores an integer by using a star rating interface.

### To install

Copy to /site/modules/ and go to Admin > Modules > Check for new modules.

Tested on ProcessWire 2.6.2 dev

# Usage back-end

Create a new field with the fieldtype Star Rating. Set the amount of stars you want to show, by default it is set to 5 stars.

![Field settings](https://processwire.com/talk/uploads/monthly_06_2015/post-694-0-39342600-1433446071.png)

Assign the field to any template. Now you can set the field value by selecting any of the 5 stars. The number saved to the database equals the number of stars that are highlighted.

![Star Rating](https://processwire.com/talk/uploads/monthly_06_2015/post-694-0-83970400-1433446073.png)

Hovering the stars will show a reset icon, which will reset the value to 0 by clicking on it.

![Resetting to 0](https://processwire.com/talk/uploads/monthly_06_2015/post-694-0-70713100-1433446072.png)
