set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>26569255727828014029
,p_default_application_id=>50714
,p_default_owner=>'JESUSDELAO'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 50714 - Organization.sim
--
-- Application Export:
--   Application:     50714
--   Name:            Organization.sim
--   Date and Time:   19:44 Thursday April 28, 2016
--   Exported By:     JESUSDELAO@UTEXAS.EDU
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     16
--     Items:                  221
--     Processes:               15
--     Regions:                 39
--     Buttons:                 29
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--       Items:                  1
--       Web Services:          11
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   2
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,50714)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CANNATA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Organization.sim')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_18843199')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BB2EC5D7ABD77122DED42FAF4271262F320C85430210FFA366F2EF22F2017933'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(91003446468589645441)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Sim Insert'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428194036'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31914053591149058544)
,p_name=>'Logout'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31914053776165058545)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Logout'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_list_item_disp_condition=>'1'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(91003403885529645363)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61661546469433087396)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Person'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'0'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'2:3:4'
,p_parent_list_item_id=>wwv_flow_api.id(61661546469433087396)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31864237836484099898)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'President'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'4'
,p_parent_list_item_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31866745145436315467)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Project Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31868280839795473658)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'3:4'
,p_parent_list_item_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31869820207757269304)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Interim Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'3:4'
,p_parent_list_item_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31870686300329356894)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Previous employee'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(61798164915619187254)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31857131333831059244)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Department'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'2:3:4'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31871297635028418218)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Project'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'TYPE'
,p_list_item_disp_condition2=>'2:3:4'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,22,23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31872144579227916452)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Current Project'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31871297635028418218)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31872696071939630612)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Previous Project'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31871297635028418218)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(91003446139549645436)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(91003446321596645440)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91003403524356645363)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91003403684814645363)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91003403726297645363)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(31912336462999895372)
,p_name=>'TYPE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31908797905580797322)
,p_lov_name=>'LOGIN'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VAL AS d,',
'       RETURN_VAL  AS r',
'FROM TABLE(rwp.doLOV(:P1_NEW, ''[last_name], [first_name]'', ''[person_id]''))'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31909149246860465980)
,p_lov_name=>'LOGININTYPE'
,p_lov_query=>'.'||wwv_flow_api.id(31909149246860465980)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909149586374465981)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Person'
,p_lov_return_value=>'Person'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909149971907465983)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'Employee'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909150349233465983)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Project Employee'
,p_lov_return_value=>'ProjectEmployee'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909150722562465983)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Manager'
,p_lov_return_value=>'Manager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909151180280465983)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Interim Manager'
,p_lov_return_value=>'Interimmanager'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31909151534353465984)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'President'
,p_lov_return_value=>'President'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(91003446594328645446)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(91003446922362645452)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003403948903645364)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404082593645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404129284645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404286323645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404318312645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404470824645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404577320645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404676879645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404750760645365)
,p_page_template_id=>wwv_flow_api.id(91003403948903645364)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003404830737645368)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003404925080645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405046912645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405113711645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405230065645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405359643645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405445306645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405514742645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405696404645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405759996645368)
,p_page_template_id=>wwv_flow_api.id(91003404830737645368)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003405803245645368)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003405970698645369)
,p_page_template_id=>wwv_flow_api.id(91003405803245645368)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406017492645369)
,p_page_template_id=>wwv_flow_api.id(91003405803245645368)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003406188426645369)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406249804645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406366454645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406427340645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406522407645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406621982645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406723809645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406854172645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003406940137645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407092648645369)
,p_page_template_id=>wwv_flow_api.id(91003406188426645369)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003407158120645369)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407298296645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407391173645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407435637645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407591819645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407687372645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407706578645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003407893272645370)
,p_page_template_id=>wwv_flow_api.id(91003407158120645369)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003407979628645370)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408005454645370)
,p_page_template_id=>wwv_flow_api.id(91003407979628645370)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408119974645370)
,p_page_template_id=>wwv_flow_api.id(91003407979628645370)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408250994645370)
,p_page_template_id=>wwv_flow_api.id(91003407979628645370)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003408347609645370)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408493919645370)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408567061645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408615189645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408784858645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408811647645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003408986168645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409004672645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409145321645371)
,p_page_template_id=>wwv_flow_api.id(91003408347609645370)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003409289336645371)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409366370645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409479441645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409579767645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409645065645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409757526645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409900006645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003409938876645371)
,p_page_template_id=>wwv_flow_api.id(91003409289336645371)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(91003410098628645371)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003410136965645372)
,p_page_template_id=>wwv_flow_api.id(91003410098628645371)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003410263941645372)
,p_page_template_id=>wwv_flow_api.id(91003410098628645371)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003410320431645372)
,p_page_template_id=>wwv_flow_api.id(91003410098628645371)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91003440937784645407)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91003441058208645407)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(91003441146210645408)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003410498020645372)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003410514715645374)
,p_plug_template_id=>wwv_flow_api.id(91003410498020645372)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003411991445645378)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003412088907645378)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003412146456645378)
,p_plug_template_id=>wwv_flow_api.id(91003412088907645378)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003412238277645378)
,p_plug_template_id=>wwv_flow_api.id(91003412088907645378)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003412929140645378)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003413062310645379)
,p_plug_template_id=>wwv_flow_api.id(91003412929140645378)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003413152248645379)
,p_plug_template_id=>wwv_flow_api.id(91003412929140645378)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003416349134645381)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003416427156645382)
,p_plug_template_id=>wwv_flow_api.id(91003416349134645381)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003416570991645382)
,p_plug_template_id=>wwv_flow_api.id(91003416349134645381)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003418487288645384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003418527655645384)
,p_plug_template_id=>wwv_flow_api.id(91003418487288645384)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003418636656645384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003418772337645384)
,p_plug_template_id=>wwv_flow_api.id(91003418636656645384)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003419512140645384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003419866175645385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003419996648645385)
,p_plug_template_id=>wwv_flow_api.id(91003419866175645385)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003420048687645385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003420154655645385)
,p_plug_template_id=>wwv_flow_api.id(91003420048687645385)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003420229011645385)
,p_plug_template_id=>wwv_flow_api.id(91003420048687645385)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003422136576645387)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003422240180645387)
,p_plug_template_id=>wwv_flow_api.id(91003422136576645387)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003422347843645387)
,p_plug_template_id=>wwv_flow_api.id(91003422136576645387)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003423347434645388)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(91003423870930645389)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(91003423915090645389)
,p_plug_template_id=>wwv_flow_api.id(91003423870930645389)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003432262329645398)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003433952574645400)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003436006960645402)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003436829005645402)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003437748587645403)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003438204898645403)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003438365234645403)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003438485119645404)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003438595403645404)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003439442879645404)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(91003439962362645405)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003424500824645389)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003424510803645391)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003426281336645392)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003428325446645395)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003428770346645395)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003428879449645396)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(91003428879449645396)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003430126561645397)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003430309329645397)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(91003431326226645398)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91003440405915645405)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91003440565832645406)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91003440636944645406)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91003440797005645406)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(91003440858242645406)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(91003441529167645408)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(91003441791501645410)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(91003441686506645409)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(91003442171048645414)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(91003409289336645371)
,p_default_dialog_template=>wwv_flow_api.id(91003407979628645370)
,p_error_template=>wwv_flow_api.id(91003405803245645368)
,p_printer_friendly_template=>wwv_flow_api.id(91003409289336645371)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(91003405803245645368)
,p_default_button_template=>wwv_flow_api.id(91003441058208645407)
,p_default_region_template=>wwv_flow_api.id(91003420048687645385)
,p_default_chart_template=>wwv_flow_api.id(91003420048687645385)
,p_default_form_template=>wwv_flow_api.id(91003420048687645385)
,p_default_reportr_template=>wwv_flow_api.id(91003420048687645385)
,p_default_tabform_template=>wwv_flow_api.id(91003420048687645385)
,p_default_wizard_template=>wwv_flow_api.id(91003420048687645385)
,p_default_menur_template=>wwv_flow_api.id(91003423347434645388)
,p_default_listr_template=>wwv_flow_api.id(91003420048687645385)
,p_default_irr_template=>wwv_flow_api.id(91003419512140645384)
,p_default_report_template=>wwv_flow_api.id(91003428879449645396)
,p_default_label_template=>wwv_flow_api.id(91003440565832645406)
,p_default_menu_template=>wwv_flow_api.id(91003441529167645408)
,p_default_calendar_template=>wwv_flow_api.id(91003441686506645409)
,p_default_list_template=>wwv_flow_api.id(91003436006960645402)
,p_default_nav_list_template=>wwv_flow_api.id(91003439442879645404)
,p_default_top_nav_list_temp=>wwv_flow_api.id(91003439442879645404)
,p_default_side_nav_list_temp=>wwv_flow_api.id(91003438485119645404)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(91003412088907645378)
,p_default_dialogr_template=>wwv_flow_api.id(91003411991445645378)
,p_default_option_label=>wwv_flow_api.id(91003440565832645406)
,p_default_required_label=>wwv_flow_api.id(91003440797005645406)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(91003438365234645403)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91003441879640645411)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91003441988222645411)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(91003442075305645411)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003410796597645375)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003410984012645376)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003411178563645376)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003412319166645378)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003412554765645378)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003413237907645379)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003413647662645379)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003414273318645380)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003414864385645380)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003415060660645380)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003415919789645381)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003417555726645382)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003418991968645384)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003422479186645387)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003422611895645388)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003423009055645388)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003423403953645388)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003424056024645389)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003424687311645391)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003424833988645391)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003426459630645392)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003427124973645393)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003427470297645394)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003428131874645395)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003428445210645395)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003428928184645396)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003429248394645396)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003429461703645396)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003430452803645397)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003432363331645399)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003433133276645400)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003434199764645400)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003434892282645401)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003435157284645401)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003435878049645401)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003436590979645402)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003438959168645404)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003440099292645405)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003441248096645408)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003442265365645432)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003442407162645432)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003442651253645432)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003442811028645432)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003443003185645433)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003443448113645433)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003444150884645433)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003444553805645434)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003444766030645435)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003444994688645435)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003445146601645435)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003445406084645435)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(91003445743322645435)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003410641782645374)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003410825379645375)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(91003410796597645375)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411101977645376)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(91003410984012645376)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411247399645376)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(91003411178563645376)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411329917645376)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(91003410796597645375)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411457289645377)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(91003410984012645376)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411596861645377)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(91003410796597645375)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411696043645377)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(91003410984012645376)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411769029645377)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(91003410796597645375)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003411828423645377)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003410498020645372)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(91003411178563645376)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003412486978645378)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91003412088907645378)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003412635760645378)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(91003412088907645378)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(91003412554765645378)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003412737049645378)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(91003412088907645378)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003412900288645378)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(91003412088907645378)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(91003412554765645378)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413315824645379)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(91003413237907645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413477703645379)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(91003413237907645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413579994645379)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(91003413237907645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413722232645379)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413887203645380)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003413986825645380)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414080393645380)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(91003413237907645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414150667645380)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414392036645380)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414455393645380)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414526904645380)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414608462645380)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414783405645380)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003414934653645380)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(91003414864385645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415199012645380)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415262178645381)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(91003414864385645380)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415368192645381)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415480435645381)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415541976645381)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415627161645381)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415801240645381)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003415821302645381)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416007379645381)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(91003415919789645381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416189318645381)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(91003415919789645381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416250930645381)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003412929140645378)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416608499645382)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416743045645382)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416889815645382)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003416985396645382)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417041785645382)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417116028645382)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417217947645382)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417397139645382)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417476923645382)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417627656645382)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(91003417555726645382)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417710275645383)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(91003417555726645382)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417876024645383)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003417921619645383)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003418063307645383)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003418136912645384)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003418287144645384)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003418327668645384)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003416349134645381)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003418817098645384)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419090424645384)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(91003418991968645384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419163051645384)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(91003418991968645384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419249400645384)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419363246645384)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419459395645384)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003418636656645384)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(91003418991968645384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419655307645385)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003419512140645384)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003419726382645385)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003419512140645384)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420313933645385)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420442527645385)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420535787645385)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420689792645385)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(91003413647662645379)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420765425645385)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420803555645386)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003420960630645386)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421033034645386)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421172760645387)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(91003414273318645380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421224559645387)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(91003414864385645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421397409645387)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421483076645387)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(91003414864385645380)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421559559645387)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421685416645387)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421759728645387)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421847220645387)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(91003415060660645380)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003421932033645387)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003422015497645387)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003420048687645385)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(91003412319166645378)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003422589537645388)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(91003422479186645387)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003422773669645388)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(91003422611895645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003422859312645388)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003422965534645388)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(91003422611895645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003423198711645388)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(91003423009055645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003423229325645388)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003422136576645387)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(91003423009055645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003423580053645388)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91003423347434645388)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(91003423403953645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003423631080645388)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91003423347434645388)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003423795292645389)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(91003423347434645388)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(91003423403953645388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003424137592645389)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(91003423870930645389)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(91003424056024645389)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003424289275645389)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003423870930645389)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(91003424056024645389)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003424332432645389)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(91003423870930645389)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003424796780645391)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(91003424687311645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425000473645391)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425091052645391)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(91003424687311645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425114196645391)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425222006645391)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(91003424687311645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425333909645391)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425421230645392)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425503488645392)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(91003424687311645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425666935645392)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(91003424687311645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425722124645392)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425803440645392)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003425962418645392)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426095961645392)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426144012645392)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003424510803645391)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426315942645392)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426523421645392)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(91003426459630645392)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426609495645393)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426735439645393)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(91003426459630645392)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426855370645393)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003426967561645393)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(91003426459630645392)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427078257645393)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427275984645393)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(91003427124973645393)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427347237645393)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(91003427124973645393)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427598495645394)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(91003427470297645394)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427702028645394)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(91003427470297645394)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427798051645394)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(91003427124973645393)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427890095645394)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003427944389645394)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(91003426459630645392)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003428065526645395)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003428294826645395)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003426281336645392)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(91003428131874645395)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003428590460645395)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003428325446645395)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(91003428445210645395)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003428670613645395)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003428325446645395)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(91003428445210645395)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429011772645396)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(91003428928184645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429138499645396)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(91003428928184645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429398387645396)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(91003429248394645396)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429514263645396)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(91003429461703645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429644142645396)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(91003429461703645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429767449645396)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(91003429461703645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429836125645396)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(91003429248394645396)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003429974459645397)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430033153645397)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003428879449645396)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(91003429461703645396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430253314645397)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(91003430126561645397)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(91003427124973645393)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430520393645397)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430659551645397)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430746152645397)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430887399645397)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003430929463645397)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431088008645397)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431159000645397)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431268038645398)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91003430309329645397)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431470729645398)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431563846645398)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431697665645398)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431774007645398)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431891204645398)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(91003424833988645391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003431991666645398)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432027022645398)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432165342645398)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(91003431326226645398)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(91003430452803645397)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432446674645399)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432588514645399)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432696302645399)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432797367645400)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432832164645400)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003432934074645400)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433034585645400)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433291126645400)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(91003433133276645400)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433350643645400)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(91003433133276645400)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433498153645400)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433578769645400)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(91003433133276645400)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433604530645400)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433779688645400)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(91003433133276645400)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003433858011645400)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91003432262329645398)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(91003433133276645400)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434078130645400)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434206163645400)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(91003434199764645400)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434385188645401)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434434102645401)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(91003434199764645400)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434587545645401)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434674968645401)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(91003434199764645400)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434731765645401)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003434971147645401)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435045316645401)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435251281645401)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(91003435157284645401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435382520645401)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(91003435157284645401)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435485250645401)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435560327645401)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435628200645401)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(91003434199764645400)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435744909645401)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003435936254645402)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003433952574645400)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(91003435878049645401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436161472645402)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436295141645402)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436354539645402)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436490017645402)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436627931645402)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(91003436590979645402)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436744330645402)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003436006960645402)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(91003436590979645402)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003436975050645402)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437034850645402)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437106763645402)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437227327645402)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437303660645402)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437454288645402)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437534164645403)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437615120645403)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(91003436829005645402)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437846488645403)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(91003437748587645403)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003437955665645403)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003437748587645403)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003438013125645403)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003437748587645403)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003438177294645403)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003437748587645403)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003438696335645404)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(91003435157284645401)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003438711049645404)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(91003432363331645399)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003438883074645404)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(91003435157284645401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439030498645404)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(91003438959168645404)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439139139645404)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439298701645404)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(91003434892282645401)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439306111645404)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(91003438595403645404)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(91003438959168645404)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439590596645405)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91003439442879645404)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439630407645405)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91003439442879645404)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439713491645405)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91003439442879645404)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003439825580645405)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(91003439442879645404)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003440197506645405)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(91003439962362645405)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(91003440099292645405)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003440268062645405)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(91003439962362645405)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(91003440099292645405)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003440352304645405)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(91003439962362645405)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(91003440099292645405)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003441340258645408)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(91003441146210645408)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(91003441248096645408)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003441493298645408)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(91003441146210645408)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(91003441248096645408)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003442308291645432)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(91003442265365645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003442513626645432)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(91003442407162645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003442766946645432)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(91003442651253645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003442922176645432)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(91003442811028645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443105031645433)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(91003443003185645433)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443260461645433)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(91003442407162645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443326031645433)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(91003442651253645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443585764645433)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(91003443448113645433)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443645627645433)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(91003443448113645433)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443802114645433)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(91003443448113645433)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443895381645433)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(91003442265365645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003443932478645433)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(91003443003185645433)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444006067645433)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(91003442811028645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444258404645433)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(91003444150884645433)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444345686645434)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(91003442265365645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444502406645434)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(91003442265365645432)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444665326645434)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(91003444553805645434)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003444867599645435)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(91003444766030645435)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445054089645435)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(91003444994688645435)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445262327645435)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(91003445146601645435)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445316183645435)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(91003445146601645435)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445541446645435)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(91003445406084645435)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445614304645435)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(91003444766030645435)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445897466645436)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(91003445743322645435)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003445974630645436)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(91003446032551645436)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(91003445743322645435)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(91031664402423481907)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(91003446468589645441)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(91003446282913645436)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(91003403885529645363)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(91003438485119645404)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(31914053591149058544)
,p_nav_bar_list_template_id=>wwv_flow_api.id(91003438365234645403)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428193311'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31913191853068987398)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91003447032745645453)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003423347434645388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(91003446594328645446)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(91003441529167645408)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31913192105207987400)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(31913191853068987398)
,p_button_name=>'loggin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31913192566720987401)
,p_name=>'P1_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31913191853068987398)
,p_item_default=>'Person'
,p_prompt=>'Login type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOGININTYPE'
,p_lov=>'.'||wwv_flow_api.id(31909149246860465980)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31913192981313987402)
,p_name=>'P1_NEW_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31913191853068987398)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOGIN'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DISPLAY_VAL AS d,',
'       RETURN_VAL  AS r',
'FROM TABLE(rwp.doLOV(:P1_NEW, ''[last_name], [first_name]'', ''[person_id]''))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31912190537143879105)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31913192105207987400)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31912190681244879106)
,p_event_id=>wwv_flow_api.id(31912190537143879105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    return_val Number := 0;',
'begin',
'    if :P1_NEW = ''Person'' then',
'        return_val := 1;',
'    elsif    :P1_NEW = ''Employee'' or :P1_NEW = ''ProjectEmployee'' then',
'        return_val := 2;',
'    elsif    :P1_NEW = ''Manager'' or :P1_NEW = ''Interimmanager'' then',
'        return_val := 3;',
'    elsif    :P1_NEW = ''President'' then',
'        return_val := 4;',
'    ',
'    end if;',
'    :TYPE := return_val;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31912190759565879107)
,p_name=>'New_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31912190825111879108)
,p_event_id=>wwv_flow_api.id(31912190759565879107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    return_val Number := 0;',
'begin',
'    :TYPE := return_val;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428180423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61661546904643087396)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61661555890459087409)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSONJSON''',
'',
'--select				',
'--jt1.first_name	first_name,			',
'--jt2.last_name	last_name',
'--from	apex_collections	t,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2',
'--where	t.collection_name	=	''P2_PERSONJSON''	',
'',
'--select				',
'--jt2.sal	sal',
'--from	apex_collections	t,',
'--json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt2',
'--where	t.collection_name	=	''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61662238508126237960)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61662189257269232089)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7',
'where	t.collection_name	=	''P2_PERSONJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61662189371571232089)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29830773734913338901
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662189687530232092)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662190044701232093)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662782297802953805)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662783028021953810)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662793677113953812)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662794337576953813)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61662795098579953813)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61662190912316232569)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'298307753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61661547139355087397)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61662189257269232089)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61661547537763087398)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661548358048087400)
,p_name=>'P2_LASTNAME'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661549212205087402)
,p_name=>'P2_DB'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661549978627087402)
,p_name=>'P2_USER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661550756963087403)
,p_name=>'P2_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661551593151087404)
,p_name=>'P2_MODE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661552397075087405)
,p_name=>'P2_MODEL'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661553167473087406)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661553964214087406)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61661554809036087407)
,p_name=>'P2_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61661546904643087396)
,p_item_default=>'"from person retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61661547963667087398)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'59172036190322391033:59172036377331391039'
,p_attribute_01=>wwv_flow_api.id(91003452013989284227)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSONJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428062541'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61667303307602484892)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61667333728852484893)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61667334060904484894)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61667333728852484893)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667334838839484895)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667335712682484896)
,p_name=>'P4_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667336443877484897)
,p_name=>'P4_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667337257187484897)
,p_name=>'P4_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667338049608484898)
,p_name=>'P4_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667338932212484899)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667339655282484899)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667340503716484900)
,p_name=>'P4_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667341308372484901)
,p_name=>'P4_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667342115239484902)
,p_name=>'P4_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'"false"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667342853131484903)
,p_name=>'P4_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667343661855484903)
,p_name=>'P4_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667344461093484904)
,p_name=>'P4_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667345296752484905)
,p_name=>'P4_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667346053368484905)
,p_name=>'P4_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667346837319484906)
,p_name=>'P4_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667347724758484907)
,p_name=>'P4_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61667348526289484907)
,p_name=>'P4_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(61667303307602484892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert employee (employee-id := ''employeeid'', salary := ''salary'', salary-exception := ''salaryexception'', person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := '
||'''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>400
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61667334438740484894)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61665655595753619702)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61667333728852484893)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160427225740'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61798062796122166880)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61798080368127166893)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P5_EMPLOYEEJSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61798080791143166894)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61798081211886166897)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P5_EMPLOYEEJSON''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61798081594199166900)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>29966665957541273712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798081687916166903)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798082044353166905)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798082489485166908)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798082906444166909)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798083277258166910)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798083657685166911)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798084070194166912)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798084436913166913)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798084856035166914)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(61798085319228166915)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61798085665769166916)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'299666701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61798086441862166920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61798081211886166897)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61798086042713166918)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61798081211886166897)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Employee'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61798094577869166933)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798063199175166882)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798063557114166884)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798073980987166885)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798074386460166885)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798074830754166885)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798075188212166886)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798075573832166886)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798075960928166887)
,p_name=>'P5_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798076393179166887)
,p_name=>'P5_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798076831804166888)
,p_name=>'P5_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798077234498166888)
,p_name=>'P5_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798077584551166888)
,p_name=>'P5_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798078001823166889)
,p_name=>'P5_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798078353654166890)
,p_name=>'P5_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798078785001166890)
,p_name=>'P5_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798079154084166890)
,p_name=>'P5_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798079583845166891)
,p_name=>'P5_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61798079959940166891)
,p_name=>'P5_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(61798062796122166880)
,p_item_default=>'"from Employee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61798086917338166923)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'29834239716284726510:29834239959095726514'
,p_attribute_01=>wwv_flow_api.id(61665655595753619702)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_EMPLOYEEJSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428060146'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31857131721500059245)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31857141686016059262)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31857142377840059266)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31857278960801461381)
,p_plug_name=>'Department'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.dept_no	dept_no,			',
'jt2.dept_name	dept_name',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31857279219955461390)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31857279219955461390
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31122899615178611748)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Dept no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31122899724304611749)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Dept name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31857283319776461404)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318572834'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31857283806849461406)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31857278960801461381)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31857132198703059245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31857284200874461407)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31857278960801461381)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Department'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31857132527330059246)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857133303418059252)
,p_name=>'P10_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857134133652059254)
,p_name=>'P10_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857134922742059256)
,p_name=>'P10_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857135725886059256)
,p_name=>'P10_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857136510227059257)
,p_name=>'P10_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857137352176059258)
,p_name=>'P10_DEPTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857138144286059258)
,p_name=>'P10_DEPTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857138924302059259)
,p_name=>'P10_RETURNDIMENSIONS'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857139742668059260)
,p_name=>'P10_RETURNFOR'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857140523269059261)
,p_name=>'P10_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31857131721500059245)
,p_item_default=>'"from department retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31857132982337059248)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857101762124429119:31857101946919429120'
,p_attribute_01=>wwv_flow_api.id(31857101946919429120)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428065040'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31857404158032485612)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31857404566488485613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31857404996898485614)
,p_branch_name=>'Go To Page 11'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31857404566488485613)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857405789145485617)
,p_name=>'P11_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857406522933485619)
,p_name=>'P11_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857407301702485619)
,p_name=>'P11_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857528191412485620)
,p_name=>'P11_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857528980599485621)
,p_name=>'P11_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857529703122485622)
,p_name=>'P11_DEPTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857530547983485623)
,p_name=>'P11_DEPTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_use_cache_before_default=>'NO'
,p_item_default=>'""'
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857531312867485624)
,p_name=>'P11_RETURNDIMENSIONS'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857532187461485625)
,p_name=>'P11_RETURNFOR'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31857532926707485625)
,p_name=>'P11_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31857404158032485612)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert Department (dept-no := ''deptno'', dept-name := ''deptname'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31857405362705485614)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31857101762124429119:31857101946919429120'
,p_attribute_01=>wwv_flow_api.id(31857101946919429120)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31857404566488485613)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428075700'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31864248209738099899)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31864265235051099919)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31864265924841099921)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31864700876312770250)
,p_plug_name=>'President'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31864701143290770261)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31864701143290770261
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864701266950770263)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864701640400770264)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864702091814770264)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864702480114770272)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864702893316770273)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864703267273770274)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864703614391770275)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864704014968770275)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864704410193770276)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31864704858413770276)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31864705258296770278)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318647053'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31864705712092770280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31864700876312770250)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31864248605161099899)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31864706129330770281)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31864700876312770250)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create President'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31864249003558099900)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864249840951099902)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864250626817099904)
,p_name=>'P12_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864251437098099905)
,p_name=>'P12_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864252282822099905)
,p_name=>'P12_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864253046530099906)
,p_name=>'P12_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864253808322099908)
,p_name=>'P12_BONOUS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Bonous'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864254653717099909)
,p_name=>'P12_FIRSTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864255437247099910)
,p_name=>'P12_HOMEADDRESS'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864256298032099910)
,p_name=>'P12_ZIPCODE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864256941016099911)
,p_name=>'P12_HOMEPHONE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864257732111099912)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864258514731099912)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864259339384099913)
,p_name=>'P12_EMPLOYEEID'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864260156980099914)
,p_name=>'P12_SALARY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864260925039099914)
,p_name=>'P12_SALARYEXCEPTION'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864261722783099915)
,p_name=>'P12_PERSONID'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864262570810099917)
,p_name=>'P12_LASTNAME'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864263395354099917)
,p_name=>'P12_USCITIZEN'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31864264140585099918)
,p_name=>'P12_QUERY'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31864248209738099899)
,p_item_default=>'"from President retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31864249401698099900)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31864020803531716026:31864021030149716027'
,p_attribute_01=>wwv_flow_api.id(31864021030149716027)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428075752'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31865163161239188956)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31865163573391188957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31865163958259188958)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31865163573391188957)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865164705452188961)
,p_name=>'P13_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865165503650188962)
,p_name=>'P13_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865166348611188963)
,p_name=>'P13_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865167193417188964)
,p_name=>'P13_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865167925816188964)
,p_name=>'P13_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865168712889188965)
,p_name=>'P13_BONOUS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865169511578188966)
,p_name=>'P13_FIRSTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865170357126188967)
,p_name=>'P13_HOMEADDRESS'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865171158641188967)
,p_name=>'P13_ZIPCODE'
,p_item_sequence=>37
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865171941368188968)
,p_name=>'P13_HOMEPHONE'
,p_item_sequence=>47
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865172702317188969)
,p_name=>'P13_RETURNFOR'
,p_item_sequence=>57
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865173581848188969)
,p_name=>'P13_RETURNDIMENSIONS'
,p_item_sequence=>67
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865174334196188970)
,p_name=>'P13_EMPLOYEEID'
,p_item_sequence=>77
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865175125210188971)
,p_name=>'P13_SALARY'
,p_item_sequence=>87
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865175972167188972)
,p_name=>'P13_SALARYEXCEPTION'
,p_item_sequence=>97
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865176739943188973)
,p_name=>'P13_PERSONID'
,p_item_sequence=>107
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865177580492188973)
,p_name=>'P13_LASTNAME'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865178332128188974)
,p_name=>'P13_USCITIZEN'
,p_item_sequence=>117
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31865179166358188975)
,p_name=>'P13_QUERY'
,p_item_sequence=>127
,p_item_plug_id=>wwv_flow_api.id(31865163161239188956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''INSERT President FROM Person WHERE first-name = ''firstname'' AND last-name = ''lastname'' ();'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31865164382602188959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31864020803531716026:31864021030149716027'
,p_attribute_01=>wwv_flow_api.id(31864021030149716027)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31865163573391188957)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Project-Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project-Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428082406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31866745530460315468)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31866761700025315491)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31866762404133315495)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31866952525460962638)
,p_plug_name=>'Project Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31866952865312962642)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31866952865312962642
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866952934920962645)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866953387752962647)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866953766671962648)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866954190862962649)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866954577973962649)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866954971765962650)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866955341293962650)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866955709263962651)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866956109442962652)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31866956518858962652)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31866956977710962653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318669570'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31866957468247962658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31866952525460962638)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31866745942345315469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31866746354925315472)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866747158406315475)
,p_name=>'P14_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866747947642315476)
,p_name=>'P14_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866748616940315478)
,p_name=>'P14_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866749422670315479)
,p_name=>'P14_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866750247540315480)
,p_name=>'P14_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866751060609315480)
,p_name=>'P14_EMPLOYEEID'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866751864832315481)
,p_name=>'P14_SALARY'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866752663955315482)
,p_name=>'P14_SALARYEXCEPTION'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866753483714315483)
,p_name=>'P14_PERSONID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866754246327315484)
,p_name=>'P14_FIRSTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866755089163315485)
,p_name=>'P14_LASTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866755855512315486)
,p_name=>'P14_HOMEADDRESS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866756624924315487)
,p_name=>'P14_ZIPCODE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866757444947315487)
,p_name=>'P14_HOMEPHONE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866758200735315488)
,p_name=>'P14_USCITIZEN'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866759061499315489)
,p_name=>'P14_RETURNDIMENSIONS'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866759863805315490)
,p_name=>'P14_RETURNFOR'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31866760698250315490)
,p_name=>'P14_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31866745530460315468)
,p_item_default=>'"from projectemployee retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31866746707282315473)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31866584170323934475:31866584374343934476'
,p_attribute_01=>wwv_flow_api.id(31866584374343934476)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428085653'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31868281277129473659)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31868298060500473679)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31868298722728473680)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31868563491858501510)
,p_plug_name=>'Managers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31868563796285501516)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31868563796285501516
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868563886409501517)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868564233551501526)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868564650543501527)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868565089630501528)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868565488830501529)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868565819157501530)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868566229491501531)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868566646549501532)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868567049244501533)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31868567498939501534)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31868567876522501535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318685679'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31868568371492501536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31868563491858501510)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31868281608720473659)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31868282012207473660)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868282841340473662)
,p_name=>'P17_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868283614056473665)
,p_name=>'P17_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868284497021473666)
,p_name=>'P17_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868285298908473666)
,p_name=>'P17_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868286095505473667)
,p_name=>'P17_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868286861156473668)
,p_name=>'P17_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868287693837473668)
,p_name=>'P17_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868288454719473669)
,p_name=>'P17_EMPLOYEEID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868289296865473670)
,p_name=>'P17_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868290070791473671)
,p_name=>'P17_SALARYEXCEPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868291305452473672)
,p_name=>'P17_PERSONID'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868292142567473672)
,p_name=>'P17_FIRSTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868292937105473674)
,p_name=>'P17_LASTNAME'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868293723726473675)
,p_name=>'P17_HOMEADDRESS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868294587359473675)
,p_name=>'P17_ZIPCODE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868295317615473676)
,p_name=>'P17_HOMEPHONE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868296186789473677)
,p_name=>'P17_USCITIZEN'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31868296937665473678)
,p_name=>'P17_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31868281277129473659)
,p_item_default=>'"from manager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31868282494228473660)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31868190219251085746:31868190497608085748'
,p_attribute_01=>wwv_flow_api.id(31868190497608085748)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'interimmanager'
,p_page_mode=>'NORMAL'
,p_step_title=>'interimmanager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428090914'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31869820651251269305)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31869837977304269325)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31869838535326269330)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31870064683763301062)
,p_plug_name=>'Interim Manager'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.employee_id	employee_id,			',
'jt9.salary	salary,			',
'jt10.salary_exception salary_exception',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31870064971006301066)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31870064971006301066
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870065021013301068)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870065463713301074)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870065879362301074)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870066265327301075)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870066624955301075)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870067087680301076)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870067456002301077)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870067870250301077)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870068204060301078)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870068646903301079)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31870069055781301080)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318700691'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:EMPLOYEE_ID:SALARY:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31870069508483301082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31870064683763301062)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31869821033395269306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31869821479679269306)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869822241906269309)
,p_name=>'P18_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869823094076269311)
,p_name=>'P18_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869823951556269312)
,p_name=>'P18_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869825473601269313)
,p_name=>'P18_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869826466765269313)
,p_name=>'P18_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869827254114269314)
,p_name=>'P18_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869828079944269315)
,p_name=>'P18_EMPLOYEEID'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869828851929269315)
,p_name=>'P18_FIRSTNAME'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869829683523269316)
,p_name=>'P18_HOMEADDRESS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869830474941269318)
,p_name=>'P18_HOMEPHONE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869831280516269319)
,p_name=>'P18_LASTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869832000233269319)
,p_name=>'P18_PERSONID'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869832850545269320)
,p_name=>'P18_SALARY'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869833601950269321)
,p_name=>'P18_SALARYEXCEPTION'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869834445251269322)
,p_name=>'P18_USCITIZEN'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869835237815269322)
,p_name=>'P18_ZIPCODE'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869836063060269323)
,p_name=>'P18_RETURNFOR'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31869836869921269323)
,p_name=>'P18_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31869820651251269305)
,p_item_default=>'"from interimmanager retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31869821826404269307)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31869754819147641021:31869755052184641022'
,p_attribute_01=>wwv_flow_api.id(31869755052184641022)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'prevousEmployee'
,p_page_mode=>'NORMAL'
,p_step_title=>'prevousEmployee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428092151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31870686724695356895)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31870702403902356918)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31870703111784356920)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31870835882679370019)
,p_plug_name=>'Previous Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.first_name	first_name,			',
'jt2.last_name	last_name,			',
'jt3.person_id	person_id,			',
'jt4.home_address	home_address,			',
'jt5.zipcode	zipcode,			',
'jt6.home_phone	home_phone,			',
'jt7.us_citizen	us_citizen,			',
'jt8.isfired	isfired,			',
'jt9.salary	salary',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.isfired[*]'' COLUMNS rid for ordinality, isfired varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid',
'',
'--{"person_id":[1, 2, 3, 4, 5, 9, 6, 7, 8],"first_name":["Bill", "Diane", "Jennifer", "Alice", "George", "Mike", "Susan", "Steven", "Henry"],"last_name":["Dawer", "Wall", "Brown", "Dawer", "Layton", "Dawer", "Petro", "Williams", "Silverstone"],"home_'
||'address":["432 Hill Rd", "32 Cannon Dr", "35 Palm Lane", "432 Hill Rd", "347 Nueces St", "432 Hill Rd", "323 Country Lane", "3 Seton St", "100 Gates St"],"zipcode":[78705, 78705, 73014, 78021, 78705, 78705, 73421, 78705, 70007],"home_phone":[7891903,'
||' 7891903, 2360884, 6541658, 8798798, 7891903, 6541238, 8798712, 4565404],"us_citizen":["true", "true", "true", "false", "true", "true", "true", "false", "true"]}'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31870836125412370021)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31870836125412370021
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870836236011370022)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870836637946370026)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870837047883370028)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870837449473370028)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870837820886370029)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870838201630370030)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870838698980370030)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31870839488196370032)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31122899850047611750)
,p_db_column_name=>'ISFIRED'
,p_display_order=>19
,p_column_identifier=>'K'
,p_column_label=>'Isfired'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31870840221292370036)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318708403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:ISFIRED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31870840771252370038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31870835882679370019)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31870687163499356896)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31870687574229356897)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870688689032356901)
,p_name=>'P19_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870689454347356907)
,p_name=>'P19_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870690210152356908)
,p_name=>'P19_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870691004752356908)
,p_name=>'P19_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870691828586356909)
,p_name=>'P19_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870692615918356910)
,p_name=>'P19_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870693431127356910)
,p_name=>'P19_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870694283959356911)
,p_name=>'P19_ISFIRED'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Isfired'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870695059269356911)
,p_name=>'P19_SALARY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870695870623356912)
,p_name=>'P19_PERSONID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870696528688356913)
,p_name=>'P19_FIRSTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870697300938356913)
,p_name=>'P19_LASTNAME'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870698102995356914)
,p_name=>'P19_HOMEADDRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870698938193356915)
,p_name=>'P19_ZIPCODE'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870699751181356916)
,p_name=>'P19_HOMEPHONE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870700589187356916)
,p_name=>'P19_USCITIZEN'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31870701386087356917)
,p_name=>'P19_QUERY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31870686724695356895)
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'"from previousemployee retrieve *;',
'"'))
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31870687921054356897)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31870656441315351899:31870656662622351900'
,p_attribute_01=>wwv_flow_api.id(31870656662622351900)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428093919'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31871368071199418219)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31871377996479418232)
,p_name=>'Results'
,p_parent_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31871378637749418234)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31871700139713452383)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title		',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31871700469515452386)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31871700469515452386
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871639756856445103)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871639831654445104)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31871704585992452396)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318717046'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31871705021236452398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31871700139713452383)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31871368448824418220)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31871705304643452398)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31871700139713452383)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31871368894265418220)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871369687140418223)
,p_name=>'P20_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871370455777418225)
,p_name=>'P20_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871371208867418226)
,p_name=>'P20_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871372094946418226)
,p_name=>'P20_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871372826324418227)
,p_name=>'P20_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871373697646418228)
,p_name=>'P20_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871374478964418229)
,p_name=>'P20_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871375298370418229)
,p_name=>'P20_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871376002908418230)
,p_name=>'P20_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871376838026418231)
,p_name=>'P20_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31871368071199418219)
,p_item_default=>'"from project retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31871369215261418221)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31871320981298789849:31871321122342789851'
,p_attribute_01=>wwv_flow_api.id(31871321122342789851)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428093933'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31871694682060836513)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31871695051625836515)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31871695476569836515)
,p_branch_name=>'Go To Page 21'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31871695051625836515)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871696217471836519)
,p_name=>'P21_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871697089654836521)
,p_name=>'P21_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871697866574836522)
,p_name=>'P21_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871738634614836522)
,p_name=>'P21_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871739475139836524)
,p_name=>'P21_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871740246032836526)
,p_name=>'P21_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871741036036836527)
,p_name=>'P21_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871741853038836527)
,p_name=>'P21_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871742632629836529)
,p_name=>'P21_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31871743433901836530)
,p_name=>'P21_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31871694682060836513)
,p_item_default=>'''INSERT Project( project-no:= ''projectno'' ,project-title := ''projecttitle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31871695823154836516)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31871320981298789849:31871321122342789851'
,p_attribute_01=>wwv_flow_api.id(31871321122342789851)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31871695051625836515)
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'CurrentProject'
,p_page_mode=>'NORMAL'
,p_step_title=>'CurrentProject'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428095952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31872145122637916454)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31872165846365916469)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31872166521743916471)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31872225814671556035)
,p_plug_name=>'Current Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title,',
'jt3.project_active	project_active',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar path ''$'') jt3',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31872226102141556038)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31872226102141556038
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31872226214361556038)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31872226687122556039)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871639959517445105)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Project active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31872227021385556040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318722271'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:PROJECT_ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31872227592123556041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31872225814671556035)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31872145556379916454)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31872145976167916455)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872146797449916458)
,p_name=>'P22_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872147540222916461)
,p_name=>'P22_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872158375087916462)
,p_name=>'P22_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872159138999916462)
,p_name=>'P22_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872159990396916463)
,p_name=>'P22_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872160753947916464)
,p_name=>'P22_PROJECTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872161548981916465)
,p_name=>'P22_PROJECTTITLE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872162375294916465)
,p_name=>'P22_PROJECTACTIVE'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_prompt=>'Projectactive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872163154700916466)
,p_name=>'P22_RETURNDIMENSIONS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872163938555916467)
,p_name=>'P22_RETURNFOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872164750393916468)
,p_name=>'P22_QUERY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31872145122637916454)
,p_item_default=>'"from currentproject retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31872146395037916456)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31872044721236521255:31872044984988521256'
,p_attribute_01=>wwv_flow_api.id(31872044984988521256)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(91003446282913645436)
,p_name=>'previousProject'
,p_page_mode=>'NORMAL'
,p_step_title=>'previousProject'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JESUSDELAO@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20160428101200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31872696687663630613)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(91003420048687645385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31872709786390630638)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(91003420048687645385)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P10_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(91003428879449645396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31872710342805630684)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31872868901772029073)
,p_plug_name=>'Previous Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(91003419512140645384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select				',
'jt1.project_no	project_no,			',
'jt2.project_title	project_title,',
'jt3.end_date_month end_date_month,',
'jt4.end_date_day end_date_day,',
'jt5.end_date_year end_date_year,',
'jt6.est_person_hours',
'from	apex_collections	t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.end_date_month[*]'' COLUMNS rid for ordinality, end_date_month varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.end_date_day[*]'' COLUMNS rid for ordinality, end_date_day varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.end_date_year[*]'' COLUMNS rid for ordinality, end_date_year varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality, est_person_hours varchar path ''$'') jt6',
'where	t.collection_name	=	''P10_DOREST_RESULTS''and ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31872869297926029075)
,p_name=>'Person'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>31872869297926029075
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31872869384365029076)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>10
,p_column_identifier=>'K'
,p_column_label=>'Project no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31872869703650029077)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Project title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871640041977445106)
,p_db_column_name=>'END_DATE_MONTH'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'End date month'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871640170570445107)
,p_db_column_name=>'END_DATE_DAY'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'End date day'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871640242575445108)
,p_db_column_name=>'END_DATE_YEAR'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'End date year'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31871640305831445109)
,p_db_column_name=>'EST_PERSON_HOURS'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Est person hours'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31872870141382029078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'318728702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:END_DATE_MONTH:END_DATE_DAY:END_DATE_YEAR:EST_PERSON_HOURS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31872870618986029079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31872868901772029073)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31872697054632630614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(91003441058208645407)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31872697462521630615)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872698287153630617)
,p_name=>'P23_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872699008656630622)
,p_name=>'P23_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872699876497630622)
,p_name=>'P23_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'A0'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872700638851630623)
,p_name=>'P23_PASS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'localhost:8061'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872701498750630624)
,p_name=>'P23_USER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'WDBF4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872702245058630624)
,p_name=>'P23_PROJECTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872703061642630625)
,p_name=>'P23_PROJECTTITLE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872703842478630627)
,p_name=>'P23_ENDDATEMONTH'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Enddatemonth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872704622935630628)
,p_name=>'P23_ENDDATEDAY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Enddateday'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872705485275630629)
,p_name=>'P23_ENDDATEYEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Enddateyear'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872706283198630629)
,p_name=>'P23_ESTPERSONHOURS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_prompt=>'Estpersonhours'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872707005703630630)
,p_name=>'P23_RETURNDIMENSIONS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872707842928630631)
,p_name=>'P23_RETURNFOR'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31872708626244630632)
,p_name=>'P23_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31872696687663630613)
,p_item_default=>'"from PreviousProject retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(91003440565832645406)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31872697827828630616)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31872118749207533582:31872118960859533582'
,p_attribute_01=>wwv_flow_api.id(31872118960859533582)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/department
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31857101762124429119)
,p_name=>'Department'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31857101946919429120)
,p_ws_id=>wwv_flow_api.id(31857101762124429119)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857102211031429122)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857133745086059253)
,p_parameter_id=>wwv_flow_api.id(31857102211031429122)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857406198214485618)
,p_parameter_id=>wwv_flow_api.id(31857102211031429122)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857102582853429122)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857134507507059254)
,p_parameter_id=>wwv_flow_api.id(31857102582853429122)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857406981617485619)
,p_parameter_id=>wwv_flow_api.id(31857102582853429122)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857102800460429123)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857135315804059256)
,p_parameter_id=>wwv_flow_api.id(31857102800460429123)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857407722563485620)
,p_parameter_id=>wwv_flow_api.id(31857102800460429123)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857103105506429123)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857136114511059257)
,p_parameter_id=>wwv_flow_api.id(31857103105506429123)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857528589970485620)
,p_parameter_id=>wwv_flow_api.id(31857103105506429123)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857103439257429123)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857136930496059257)
,p_parameter_id=>wwv_flow_api.id(31857103439257429123)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857529390596485621)
,p_parameter_id=>wwv_flow_api.id(31857103439257429123)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857103748776429124)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857137709869059258)
,p_parameter_id=>wwv_flow_api.id(31857103748776429124)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DEPTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857530106645485622)
,p_parameter_id=>wwv_flow_api.id(31857103748776429124)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DEPTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857104045928429124)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857138537151059259)
,p_parameter_id=>wwv_flow_api.id(31857104045928429124)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DEPTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857530946232485623)
,p_parameter_id=>wwv_flow_api.id(31857104045928429124)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DEPTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857104344576429124)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857139379445059260)
,p_parameter_id=>wwv_flow_api.id(31857104344576429124)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857531752690485624)
,p_parameter_id=>wwv_flow_api.id(31857104344576429124)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857104612588429124)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857140102296059260)
,p_parameter_id=>wwv_flow_api.id(31857104612588429124)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857532544900485625)
,p_parameter_id=>wwv_flow_api.id(31857104612588429124)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857104985703429125)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857140959092059261)
,p_parameter_id=>wwv_flow_api.id(31857104985703429125)
,p_process_id=>wwv_flow_api.id(31857132982337059248)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31857533342198485626)
,p_parameter_id=>wwv_flow_api.id(31857104985703429125)
,p_process_id=>wwv_flow_api.id(31857405362705485614)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31857105291628429125)
,p_ws_opers_id=>wwv_flow_api.id(31857101946919429120)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/president
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31864020803531716026)
,p_name=>'President'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31864021030149716027)
,p_ws_id=>wwv_flow_api.id(31864020803531716026)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864021319751716028)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864250251222099903)
,p_parameter_id=>wwv_flow_api.id(31864021319751716028)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865165148975188961)
,p_parameter_id=>wwv_flow_api.id(31864021319751716028)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864021644825716028)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864251063906099904)
,p_parameter_id=>wwv_flow_api.id(31864021644825716028)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865165981452188963)
,p_parameter_id=>wwv_flow_api.id(31864021644825716028)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864021911464716028)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864251885065099905)
,p_parameter_id=>wwv_flow_api.id(31864021911464716028)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865166701988188963)
,p_parameter_id=>wwv_flow_api.id(31864021911464716028)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864022263514716028)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864252614730099906)
,p_parameter_id=>wwv_flow_api.id(31864022263514716028)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865167596486188964)
,p_parameter_id=>wwv_flow_api.id(31864022263514716028)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864022561033716029)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864253428090099907)
,p_parameter_id=>wwv_flow_api.id(31864022561033716029)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865168386632188965)
,p_parameter_id=>wwv_flow_api.id(31864022561033716029)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864022871538716029)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'bonous'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864254284365099908)
,p_parameter_id=>wwv_flow_api.id(31864022871538716029)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_BONOUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865169169853188966)
,p_parameter_id=>wwv_flow_api.id(31864022871538716029)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_BONOUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864023137466716029)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864255077334099909)
,p_parameter_id=>wwv_flow_api.id(31864023137466716029)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865169946446188966)
,p_parameter_id=>wwv_flow_api.id(31864023137466716029)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864023496654716029)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864255859418099910)
,p_parameter_id=>wwv_flow_api.id(31864023496654716029)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865170706640188967)
,p_parameter_id=>wwv_flow_api.id(31864023496654716029)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864023762988716030)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864256677535099911)
,p_parameter_id=>wwv_flow_api.id(31864023762988716030)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865171597138188968)
,p_parameter_id=>wwv_flow_api.id(31864023762988716030)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864024080568716030)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864257376491099911)
,p_parameter_id=>wwv_flow_api.id(31864024080568716030)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865172344772188968)
,p_parameter_id=>wwv_flow_api.id(31864024080568716030)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864024331234716030)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864258132451099912)
,p_parameter_id=>wwv_flow_api.id(31864024331234716030)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865173159820188969)
,p_parameter_id=>wwv_flow_api.id(31864024331234716030)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864024662060716031)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864258944583099913)
,p_parameter_id=>wwv_flow_api.id(31864024662060716031)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865173960382188970)
,p_parameter_id=>wwv_flow_api.id(31864024662060716031)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864024935151716031)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864259769364099913)
,p_parameter_id=>wwv_flow_api.id(31864024935151716031)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865174770554188971)
,p_parameter_id=>wwv_flow_api.id(31864024935151716031)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864025228745716031)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864260567287099914)
,p_parameter_id=>wwv_flow_api.id(31864025228745716031)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865175525367188972)
,p_parameter_id=>wwv_flow_api.id(31864025228745716031)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864025560090716032)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864261363092099915)
,p_parameter_id=>wwv_flow_api.id(31864025560090716032)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865176320997188972)
,p_parameter_id=>wwv_flow_api.id(31864025560090716032)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864025805430716032)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864262144631099916)
,p_parameter_id=>wwv_flow_api.id(31864025805430716032)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865177184645188973)
,p_parameter_id=>wwv_flow_api.id(31864025805430716032)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864026177402716032)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864262947190099917)
,p_parameter_id=>wwv_flow_api.id(31864026177402716032)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865177992883188974)
,p_parameter_id=>wwv_flow_api.id(31864026177402716032)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864026443649716032)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864263765487099918)
,p_parameter_id=>wwv_flow_api.id(31864026443649716032)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865178700911188974)
,p_parameter_id=>wwv_flow_api.id(31864026443649716032)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864026778235716033)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31864264528194099918)
,p_parameter_id=>wwv_flow_api.id(31864026778235716033)
,p_process_id=>wwv_flow_api.id(31864249401698099900)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31865179538029188975)
,p_parameter_id=>wwv_flow_api.id(31864026778235716033)
,p_process_id=>wwv_flow_api.id(31865164382602188959)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31864027045108716033)
,p_ws_opers_id=>wwv_flow_api.id(31864021030149716027)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31866584170323934475)
,p_name=>'Project-Employee'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31866584374343934476)
,p_ws_id=>wwv_flow_api.id(31866584170323934475)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866584508510934503)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866747598929315476)
,p_parameter_id=>wwv_flow_api.id(31866584508510934503)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866584895448934503)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866748320124315478)
,p_parameter_id=>wwv_flow_api.id(31866584895448934503)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866585141527934504)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866749075627315479)
,p_parameter_id=>wwv_flow_api.id(31866585141527934504)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866585452702934504)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866749800241315479)
,p_parameter_id=>wwv_flow_api.id(31866585452702934504)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866585716026934504)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866750646876315480)
,p_parameter_id=>wwv_flow_api.id(31866585716026934504)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866586094369934504)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866751418575315481)
,p_parameter_id=>wwv_flow_api.id(31866586094369934504)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866586384063934505)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866752227962315482)
,p_parameter_id=>wwv_flow_api.id(31866586384063934505)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866586651912934506)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866753074950315482)
,p_parameter_id=>wwv_flow_api.id(31866586651912934506)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866586900047934506)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866753819989315483)
,p_parameter_id=>wwv_flow_api.id(31866586900047934506)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866587219287934506)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866754695781315484)
,p_parameter_id=>wwv_flow_api.id(31866587219287934506)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866587568473934506)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866755420658315485)
,p_parameter_id=>wwv_flow_api.id(31866587568473934506)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866587859601934506)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866756286569315486)
,p_parameter_id=>wwv_flow_api.id(31866587859601934506)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866588153983934507)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866757023483315487)
,p_parameter_id=>wwv_flow_api.id(31866588153983934507)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866588483895934507)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866757864723315488)
,p_parameter_id=>wwv_flow_api.id(31866588483895934507)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866588719112934507)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866758602165315489)
,p_parameter_id=>wwv_flow_api.id(31866588719112934507)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866589077999934507)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866759400889315489)
,p_parameter_id=>wwv_flow_api.id(31866589077999934507)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866589335495934508)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866760253853315490)
,p_parameter_id=>wwv_flow_api.id(31866589335495934508)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866589600144934508)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31866761092630315491)
,p_parameter_id=>wwv_flow_api.id(31866589600144934508)
,p_process_id=>wwv_flow_api.id(31866746707282315473)
,p_map_type=>'ITEM'
,p_parm_value=>'P14_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31866589919546934509)
,p_ws_opers_id=>wwv_flow_api.id(31866584374343934476)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31868190219251085746)
,p_name=>'Manager'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31868190497608085748)
,p_ws_id=>wwv_flow_api.id(31868190219251085746)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868190757031085752)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868283212462473665)
,p_parameter_id=>wwv_flow_api.id(31868190757031085752)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868191010497085752)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868284004030473665)
,p_parameter_id=>wwv_flow_api.id(31868191010497085752)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868191310026085753)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868284816405473666)
,p_parameter_id=>wwv_flow_api.id(31868191310026085753)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868191620000085753)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868285651969473667)
,p_parameter_id=>wwv_flow_api.id(31868191620000085753)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868191910065085753)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868286423452473667)
,p_parameter_id=>wwv_flow_api.id(31868191910065085753)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868192249642085753)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868287276274473668)
,p_parameter_id=>wwv_flow_api.id(31868192249642085753)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868192506573085754)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868288044131473669)
,p_parameter_id=>wwv_flow_api.id(31868192506573085754)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868192832923085754)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868288872114473670)
,p_parameter_id=>wwv_flow_api.id(31868192832923085754)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868193181197085754)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868289612112473670)
,p_parameter_id=>wwv_flow_api.id(31868193181197085754)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868193497721085754)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868290770781473671)
,p_parameter_id=>wwv_flow_api.id(31868193497721085754)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868193781598085754)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868291705538473672)
,p_parameter_id=>wwv_flow_api.id(31868193781598085754)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868194023627085755)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868292500539473673)
,p_parameter_id=>wwv_flow_api.id(31868194023627085755)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868194322990085755)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868293393199473674)
,p_parameter_id=>wwv_flow_api.id(31868194322990085755)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868194646603085755)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868294144905473675)
,p_parameter_id=>wwv_flow_api.id(31868194646603085755)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868194972108085755)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868294964272473676)
,p_parameter_id=>wwv_flow_api.id(31868194972108085755)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868195226696085756)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868295787195473677)
,p_parameter_id=>wwv_flow_api.id(31868195226696085756)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868195553820085756)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868296515187473677)
,p_parameter_id=>wwv_flow_api.id(31868195553820085756)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868195882504085758)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31868297382453473678)
,p_parameter_id=>wwv_flow_api.id(31868195882504085758)
,p_process_id=>wwv_flow_api.id(31868282494228473660)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31868196198114085758)
,p_ws_opers_id=>wwv_flow_api.id(31868190497608085748)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/interimmanager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31869754819147641021)
,p_name=>'interimmanager'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31869755052184641022)
,p_ws_id=>wwv_flow_api.id(31869754819147641021)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869755365074641024)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869822660071269310)
,p_parameter_id=>wwv_flow_api.id(31869755365074641024)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869755627453641026)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869823426257269312)
,p_parameter_id=>wwv_flow_api.id(31869755627453641026)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869755952178641026)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869824573303269312)
,p_parameter_id=>wwv_flow_api.id(31869755952178641026)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869756294296641038)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869826069367269313)
,p_parameter_id=>wwv_flow_api.id(31869756294296641038)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869756538446641044)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869826870594269314)
,p_parameter_id=>wwv_flow_api.id(31869756538446641044)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869756896580641044)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869827646239269314)
,p_parameter_id=>wwv_flow_api.id(31869756896580641044)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869757165487641045)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869828447972269315)
,p_parameter_id=>wwv_flow_api.id(31869757165487641045)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869757483201641045)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869829298369269316)
,p_parameter_id=>wwv_flow_api.id(31869757483201641045)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869757788941641046)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869830091930269316)
,p_parameter_id=>wwv_flow_api.id(31869757788941641046)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869758078066641046)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869830850603269318)
,p_parameter_id=>wwv_flow_api.id(31869758078066641046)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869758329473641046)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869831606365269319)
,p_parameter_id=>wwv_flow_api.id(31869758329473641046)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869758616580641047)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869832489969269320)
,p_parameter_id=>wwv_flow_api.id(31869758616580641047)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869758969836641047)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869833283552269321)
,p_parameter_id=>wwv_flow_api.id(31869758969836641047)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869759219290641047)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869834052390269321)
,p_parameter_id=>wwv_flow_api.id(31869759219290641047)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869759537065641047)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869834865547269322)
,p_parameter_id=>wwv_flow_api.id(31869759537065641047)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869759869099641048)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869835621858269323)
,p_parameter_id=>wwv_flow_api.id(31869759869099641048)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869760180141641049)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869836499849269323)
,p_parameter_id=>wwv_flow_api.id(31869760180141641049)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869760442944641050)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31869837227944269324)
,p_parameter_id=>wwv_flow_api.id(31869760442944641050)
,p_process_id=>wwv_flow_api.id(31869821826404269307)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31869760779830641050)
,p_ws_opers_id=>wwv_flow_api.id(31869755052184641022)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/prevousemployee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31870656441315351899)
,p_name=>'prevousEmployee'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31870656662622351900)
,p_ws_id=>wwv_flow_api.id(31870656441315351899)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870656950443352376)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870689050267356904)
,p_parameter_id=>wwv_flow_api.id(31870656950443352376)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870657169415352430)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870689830338356907)
,p_parameter_id=>wwv_flow_api.id(31870657169415352430)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870657441843352430)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870690643874356908)
,p_parameter_id=>wwv_flow_api.id(31870657441843352430)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870657722899352431)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870691494680356909)
,p_parameter_id=>wwv_flow_api.id(31870657722899352431)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870658047781352431)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870692210748356909)
,p_parameter_id=>wwv_flow_api.id(31870658047781352431)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870658363222352431)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870693052398356910)
,p_parameter_id=>wwv_flow_api.id(31870658363222352431)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870658653407352431)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870693802368356911)
,p_parameter_id=>wwv_flow_api.id(31870658653407352431)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870658902971352431)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'isfired'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870694661233356911)
,p_parameter_id=>wwv_flow_api.id(31870658902971352431)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ISFIRED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870659260802352432)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870695498573356912)
,p_parameter_id=>wwv_flow_api.id(31870659260802352432)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870659530192352432)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870696149761356912)
,p_parameter_id=>wwv_flow_api.id(31870659530192352432)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870659838731352432)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870696998813356913)
,p_parameter_id=>wwv_flow_api.id(31870659838731352432)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870660175089352432)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870697738355356914)
,p_parameter_id=>wwv_flow_api.id(31870660175089352432)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870660480020352432)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870698570045356915)
,p_parameter_id=>wwv_flow_api.id(31870660480020352432)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870660750041352433)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870699388705356915)
,p_parameter_id=>wwv_flow_api.id(31870660750041352433)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870661026439352433)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870700110626356916)
,p_parameter_id=>wwv_flow_api.id(31870661026439352433)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870661330840352433)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870700944345356917)
,p_parameter_id=>wwv_flow_api.id(31870661330840352433)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870661697267352535)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31870701760109356917)
,p_parameter_id=>wwv_flow_api.id(31870661697267352535)
,p_process_id=>wwv_flow_api.id(31870687921054356897)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31870661858916352536)
,p_ws_opers_id=>wwv_flow_api.id(31870656662622351900)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31871320981298789849)
,p_name=>'Project'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31871321122342789851)
,p_ws_id=>wwv_flow_api.id(31871320981298789849)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871321420385789853)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871370043589418224)
,p_parameter_id=>wwv_flow_api.id(31871321420385789853)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871696694052836520)
,p_parameter_id=>wwv_flow_api.id(31871321420385789853)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871321785131789854)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871370812357418225)
,p_parameter_id=>wwv_flow_api.id(31871321785131789854)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871697465436836521)
,p_parameter_id=>wwv_flow_api.id(31871321785131789854)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871322029217789855)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871371641443418226)
,p_parameter_id=>wwv_flow_api.id(31871322029217789855)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871738256233836522)
,p_parameter_id=>wwv_flow_api.id(31871322029217789855)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871322396763789855)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871372443358418227)
,p_parameter_id=>wwv_flow_api.id(31871322396763789855)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871739075118836523)
,p_parameter_id=>wwv_flow_api.id(31871322396763789855)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871322698130789855)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871373274541418228)
,p_parameter_id=>wwv_flow_api.id(31871322698130789855)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871739821962836526)
,p_parameter_id=>wwv_flow_api.id(31871322698130789855)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871322986951789856)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871374061642418228)
,p_parameter_id=>wwv_flow_api.id(31871322986951789856)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871740632781836526)
,p_parameter_id=>wwv_flow_api.id(31871322986951789856)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871323264832789856)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871374883740418229)
,p_parameter_id=>wwv_flow_api.id(31871323264832789856)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871741440541836527)
,p_parameter_id=>wwv_flow_api.id(31871323264832789856)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871323594059789856)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871375693950418230)
,p_parameter_id=>wwv_flow_api.id(31871323594059789856)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871742282158836528)
,p_parameter_id=>wwv_flow_api.id(31871323594059789856)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871323894542789857)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871376439151418230)
,p_parameter_id=>wwv_flow_api.id(31871323894542789857)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871743086264836530)
,p_parameter_id=>wwv_flow_api.id(31871323894542789857)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871324100218789857)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871377265779418231)
,p_parameter_id=>wwv_flow_api.id(31871324100218789857)
,p_process_id=>wwv_flow_api.id(31871369215261418221)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31871743871182836530)
,p_parameter_id=>wwv_flow_api.id(31871324100218789857)
,p_process_id=>wwv_flow_api.id(31871695823154836516)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31871324420660789858)
,p_ws_opers_id=>wwv_flow_api.id(31871321122342789851)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/currentproject
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31872044721236521255)
,p_name=>'CurrentProject'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31872044984988521256)
,p_ws_id=>wwv_flow_api.id(31872044721236521255)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872045263083521258)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872147123849916459)
,p_parameter_id=>wwv_flow_api.id(31872045263083521258)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872045515585521259)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872147947833916461)
,p_parameter_id=>wwv_flow_api.id(31872045515585521259)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872045832159521259)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872158727192916462)
,p_parameter_id=>wwv_flow_api.id(31872045832159521259)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872046132337521259)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872159592687916463)
,p_parameter_id=>wwv_flow_api.id(31872046132337521259)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872046448760521259)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872160377208916464)
,p_parameter_id=>wwv_flow_api.id(31872046448760521259)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872046738551521260)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872161188608916465)
,p_parameter_id=>wwv_flow_api.id(31872046738551521260)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872047093491521260)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872161968975916465)
,p_parameter_id=>wwv_flow_api.id(31872047093491521260)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872047300915521260)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'projectactive'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872162708394916466)
,p_parameter_id=>wwv_flow_api.id(31872047300915521260)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PROJECTACTIVE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872047639485521260)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872163538098916467)
,p_parameter_id=>wwv_flow_api.id(31872047639485521260)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872047909603521260)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872164364984916467)
,p_parameter_id=>wwv_flow_api.id(31872047909603521260)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872068254467521262)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872165139825916468)
,p_parameter_id=>wwv_flow_api.id(31872068254467521262)
,p_process_id=>wwv_flow_api.id(31872146395037916456)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872068511586521262)
,p_ws_opers_id=>wwv_flow_api.id(31872044984988521256)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previousproject
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31872118749207533582)
,p_name=>'previousProject'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31872118960859533582)
,p_ws_id=>wwv_flow_api.id(31872118749207533582)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872119210102533585)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872698615019630618)
,p_parameter_id=>wwv_flow_api.id(31872119210102533585)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872119503879533585)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872699409095630622)
,p_parameter_id=>wwv_flow_api.id(31872119503879533585)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872119899589533585)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872700240773630623)
,p_parameter_id=>wwv_flow_api.id(31872119899589533585)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872120167462533586)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872701063324630623)
,p_parameter_id=>wwv_flow_api.id(31872120167462533586)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872120478189533586)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872701818441630624)
,p_parameter_id=>wwv_flow_api.id(31872120478189533586)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872120732963533586)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872702685624630625)
,p_parameter_id=>wwv_flow_api.id(31872120732963533586)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872121000792533586)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872703483698630625)
,p_parameter_id=>wwv_flow_api.id(31872121000792533586)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872121363666533586)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'enddatemonth'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872704298081630628)
,p_parameter_id=>wwv_flow_api.id(31872121363666533586)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ENDDATEMONTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872121623062533587)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'enddateday'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872705022704630628)
,p_parameter_id=>wwv_flow_api.id(31872121623062533587)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ENDDATEDAY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872121948085533587)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'enddateyear'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872705831454630629)
,p_parameter_id=>wwv_flow_api.id(31872121948085533587)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ENDDATEYEAR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872122264802533587)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'estpersonhours'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872706607335630630)
,p_parameter_id=>wwv_flow_api.id(31872122264802533587)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ESTPERSONHOURS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872122597746533588)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872707441430630631)
,p_parameter_id=>wwv_flow_api.id(31872122597746533588)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872122875862533589)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872708268502630632)
,p_parameter_id=>wwv_flow_api.id(31872122875862533589)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872123182747533589)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31872709024282630632)
,p_parameter_id=>wwv_flow_api.id(31872123182747533589)
,p_process_id=>wwv_flow_api.id(31872697827828630616)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31872123431691533589)
,p_ws_opers_id=>wwv_flow_api.id(31872118960859533582)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(61665655352942619698)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(61665655595753619702)
,p_ws_id=>wwv_flow_api.id(61665655352942619698)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665655903247619706)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667348853304484908)
,p_parameter_id=>wwv_flow_api.id(61665655903247619706)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798094036680166931)
,p_parameter_id=>wwv_flow_api.id(61665655903247619706)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665656199110619707)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665746587173630672)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667335293336484896)
,p_parameter_id=>wwv_flow_api.id(61665746587173630672)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798087332332166924)
,p_parameter_id=>wwv_flow_api.id(61665746587173630672)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665746866557630673)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667336070997484896)
,p_parameter_id=>wwv_flow_api.id(61665746866557630673)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798087639216166926)
,p_parameter_id=>wwv_flow_api.id(61665746866557630673)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665747163212630673)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667336866811484897)
,p_parameter_id=>wwv_flow_api.id(61665747163212630673)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798088067057166926)
,p_parameter_id=>wwv_flow_api.id(61665747163212630673)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665747442666630673)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667337717452484898)
,p_parameter_id=>wwv_flow_api.id(61665747442666630673)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798088510298166926)
,p_parameter_id=>wwv_flow_api.id(61665747442666630673)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665747753162630674)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667338480461484898)
,p_parameter_id=>wwv_flow_api.id(61665747753162630674)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798088934352166926)
,p_parameter_id=>wwv_flow_api.id(61665747753162630674)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665748132068630674)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667339273467484899)
,p_parameter_id=>wwv_flow_api.id(61665748132068630674)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798089289038166927)
,p_parameter_id=>wwv_flow_api.id(61665748132068630674)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61665748370942630674)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667340056398484900)
,p_parameter_id=>wwv_flow_api.id(61665748370942630674)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798089722159166927)
,p_parameter_id=>wwv_flow_api.id(61665748370942630674)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666008555856287319)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667340843474484901)
,p_parameter_id=>wwv_flow_api.id(61666008555856287319)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798090038575166928)
,p_parameter_id=>wwv_flow_api.id(61666008555856287319)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666395243036716413)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667341726115484901)
,p_parameter_id=>wwv_flow_api.id(61666395243036716413)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798090478129166929)
,p_parameter_id=>wwv_flow_api.id(61666395243036716413)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666395581813716413)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667342483330484902)
,p_parameter_id=>wwv_flow_api.id(61666395581813716413)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798090891347166929)
,p_parameter_id=>wwv_flow_api.id(61666395581813716413)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666395921426716414)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667343299181484903)
,p_parameter_id=>wwv_flow_api.id(61666395921426716414)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798091297239166929)
,p_parameter_id=>wwv_flow_api.id(61666395921426716414)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666396191007716414)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667344055462484904)
,p_parameter_id=>wwv_flow_api.id(61666396191007716414)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798091642891166930)
,p_parameter_id=>wwv_flow_api.id(61666396191007716414)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666396454754716414)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667344870836484904)
,p_parameter_id=>wwv_flow_api.id(61666396454754716414)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798092074702166930)
,p_parameter_id=>wwv_flow_api.id(61666396454754716414)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666396755084716414)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667345653716484905)
,p_parameter_id=>wwv_flow_api.id(61666396755084716414)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798092481473166930)
,p_parameter_id=>wwv_flow_api.id(61666396755084716414)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666397108107716415)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667346524162484906)
,p_parameter_id=>wwv_flow_api.id(61666397108107716415)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798092871542166930)
,p_parameter_id=>wwv_flow_api.id(61666397108107716415)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666397362117716415)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667347259025484906)
,p_parameter_id=>wwv_flow_api.id(61666397362117716415)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798093277030166931)
,p_parameter_id=>wwv_flow_api.id(61666397362117716415)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61666397733436716416)
,p_ws_opers_id=>wwv_flow_api.id(61665655595753619702)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61667348069408484907)
,p_parameter_id=>wwv_flow_api.id(61666397733436716416)
,p_process_id=>wwv_flow_api.id(61667334438740484894)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61798093689522166931)
,p_parameter_id=>wwv_flow_api.id(61666397733436716416)
,p_process_id=>wwv_flow_api.id(61798086917338166923)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USCITIZEN'
);
end;
/
prompt --application/shared_components/logic/webservices/person
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(91003451826980284221)
,p_name=>'Person'
,p_url=>'aevum.cs.utexas.edu:8060/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(91003452013989284227)
,p_ws_id=>wwv_flow_api.id(91003451826980284221)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(61558066885601879548)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661548757655087401)
,p_parameter_id=>wwv_flow_api.id(61558066885601879548)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003452394261284230)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003455419400303261)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661549592850087402)
,p_parameter_id=>wwv_flow_api.id(91003455419400303261)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003455712922303261)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661550368713087403)
,p_parameter_id=>wwv_flow_api.id(91003455712922303261)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003456096204303262)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661551159851087404)
,p_parameter_id=>wwv_flow_api.id(91003456096204303262)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003456402767303262)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661552031662087404)
,p_parameter_id=>wwv_flow_api.id(91003456402767303262)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003456632789303262)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661552742302087405)
,p_parameter_id=>wwv_flow_api.id(91003456632789303262)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003456921838303263)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661553562720087406)
,p_parameter_id=>wwv_flow_api.id(91003456921838303263)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003457217665303263)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661554395984087407)
,p_parameter_id=>wwv_flow_api.id(91003457217665303263)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(91003475719547681781)
,p_ws_opers_id=>wwv_flow_api.id(91003452013989284227)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(61661555154941087407)
,p_parameter_id=>wwv_flow_api.id(91003475719547681781)
,p_process_id=>wwv_flow_api.id(61661547963667087398)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(31908589019630775592)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
