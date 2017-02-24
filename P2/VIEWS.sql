CREATE VIEW ForeignBills (modelname, categoryname, size, color, USCity, address)
  AS SELECT U.modelname, C.catname, D.size, D.color, B.city, B.streetaddress
  FROM UNITSTOCKING U, CLOTHINGCATEGORY C, CLOTHINGMODEL M, BILLINGADDRESS B, ORDER O, CARTDETAILS D
  WHERE C.cattype = 'LEGWEAR' and C.catid = M.catid and M.modelname = D.modelname and D.modelname = U.modelname
    and D.size = U.size and D.color = U.color
        and D.cartid = O.cartid and O.billingid = B.ba_id and B.country = 'United States' and U.location = 'PARIS'
		
		
CREATE VIEW YellowBuyers (firstname, lastname, modelname, dateofcartcreation)
  AS SELECT C.firstname, C.lastname, D.modelname, S.datecreated
  FROM CUSTOMER C, SHOPPINGCART S, CARTDETAILS D, ORDER O
  WHERE C.email = S.customeremail and S.CARTID = D.CARTID
        and D.CARTID = O.CARTID and O.ordertype = 'PURCHASE'
        and D.color = 'YELLOW'