use tpcds;
copy call_center(cc_call_center_sk 
, cc_call_center_id 
, cc_rec_start_date 
, cc_rec_end_date 
, cc_closed_date_sk 
, cc_open_date_sk 
, cc_name 
, cc_class 
, cc_employees 
, cc_sq_ft 
, cc_hours 
, cc_manager 
, cc_mkt_id 
, cc_mkt_class 
, cc_mkt_desc 
, cc_market_manager 
, cc_division 
, cc_division_name 
, cc_company 
, cc_company_name 
, cc_street_number 
, cc_street_name 
, cc_street_type 
, cc_suite_number 
, cc_city 
, cc_county 
, cc_state 
, cc_zip 
, cc_country cq
, cc_gmt_offset 
, cc_tax_percentage, junk )  from 'work/tools/call_center.dat' with delimiter='|' ;



copy customer (c_customer_sk ,
c_customer_id ,
c_current_cdemo_sk ,
c_current_hdemo_sk ,
c_current_addr_sk ,
c_first_shipto_date_sk ,
c_first_sales_date_sk ,
c_salutation ,
c_first_name ,
c_last_name ,
c_preferred_cust_flag ,
c_birth_day ,
c_birth_month ,
c_birth_year ,
c_birth_country ,
c_login ,
c_email_address ,
c_last_review_date , junk ) from 'tools/customer.dat' with delimiter='|' ;
copy customer_address (ca_address_sk ,
ca_address_id ,
ca_street_number ,
ca_street_name ,
ca_street_type ,
ca_suite_number ,
ca_city ,
ca_county ,
ca_state ,
ca_zip ,
ca_country ,
ca_gmt_offset ,
ca_location_type , junk ) from 'tools/customer_address.dat' with delimiter='|' ;
copy customer_demographics (cd_demo_sk ,
cd_gender ,
cd_marital_status ,
cd_education_status ,
cd_purchase_estimate ,
cd_credit_rating ,
cd_dep_count ,
cd_dep_employed_count ,
cd_dep_college_count , junk ) from 'tools/customer_demographics.dat' with delimiter='|' ;
copy date_dim (d_date_sk ,
d_date_id ,
d_date ,
d_month_seq ,
d_week_seq ,
d_quarter_seq ,
d_year ,
d_dow ,
d_moy ,
d_dom ,
d_qoy ,
d_fy_year ,
d_fy_quarter_seq ,
d_fy_week_seq ,
d_day_name ,
d_quarter_name ,
d_holiday ,
d_weekend ,
d_following_holiday ,
d_first_dom ,
d_last_dom ,
d_same_day_ly ,
d_same_day_lq ,
d_current_day ,
d_current_week ,
d_current_month ,
d_current_quarter ,
d_current_year , junk ) from 'tools/date_dim.dat' with delimiter='|' ;
copy household_demographics (hd_demo_sk ,
hd_income_band_sk ,
hd_buy_potential ,
hd_dep_count ,
hd_vehicle_count , junk ) from 'tools/household_demographics.dat' with  delimiter='|';
copy income_band (ib_income_band_sk,ib_lower_bound,ib_upper_bound, junk ) from 'tools/income_band.dat' with delimiter='|' ;
copy inventory(inv_date_sk ,
inv_item_sk ,
inv_warehouse_sk ,
inv_quantity_on_hand , junk ) from 'tools/inventory.dat' with delimiter='|';
copy item(i_item_sk ,
i_item_id ,
i_rec_start_date ,
i_rec_end_date ,
i_item_desc ,
i_current_price ,
i_wholesale_cost ,
i_brand_id ,
i_brand ,
i_class_id ,
i_class ,
i_category_id ,
i_category ,
i_manufact_id ,
i_manufact ,
i_size ,
i_formulation ,
i_color ,
i_units ,
i_container ,
i_manager_id ,
i_product_name 
, junk ) from 'tools/item.dat' with delimiter='|';
copy promotion(p_promo_sk ,
p_promo_id ,
p_start_date_sk ,
p_end_date_sk ,
p_item_sk ,
p_cost ,
p_response_target ,
p_promo_name ,
p_channel_dmail ,
p_channel_email ,
p_channel_catalog ,
p_channel_tv ,
p_channel_radio ,
p_channel_press ,
p_channel_event ,
p_channel_demo ,
p_channel_details ,
p_purpose ,
p_discount_active , junk ) from 'tools/promotion.dat' with delimiter='|' ;
copy reason(r_reason_sk,r_reason_id,r_reason_desc, junk ) from 'tools/reason.dat' with delimiter='|'; ;
copy ship_mode(sm_ship_mode_sk 
, sm_ship_mode_id 
, sm_type 
, sm_code 
, sm_carrier 
, sm_contract , junk ) from 'tools/ship_mode.dat' with delimiter='|' ;
copy store(s_store_sk ,
s_store_id ,
s_rec_start_date ,
s_rec_end_date ,
s_closed_date_sk ,
s_store_name ,
s_number_employees ,
s_floor_space ,
s_hours ,
s_manager ,
s_market_id ,
s_geography_class ,
s_market_desc ,
s_market_manager ,
s_division_id ,
s_division_name ,
s_company_id ,
s_company_name ,
s_street_number ,
s_street_name ,
s_street_type ,
s_suite_number ,
s_city ,
s_county ,
s_state ,
s_zip ,
s_country ,
s_gmt_offset ,
s_tax_precentage , junk ) from 'tools/store_1_30.dat' with delimiter='|' ;

copy time_dim(t_time_sk ,
t_time_id ,
t_time ,
t_hour ,
t_minute ,
t_second ,
t_am_pm ,
t_shift ,
t_sub_shift ,
t_meal_time , junk ) from 'tools/time_dim.dat' with delimiter='|' ;
copy warehouse(w_warehouse_sk 
, w_warehouse_id 
, w_warehouse_name 
, w_warehouse_sq_ft 
, w_street_number 
, w_street_name 
, w_street_type 
, w_suite_number 
, w_city 
, w_county 
, w_state 
, w_zip 
, w_country 
, w_gmt_offset , junk ) from 'tools/warehouse.dat' with delimiter='|' ;
copy web_page(wp_web_page_sk 
, wp_web_page_id 
, wp_rec_start_date 
, wp_rec_end_date 
, wp_creation_date_sk 
, wp_access_date_sk 
, wp_autogen_flag 
, wp_customer_sk 
, wp_url 
, wp_type 
, wp_char_count 
, wp_link_count 
, wp_image_count 
, wp_max_ad_count , junk ) from 'tools/web_page.dat' with delimiter='|' ;


copy web_site(web_site_sk ,
web_site_id ,
web_rec_start_date ,
web_rec_end_date ,
web_name ,
web_open_date_sk ,
web_close_date_sk ,
web_class ,
web_manager ,
web_mkt_id ,
web_mkt_class ,
web_mkt_desc ,
web_market_manager ,
web_company_id ,
web_company_name ,
web_street_number ,
web_street_name ,
web_street_type ,
web_suite_number ,
web_city ,
web_county ,
web_state ,
web_zip ,
web_country ,
web_gmt_offset ,
web_tax_percentage , junk ) from 'tools/web_site.dat' with delimiter='|' ;
