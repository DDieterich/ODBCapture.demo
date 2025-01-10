rem
Rem $Header: oc_popul.sql 29-aug-2002.11:45:08 hyeh Exp $  
rem
rem Copyright (c) 2001, 2015, Oracle Corporation.  All rights reserved.  
rem 
rem Permission is hereby granted, free of charge, to any person obtaining
rem a copy of this software and associated documentation files (the
rem "Software"), to deal in the Software without restriction, including
rem without limitation the rights to use, copy, modify, merge, publish,
rem distribute, sublicense, and/or sell copies of the Software, and to
rem permit persons to whom the Software is furnished to do so, subject to
rem the following conditions:
rem 
rem The above copyright notice and this permission notice shall be
rem included in all copies or substantial portions of the Software.
rem 
rem THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
rem EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
rem MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
rem NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
rem LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
rem OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
rem WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
rem
rem Owner  : ahunold
rem
rem NAME
rem   oc_popul.sql - OC (Online Catalog) subschema of OE Common Schema
rem
rem DESCRIPTON
rem   Populates tables
rem
rem MODIFIED   (MM/DD/YY)
rem   hyeh      08/29/02 - hyeh_mv_comschema_to_rdbms
rem   gxlee     09/17/01 - categories hierarchy
rem   gxlee     03/05/01 - substituteable object table
rem   ahunold   01/29/01 - typo
rem   ahunold   01/09/01 - checkin ADE

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware1', 'monitors', 11, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 11) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware2', 'printers', 12, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 12) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware3', 'harddisks', 13, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 13) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware4', 'memory components/upgrades', 14, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 14) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware5'
         , 'processors, sound and video cards, network cards, motherboards', 15, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 15) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware6', 'keyboards, mouses, mouse pads', 16, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 16) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware7'
         , 'other peripherals (CD-ROM, DVD, tape cartridge drives, ...)', 17, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 17) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('hardware8'
         , 'miscellaneous hardware (cables, screws, power supplies ...)', 19, 10,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 19) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software1', 'spreadsheet software', 21, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 21) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software2', 'word processing software', 22, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 22) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software3', 'database software', 23, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 23) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software4', 'operating systems', 24, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 24) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software5', 'software development tools (including languages)', 25, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 25) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('software6', 'miscellaneous software', 29, 20,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 29) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('office1', 'capitalizable assets (desks, chairs, phones ...)', 31, 30,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 31) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('office2'
         , 'office supplies for daily use (pencils, erasers, staples, ...)', 32, 30,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 32) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('office3', 'manuals, other books', 33, 30,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 33) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.leaf_category_typ('office4', 'miscellaneous office supplies', 39, 30,
  CAST(MULTISET(SELECT o.product_id
    FROM oe.oc_product_information o
    WHERE o.category_id = 39) as oe.product_ref_list_typ))) ;

INSERT INTO oe.categories_tab
  VALUES (oe.composite_category_typ('hardware', 'computer hardware and peripherals', 10, 90,
  CAST(MULTISET(SELECT REF(g)
    FROM oe.categories_tab g
    WHERE g.category_id IN (11, 12, 13, 14, 15, 16, 17, 19)) as
         oe.subcategory_ref_list_typ)));

INSERT INTO oe.categories_tab
  VALUES (oe.composite_category_typ('software', 'computer software', 20, 90,
  CAST(MULTISET(SELECT REF(g)
    FROM oe.categories_tab g
    WHERE g.category_id IN (21, 22, 23, 24, 25, 29)) as 
         oe.subcategory_ref_list_typ)));

INSERT INTO oe.categories_tab
  VALUES (oe.composite_category_typ('office equipment', 'office furniture and supplies', 30, 90,
  CAST(MULTISET(SELECT REF(g)
    FROM oe.categories_tab g
    WHERE g.category_id IN (31, 32, 33, 39)) as
         oe.subcategory_ref_list_typ)));

INSERT INTO oe.categories_tab
  VALUES (oe.catalog_typ('online catalog'
         , 'catalog of computer hardware, software, and office equipment'
         , 90, NULL,
  CAST(MULTISET(SELECT REF(g)
    FROM oe.categories_tab g
    WHERE g.category_id IN (10, 20, 30)) as
         oe.subcategory_ref_list_typ)));

--
--  Not Needed for custom data load
--
--ALTER TYPE category_typ
-- ADD ATTRIBUTE (parent_category_id number(2)) CASCADE;
--
--UPDATE oe.categories_tab
--  SET parent_category_id = 90
--  WHERE category_id IN (10, 20, 30);
--
--UPDATE oe.categories_tab
--  SET parent_category_id = 10
--  WHERE category_id IN (11, 12, 13, 14, 15, 16, 17, 19);
--
--UPDATE oe.categories_tab
--  SET parent_category_id = 20
--  WHERE category_id IN (21, 22, 23, 24, 25, 29);
--
--UPDATE oe.categories_tab
--  SET parent_category_id = 30
--  WHERE category_id IN (31, 32, 33, 39);

COMMIT;

--  Not Needed for custom data load
--ALTER TYPE oe.catalog_typ COMPILE BODY;
--ALTER TYPE oe.composite_category_typ COMPILE BODY;
--ALTER TYPE oe.leaf_category_typ COMPILE BODY; 
