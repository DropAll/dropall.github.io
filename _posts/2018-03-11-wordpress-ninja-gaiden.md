---
layout: post
title: Wordpress Ninja Gaiden
subtitle: Black Side of the Force
bigimg: /img/ninja.gif
---

# Wordpress Ninja Gaiden
Black Side of the Force

## Basic Template Files

### Theme

| Archive  | Function |
| ------------- | ------------- |
| style.css | Style sheet file |
| index.php | Home Page file |
| single.php | Single post page file |
| archive.php | Archive or Category file |
| searchform.php | Search form file |
| search.php | Search content file |
| 404.php | Error page file |
| comments.php | Comments template file |
| footer.php | Footer content file |
| header.php | Header content file |
| sidebar.php | Sidebar content file |
| page.php | Single page file |

### Theme - header

| PHP Snippets for Header         |                                     |
|---------------------------------|-------------------------------------|
| bloginfo('name');               | Title of the site                   |
| wp_title();                     | Title of the specific post or page  |
| get_stylesheet_directory_uri(); | The style.css file’s location       |
| bloginfo('pingback_url');       | Pingback URL for this site          |
| bloginfo('template_url');       | Location for the site’s theme files |
| bloginfo('version');            | WordPress version for the site      |
| bloginfo('atom_url');           | Atom URL for the site               |
| bloginfo('rss2_url');           | RSS2 URL for the site               |
| get_site_url();                 | Exact URL for the site              |
| bloginfo('name');               | Name of the site                    |
| bloginfo('html_type');          | HTML version of the site            |
| bloginfo('charset');            | Charset parameter of the site       |

### Theme for templates

| PHP Snippets for Templates       	|                                      	|
|----------------------------------	|--------------------------------------	|
| the_content();                   	| Content of the posts                 	|
| if(have_posts()):                	| Check if there are posts             	|
| while(have_posts()): the_post(); 	| Shows posts if posts are available   	|
| endwhile;                        	| Closes the ‘while’ PHP function      	|
| endif;                           	| Closes the ‘if’ PHP function         	|
| get_header();                    	| Header.php file’s content            	|
| get_sidebar();                   	| Sidebar.php file’s content           	|
| get_footer();                    	| Footer.php file’s content            	|
| the_time('m-d-y');               	| The date in ’08-18-07′ format        	|
| comments_popup_link();           	| Link for the comments on the post    	|
| the_title()';                    	| Title of a specific post or page     	|
| the_permalink();                 	| URL of a specific post or page       	|
| the_category();                  	| Categor of a specific post or page   	|
| the_author();                    	| Author of a specific post or page    	|
| the_ID();                        	| ID of a specific post or page        	|
| edit_post_link();                	| Link to edit a specific post or page 	|
| get_links_list();                	| Links from the blogroll              	|
| comments_template();             	| Comment PHP file’s content           	|
| wp_list_pages();                 	| List of pages of the site            	|
| wp_list_cats();                  	| List of categories for the site      	|
| next_post_link('%link');         	| URL to the next post                 	|
| previoust_post_link('%link');    	| URL to the previoust post            	|
| get_calendar()'                  	| The built-in calendar                	|
| wp_get_archives();               	| List of archives for the site        	|
| posts_nav_link();                	| Next and previous post links         	|
| bloginfo('description');         	| Site’s description                   	|

### Theme - Navigation menu

Category Based Navigation

```
<ul id="menu">
<li <?php if(is_home()) { ?> class="current-cat" <?php } ?> >
<a href="<php bloginfo('home'); ?>">Home</a></li>
<?php wp_list_categories('title_li=&orderby=id'); ?>
</ul>
```

Pages based Navigation

```
<ul id="menu">
<li <?php if(is_home()) { ?> class="current_page_item" <?php } >>>
<a href="<php bloginfo('home'); ?>">Home</a></li>
<?php wp_list_pages('sort_column=menu_order&depth=1&title_li='); ?>
</ul>
```

### Theme extras

| Extra stuff                  |                                                |
|------------------------------|------------------------------------------------|
| /%postname%/                 | Custom permalinks                              |
| include(TEMPATEPATH . '/x'); | Include any file                               |
| the_search_query();          | Value for search form                          |
| _e('Message');               | Prints out message                             |
| wp_register();               | Displays the register link                     |
| wp_loginout();               | Displas the login/logout link                  |
| <!--next page-->             | Divides the content into pages                 |
| <!--more-->                  | Cuts off the content and adds a read more link |
| wp_meta();                   | Meta for administrators                        |
| timer_stop(1);               | Time to load the page                          |
| echo get_num_queries();      | Queries to load the page                       |

### Theme - The Loop

```
<php if(have_posts()): ?>
<php while(have_posts()): the_post(); ?>
// Post content here (Custom HTML & PHP code)
<php else; ?>
<php endif; ?>
```

#### thz

Font: ()https://startbloggingonline.com/wordpress-cheat-sheet/)