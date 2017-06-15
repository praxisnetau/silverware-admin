.cms-logo-header {
  <% if $hasAdminStyle('ColorBackgroundLogo') %>background-color: {$getAdminStyle('ColorBackgroundLogo')};<% end_if %>
}

.cms-logo-header span {
  <% if $hasAdminStyle('ColorForegroundLogo') %>color: {$getAdminStyle('ColorForegroundLogo')};<% end_if %>
}

.cms-logo-header .cms-login-status .logout-link {
  <% if $hasAdminStyle('ColorLinkLogoIcon') %>color: {$getAdminStyle('ColorLinkLogoIcon')};<% end_if %>
}

.cms-logo-header span a {
  <% if $hasAdminStyle('ColorLinkLogo') %>color: {$getAdminStyle('ColorLinkLogo')};<% end_if %>
}

.cms-logo {
  <% if $hasAdminStyle('ColorBorderBottomLogo') %>border-bottom-color: {$getAdminStyle('ColorBorderBottomLogo')};<% end_if %>
}

.cms-menu {
  <% if $hasAdminStyle('ColorBackgroundMenu') %>background-color: {$getAdminStyle('ColorBackgroundMenu')};<% end_if %>
}

.cms-menu-list li a {
  <% if $hasAdminStyle('ColorForegroundMenuItem') %>color: {$getAdminStyle('ColorForegroundMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundMenuItem')};<% end_if %>
}

.cms-menu-list li a:active,
.cms-menu-list li a:focus,
.cms-menu-list li a:hover {
  <% if $hasAdminStyle('ColorForegroundHoverMenuItem') %>color: {$getAdminStyle('ColorForegroundHoverMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundHoverMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundHoverMenuItem')};<% end_if %>
}

.cms-menu-list li.current a {
  <% if $hasAdminStyle('ColorForegroundCurrentMenuItem') %>color: {$getAdminStyle('ColorForegroundCurrentMenuItem')};<% end_if %>
  <% if $hasAdminStyle('ColorBackgroundCurrentMenuItem') %>background-color: {$getAdminStyle('ColorBackgroundCurrentMenuItem')};<% end_if %>
}

.cms-menu-list li a .menu__icon {
  <% if $hasAdminStyle('ColorMenuItemIcon') %>color: {$getAdminStyle('ColorMenuItemIcon')};<% end_if %>
}

.cms-menu-list li a .text::after, #Menu-Help .text::after {
  <% if $hasAdminStyle('ColorMenuItemAfterText') %>color: {$getAdminStyle('ColorMenuItemAfterText')};<% end_if %>
}

.cms-menu-list li a:active .menu__icon,
.cms-menu-list li a:focus .menu__icon,
.cms-menu-list li a:hover .menu__icon {
  <% if $hasAdminStyle('ColorHoverMenuItemIcon') %>color: {$getAdminStyle('ColorHoverMenuItemIcon')};<% end_if %>
}

.cms-menu-list li.current a .menu__icon {
  <% if $hasAdminStyle('ColorCurrentMenuItemIcon') %>color: {$getAdminStyle('ColorCurrentMenuItemIcon')};<% end_if %>
}

.cms-menu .cms-panel-content,
.cms-menu .cms-panel-toggle,
.cms-menu .cms-menu-list,
.cms-menu-list li a {
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
