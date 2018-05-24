.cms-menu__header {
  <% if $hasAdminStyle('ColorBackgroundMenuHeader') %>background-color: {$getAdminStyle('ColorBackgroundMenuHeader')};<% end_if %>
}

.cms-menu__header .cms-sitename {
  <% if $hasAdminStyle('ColorBorderBottomSiteName') %>border-bottom-color: {$getAdminStyle('ColorBorderBottomSiteName')};<% end_if %>
}

.cms-menu__header .cms-sitename .cms-sitename__link {
  <% if $hasAdminStyle('ColorIconLogo') %>color: {$getAdminStyle('ColorIconLogo')};<% end_if %>
}

.cms-menu__header .cms-sitename .cms-sitename__title {
  <% if $hasAdminStyle('ColorForegroundSiteName') %>color: {$getAdminStyle('ColorForegroundSiteName')};<% end_if %>
}

.cms-menu__header .cms-login-status .cms-login-status__profile-link span {
  <% if $hasAdminStyle('ColorForegroundProfile') %>color: {$getAdminStyle('ColorForegroundProfile')};<% end_if %>
}

.cms-menu__header .cms-login-status .cms-login-status__profile-link {
  <% if $hasAdminStyle('ColorIconProfile') %>color: {$getAdminStyle('ColorIconProfile')};<% end_if %>
}

.cms-menu__header .cms-login-status .cms-login-status__logout-link {
  <% if $hasAdminStyle('ColorIconLogout') %>color: {$getAdminStyle('ColorIconLogout')};<% end_if %>
}

.cms-menu__header .cms-sitename:focus,
.cms-menu__header .cms-sitename:hover,
.cms-menu__header .cms-login-status .cms-login-status__profile-link:focus,
.cms-menu__header .cms-login-status .cms-login-status__profile-link:hover,
.cms-menu__header .cms-login-status .cms-login-status__logout-link:focus,
.cms-menu__header .cms-login-status .cms-login-status__logout-link:hover {
  <% if $hasAdminStyle('ColorBackgroundHoverMenuHeader') %>background-color: {$getAdminStyle('ColorBackgroundHoverMenuHeader')};<% end_if %>
}

.cms-menu {
  <% if $hasAdminStyle('ColorBackgroundMenu') %>background-color: {$getAdminStyle('ColorBackgroundMenu')};<% end_if %>
}

.cms-menu__list li a {
  <% if $hasAdminStyle('ColorForegroundMenuItem') %>color: {$getAdminStyle('ColorForegroundMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundMenuItem')};<% end_if %>
}

.cms-menu__list li a:active,
.cms-menu__list li a:focus,
.cms-menu__list li a:hover {
  <% if $hasAdminStyle('ColorForegroundHoverMenuItem') %>color: {$getAdminStyle('ColorForegroundHoverMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundHoverMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundHoverMenuItem')};<% end_if %>
}

.cms-menu__list li.current a {
  <% if $hasAdminStyle('ColorForegroundCurrentMenuItem') %>color: {$getAdminStyle('ColorForegroundCurrentMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundCurrentMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundCurrentMenuItem')};<% end_if %>
}

.cms-menu__list li a .menu__icon {
  <% if $hasAdminStyle('ColorIconMenuItem') %>color: {$getAdminStyle('ColorIconMenuItem')};<% end_if %>
}

.cms-menu__list li a .text::after, #Menu-Help .text::after {
  <% if $hasAdminStyle('ColorMenuItemAfterText') %>color: {$getAdminStyle('ColorMenuItemAfterText')};<% end_if %>
}

.cms-menu__list li a:active .menu__icon,
.cms-menu__list li a:focus .menu__icon,
.cms-menu__list li a:hover .menu__icon {
  <% if $hasAdminStyle('ColorIconHoverMenuItem') %>color: {$getAdminStyle('ColorIconHoverMenuItem')};<% end_if %>
}

.cms-menu__list li.current a .menu__icon {
  <% if $hasAdminStyle('ColorIconCurrentMenuItem') %>color: {$getAdminStyle('ColorIconCurrentMenuItem')};<% end_if %>
}

.cms-menu .cms-panel-content,
.cms-menu .cms-panel-toggle,
.cms-menu .cms-menu__list,
.cms-menu__list li a {
  <% if $getAdminStyle('ColorBorderRightMenuHide') %>
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
  <% else_if $hasAdminStyle('ColorBorderRightMenu') %>
    -webkit-box-shadow: inset -1px 0 0 {$getAdminStyle('ColorBorderRightMenu')};
    -moz-box-shadow: inset -1px 0 0 {$getAdminStyle('ColorBorderRightMenu')};
    box-shadow: inset -1px 0 0 {$getAdminStyle('ColorBorderRightMenu')};
  <% end_if %>
}

.cms-menu .cms-panel-toggle {
  <% if $hasAdminStyle('ColorBackgroundToggle') %>background-color: {$getAdminStyle('ColorBackgroundToggle')};<% end_if %>
  <% if $hasAdminStyle('ColorBorderTopToggle') %>border-top-color: {$getAdminStyle('ColorBorderTopToggle')};<% end_if %>
}

.cms-panel .cms-panel-toggle .toggle-collapse span,
.cms-panel .cms-panel-toggle .toggle-expand span,
.cms-panel .cms-panel-toggle .toggle-collapse,
.cms-panel .cms-panel-toggle .toggle-expand {
  <% if $hasAdminStyle('ColorToggleCollapse') %>color: {$getAdminStyle('ColorToggleCollapse')};<% end_if %>
}

.cms-menu .sticky-status-indicator,
.cms-menu .sticky-toggle {
  <% if $hasAdminStyle('ColorToggleStatus') %>color: {$getAdminStyle('ColorToggleStatus')};<% end_if %>
}

.form-control:focus,
.field input.text:focus,
.field select:focus,
.field textarea:focus,
.field .chosen-drop,
.field .chosen-container-active .chosen-choices,
.field .chosen-container-active .chosen-single,
.is-focused:not(.is-open) > .Select-control,
.is-open > .Select-control,
.Select-menu-outer {
  <% if $hasAdminStyle('ColorBorderFocusField') %>border-color: {$getAdminStyle('ColorBorderFocusField')};<% end_if %>
}

<% if $HideDisabledPageTypes %>
  .cms-add-form .radio.disabled {
    display: none;
  }
<% end_if %>
