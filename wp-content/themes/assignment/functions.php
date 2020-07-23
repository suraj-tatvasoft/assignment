<?php
/**
 * assignment functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package assignment
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'assignment_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function assignment_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on assignment, use a find and replace
		 * to change 'assignment' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'assignment', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(
			array(
				'menu-1' => esc_html__( 'Primary', 'assignment' ),
			)
		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Set up the WordPress core custom background feature.
		add_theme_support(
			'custom-background',
			apply_filters(
				'assignment_custom_background_args',
				array(
					'default-color' => 'ffffff',
					'default-image' => '',
				)
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			)
		);
	}
endif;
add_action( 'after_setup_theme', 'assignment_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function assignment_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'assignment_content_width', 640 );
}
add_action( 'after_setup_theme', 'assignment_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function assignment_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'assignment' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'assignment' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);

	register_sidebar(
		array(
			'name'          => esc_html__( 'Footer Navigation', 'assignment' ),
			'id'            => 'footer-navigation',
			'description'   => esc_html__( 'Add widgets here.', 'assignment' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h4>',
			'after_title'   => '</h4>',
		)
	);
}
add_action( 'widgets_init', 'assignment_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function assignment_scripts() {
	wp_enqueue_style( 'assignment-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'assignment-style', 'rtl', 'replace' );

	wp_enqueue_script( 'assignment-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	wp_enqueue_style( 'bootstrap-style', get_template_directory_uri().'/assets/css/bootstrap.min.css', array(), _S_VERSION ,'all');
	wp_enqueue_style( 'swiper-css', get_template_directory_uri().'/assets/css/swiper.css', array(), _S_VERSION ,'all');
	wp_enqueue_style( 'font-awesome-css', get_template_directory_uri().'/assets/css/font-awesome.min.css', array(), _S_VERSION ,'all');
	wp_enqueue_style( 'press-release-css', get_template_directory_uri().'/assets/css/press-release.en.css', array(), _S_VERSION ,'all');
	wp_enqueue_style( 'press-release-ar-css', get_template_directory_uri().'/assets/css/press-release.ar.css', array(), _S_VERSION ,'all');

	wp_enqueue_script('jquery');
	wp_enqueue_script( 'assignment-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'bootstrap-js', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'swiper-js', get_template_directory_uri() . '/assets/js/swiper.min.js', array(), _S_VERSION, true );
	wp_enqueue_script( 'custom-js', get_template_directory_uri() . '/assets/js/custom.js', array(), _S_VERSION, true );
	
}
add_action( 'wp_enqueue_scripts', 'assignment_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';


/**
 * Admin Bar Relaed Filters
 */
//add_filter('show_admin_bar', '__return_false');
add_filter( 'option_show_avatars', '__return_false' );


// remove junk from head
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'feed_links', 2);
remove_action('wp_head', 'index_rel_link');
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'feed_links_extra', 3);
remove_action('wp_head', 'start_post_rel_link', 10, 0);
remove_action('wp_head', 'parent_post_rel_link', 10, 0);
remove_action('wp_head', 'adjacent_posts_rel_link', 10, 0);


// Disable support for comments and trackbacks in post types
function disable_comments_post_types_support() {
	$post_types = get_post_types();
	foreach ($post_types as $post_type) {
		if(post_type_supports($post_type, 'comments')) {
			remove_post_type_support($post_type, 'comments');
			remove_post_type_support($post_type, 'trackbacks');
		}
	}
}
add_action('admin_init', 'disable_comments_post_types_support');

// Close comments on the front-end
function disable_comments_status() {
	return false;
}
add_filter('comments_open', 'disable_comments_status', 20, 2);
add_filter('pings_open', 'disable_comments_status', 20, 2);


// Hide existing comments
function disable_comments_hide_existing_comments($comments) {
	$comments = array();
	return $comments;
}
add_filter('comments_array', 'disable_comments_hide_existing_comments', 10, 2);


// Remove comments page in menu
function disable_comments_admin_menu() {
	remove_menu_page('edit-comments.php');
}
add_action('admin_menu', 'disable_comments_admin_menu');

// Redirect any user trying to access comments page
function disable_comments_admin_menu_redirect() {
	global $pagenow;
	if ($pagenow === 'edit-comments.php') {
		wp_redirect(admin_url()); exit;
	}
}
add_action('admin_init', 'disable_comments_admin_menu_redirect');

// Remove comments metabox from dashboard
function disable_comments_dashboard() {
	remove_meta_box('dashboard_recent_comments', 'dashboard', 'normal');
}
add_action('admin_init', 'disable_comments_dashboard');

// Remove comments links from admin bar
function disable_comments_admin_bar() {
	if (is_admin_bar_showing()) {
		remove_action('admin_bar_menu', 'wp_admin_bar_comments_menu', 60);
	}
}
add_action('init', 'disable_comments_admin_bar');


/**
 * Add Custom Class for landing pag
 */
add_filter( 'body_class', 'custom_class' );
function custom_class( $classes ) {
	
	if(is_front_page()) {
		$classes[] = '_ooredoo_website_ _homepage_';
	}
	return $classes;
}


/**
 * Landing Page HTML FUnction
 */
Function landing_html($record = 10){

	$landing_array = array(
        'post_type' => 'post',
        'post_status' => 'publish',
        'posts_per_page' => $record,
        'orderby' => 'date',
		'order' => 'desc',
		'meta_query' => array(
			'relation' => 'AND',
				array(
					'key' => 'category_selection',
					'value' => array('business','consumer','corporate'),
					'compare' => 'IN'
				)
			)
		);
	$query = new WP_Query( $landing_array );

	if ( $query->have_posts()):
		while ( $query->have_posts() ) : $query->the_post();
		$CID 				= get_the_ID();
		$category_selection	= get_field('category_selection',$CID);
		$empty_image 		= get_template_directory_uri().'/assets/images/sample-image.jpg';
		$featured_img_url 	= get_the_post_thumbnail_url($CID,'full');
		$featured_image 	= !empty($featured_img_url) ? $featured_img_url : $empty_image;
		$post_title			= get_the_title($CID);
		$permalink			= get_the_permalink($CID);
		$posttags 			= get_the_tags($CID);
		ob_start();
		$html="";?>
		 <div class="col-xl-6" >
			<article class="press-post press-post--<?php echo strtolower($category_selection);?>">
				<div class="press-post__image" style="background-image: url('<?php echo $featured_image;?>')"></div>
				<div class="press-post__data">
				<div class="press-post__meta">
					<span>
						<?php if(!empty($category_selection)): ?>  
							<span class="category"><?php echo $category_selection;?> | </span>
						<?php endif;?>
						<span class="date"><?php echo get_the_date();?></span>
					</span>

				</div>
				<div class="press-post__title">
					<a href="<?php echo $permalink;?>"><?php echo $post_title;?></a>
					<?php if(!empty($posttags)): ?>  
						<div class="tag-line">
							<?php foreach($posttags as $tags):
								$term_id = $tags->term_id;
								$name    = $tags->name;?>
								<a class="tag" href="<?php echo get_tag_link($term_id)?>"><?php echo $name;?></a>
							<?php endforeach;?>
						</div>
					<?php endif;?>
				</div>
				</div>
			</article>
		</div>
		<?php 
		endwhile;
		$html = ob_get_clean();
		wp_reset_query();
		wp_reset_postdata();
	endif;	
	?>
	<?php 
	
	return $html;
}