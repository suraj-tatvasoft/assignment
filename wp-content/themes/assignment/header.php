<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package assignment
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
   <link rel="shortcut icon" href="<?php echo get_template_directory_uri();?>/assets/images/favicon.ico" type="image/x-icon" />
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>

<!-- HEADER -->
<nav class="navbar navbar-default navbar-fixed-top _ooredoo_website_header_">
   <div class="container _ooredoo_website_main_navbar_">
      <div class="navbar-header">
         <a href="<?php echo site_url();?>" class="navbar-brand">
            <img src="<?php echo get_template_directory_uri();?>/assets/images/logo.svg" alt="logo" height="34px">
         </a>

      </div>
   </div>
</nav>

<header class="search-header">
   <div class="container">
      <h2 class="title">Our <span>News</span></h2>
      <form action="<?php echo site_url();?>/" method="get">
          <input type="text" name="s" class="search-input" placeholder="Search..." id="search" value="<?php the_search_query(); ?>" />
       </form>
   </div>
</header>

<nav class="tabs">
   <a href="#" class="tabs__tab">Corporate</a>
   <a href="#" class="tabs__tab active">Consumer</a>
   <a href="#" class="tabs__tab">Business</a>
</nav>