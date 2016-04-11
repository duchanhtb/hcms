<?php

/**
 * @author duchanh
 * @copyright 2012
 */
if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');


// check permission
if ((int) @$_SESSION['admin']['level'] < 3) {
    redirect("index.php?f=restrict");
}

global $of_options;
define('OPTIONS_IMAGES', ADMIN_IMAGES . 'options/');


/* ----------------------------------------------------------------------------------- */
/* General */
admin_register_style('cms-option', admin_url() . 'css/admin-options.css');
admin_register_style('cms-option-colorpicker', admin_url() . 'css/color-picker.min.css');
admin_register_style('cms-option-jquery-ui', admin_url() . 'css/jquery-ui-custom.css');
admin_register_style('cms-option-color-pick', admin_url() . 'css/colpick.css');
admin_register_style('cms-option-stickytooltip', admin_url() . 'css/stickytooltip.css');
admin_register_style('cms-option-stickytooltip', admin_url() . 'css/stickytooltip.css');

/* ----------------------------------------------------------------------------------- */
$of_options[] = array("name" => trans('setting_general'),
    "type" => 'heading',
    "icon" => OPTIONS_IMAGES . "icon-settings.png"
);

$of_options[] = array('name' => trans('setting_general'),
    'type' => 'info',
    'std' => trans('setting_general'),
);


$of_options[] = array('name' => trans('Title website'),
    'type' => 'textarea',
    'std' => 'Hệ thống quản trị nội dung HCMS',
    'id' => 'meta_title',
    'desc' => trans('Title mặc định của website. Giá trị này được sử dụng cho thẻ HTML <title></title>'),
);

$of_options[] = array('name' => trans('Miêu tả website'),
    'type' => 'textarea',
    'std' => 'Hệ thống quản trị nội dung HCMS cung cấp các giải pháp quản trị nội dung tốt nhất cho bạn. Đây là hệ thống mã nguồn mở do NguyenDucHanh phát triển từ năm 2014 ',
    'id' => 'meta_desc',
    'desc' => trans('Miêu tả chung của website. Nội dung này được sử dụng cho thẻ html <meta name="description" content="" />'),
);

$of_options[] = array('name' => trans('Tùy biến CSS'),
    'type' => 'textarea',
    'std' => '',
    'id' => 'custom-css',
    'desc' => trans('Nếu bạn biết sử dụng CSS, bạn có thể tùy biến ở đây. Không sửa trực tiếp trên file CSS.'),
);


/* Icons */
$of_options[] = array('name' => trans('Icons'),
    'type' => 'info',
    'std' => trans('Icons'),
);

$of_options[] = array('name' => trans('Favicon'),
    'type' => 'media',
    'id' => 'favicon',
    'std' => 'admin/images/favicon.png',
    'desc' => trans('Favicon là một biểu tượng nhỏ ở góc trên-bên phải của trình duyệt. Kích thước ảnh 16x16px hoặc 32x32px (đuôi .png, .ico...)'),
);




/* Email setting */
$of_options[] = array('name' => trans('Cài đặt Google Email'),
    'type' => 'info',
    'std' => trans('Cài đặt Google Email'),
);

$of_options[] = array('name' => trans('Tên người gửi'),
    'type' => 'text',
    'id' => 'smtp-name',
    'std' => 'HCMS',
    'desc' => 'Tên người gửi email. Ví dụ: Nguyễn Đức hạnh',
);

$of_options[] = array('name' => trans('Địa chỉ email'),
    'type' => 'text',
    'id' => 'smtp-email',
    'std' => '',
    'desc' => 'Địa chỉ email người gửi, ví dụ: hanhcoltech@gmail.com',
);

$of_options[] = array('name' => trans('Mật khẩu email'),
    'type' => 'text',
    'id' => 'smtp-password',
    'std' => '',
    'desc' => 'Mật khẩu để truy cập vào mail của bạn, hệ thống sẽ sử dụng mật khẩu này để gửi email tự động tương tự như bạn gửi email thông thường',
);

$of_options[] = array('name' => trans('Cổng kết nối SMTP'),
    'type' => 'text',
    'id' => 'smtp-port',
    'std' => '465',
    'desc' => 'Cổng kết nối SMTP tới email, thường là cổng 465 hoặc 587',
);



/* ----------------------------------------------------------------------------------- */
/* Header
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Header'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "header.png",
);

/* Logo */
$of_options[] = array('name' => trans('Logo'),
    'type' => 'info',
    'std' => trans('Logo'),
);

$of_options[] = array('name' => trans('Logo'),
    'type' => 'media',
    'id' => 'logo',
    'std' => 'admin/images/example_logo.gif',
    'desc' => trans('Kích thước tốt nhất 200x50px'),
);

$of_options[] = array('name' => trans('Chiều rộng logo (px)'),
    'type' => 'text',
    'id' => 'logo-width',
    'std' => '122',
    'desc' => trans('Cố định chiều rộng cho logo (px)'),
);

$of_options[] = array('name' => trans('Logo height (px)'),
    'type' => 'text',
    'id' => 'logo-height',
    'std' => '37',
    'desc' => trans('Cố định chiều cao cho logo (px)'),
);

$of_options[] = array('name' => trans('Khoảng cách logo với phía trên (px)'),
    'type' => 'sliderui',
    'id' => 'logo-margin-top',
    'min' => 0,
    'max' => 50,
    'step' => 1,
    'std' => 10,
);

$of_options[] = array('name' => trans('Khoảng cách logo với phía dưới (px)'),
    'type' => 'sliderui',
    'id' => 'logo-margin-left',
    'min' => 0,
    'max' => 200,
    'step' => 1,
    'std' => 0,
);


/* ----------------------------------------------------------------------------------- */
/* Footer
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Footer'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "footer.png"
);

$of_options[] = array('name' => trans('Footer text'),
    'type' => 'textarea',
    'id' => 'footer-text',
    'std' => '&copy; 2015. All rights reserved. Designed by <a href="http://nguyenduchanh.com" target="_blank">NguyenDucHanh</a>',
    'desc' => trans('Được phép sử dụng mã HTML.'),
);



/* ----------------------------------------------------------------------------------- */
/* Styling
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Màu sắc'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "icon-paint.png"
);


$of_options[] = array('name' => trans('Màu'),
    'type' => 'info',
    'std' => trans('Color'),
);

$of_options[] = array('name' => trans('Màu nền website'),
    'type' => 'color',
    'std' => '#FFFFFF',
    'id' => 'body-background-color',
);

$of_options[] = array('name' => trans('Màu chữ'),
    'type' => 'color',
    'std' => '#555555',
    'id' => 'primary-color',
    'desc' => trans('Đây là màu chính của website.'),
);

$of_options[] = array('name' => trans('Màu chữ liên kết'),
    'type' => 'color',
    'std' => '#337ab7',
    'id' => 'link-color',
);
$of_options[] = array('name' => trans('Màu liên kết khi rê chuột'),
    'type' => 'color',
    'std' => '#23527c',
    'id' => 'link-hover-color',
);

/* ----------------------------------------------------------------------------------- */
/* Typography
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Phông chữ'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "mac-smz-icon.gif"
);

$of_options[] = array('name' => trans('Font family'),
    'type' => 'info',
    'std' => trans('Font family'),
);

$of_options[] = array('name' => trans('Body font'),
    'desc' => trans('You can choose a normal font or Google font'),
    'id' => 'body-font',
    'std' => 'Arial',
    'type' => 'select_google_font',
    'preview' => array(
        'text' => trans('this_is_preview'), //this is the text from preview box
        'size' => '30px' //this is the text size from preview box
    ),
    'options' => hcms_google_fonts(),
);

$of_options[] = array('name' => trans('Heading font'),
    'desc' => trans('You can choose a normal font or Google font'),
    'id' => 'heading-font',
    'std' => 'Arial',
    'type' => 'select_google_font',
    'preview' => array(
        'text' => trans('this_is_preview'), //this is the text from preview box
        'size' => '30px' //this is the text size from preview box
    ),
    'options' => hcms_google_fonts(),
);

$of_options[] = array('name' => trans('Navigation font'),
    'desc' => trans('You can choose a normal font or Google font'),
    'id' => 'mainnav-font',
    'std' => 'Arial',
    'type' => 'select_google_font',
    'preview' => array(
        'text' => trans('this_is_preview'), //this is the text from preview box
        'size' => '30px' //this is the text size from preview box
    ),
    'options' => hcms_google_fonts(),
);

$of_options[] = array('name' => trans('General font size'),
    'type' => 'info',
    'std' => trans('General font size'),
);

$of_options[] = array('name' => trans('Body font size (px)'),
    'type' => 'sliderui',
    'std' => 14,
    'min' => 8,
    'max' => 28,
    'step' => 1,
    'id' => 'body-size',
);

$of_options[] = array('name' => trans('H1 font size (px)'),
    'type' => 'sliderui',
    'std' => 36,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h1-size',
);

$of_options[] = array('name' => trans('H2 font size (px)'),
    'type' => 'sliderui',
    'std' => 28,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h2-size',
);

$of_options[] = array('name' => trans('H3 font size (px)'),
    'type' => 'sliderui',
    'std' => 22,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h3-size',
);

$of_options[] = array('name' => trans('H4 font size (px)'),
    'type' => 'sliderui',
    'std' => 16,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h4-size',
);

$of_options[] = array('name' => trans('H5 font size (px)'),
    'type' => 'sliderui',
    'std' => 13,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h5-size',
);

$of_options[] = array('name' => trans('H6 font size (px)'),
    'type' => 'sliderui',
    'std' => 13,
    'min' => 8,
    'max' => 64,
    'step' => 1,
    'id' => 'h6-size',
);


/* ----------------------------------------------------------------------------------- */
/* Social Icons
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Social'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "twitter.png"
);

foreach (hcms_social_array() as $s => $c):

    $of_options[] = array('name' => $c,
        'type' => 'text',
        'std' => '',
        'id' => 'social-' . $s,
    );
endforeach;


$of_options[] = array('name' => trans('Custom social icon'),
    'type' => 'info',
    'std' => trans('Custom social icon'),
);

$of_options[] = array('name' => trans('Custom Social Icon'),
    'type' => 'media',
    'std' => '',
    'id' => 'custom-social-icon',
    'desc' => trans('Upload your own social icon (40x40 png image)'),
);

$of_options[] = array('name' => trans('Custom Social Icon URL'),
    'type' => 'text',
    'std' => '',
    'id' => 'custom-social-icon-url',
);

$of_options[] = array('name' => trans('Custom Social Icon Title'),
    'type' => 'text',
    'std' => '',
    'id' => 'custom-social-icon-title',
);

/* ----------------------------------------------------------------------------------- */
/* Admin
  /*----------------------------------------------------------------------------------- */
$of_options[] = array('name' => trans('Admin'),
    'type' => 'heading',
    "icon" => OPTIONS_IMAGES . "icon-home.png"
);

$of_options[] = array('name' => trans('Download external image'),
    'type' => 'info',
    'std' => trans('Download external image'),
);

$of_options[] = array('name' => trans('Download external image'),
    'type' => 'switch',
    'std' => false,
    'id' => 'download-external-images',
    'desc' => 'Auto download external image in editor and save it to hosting'
);



/* ----------------------------------------------------------------------------------- */
/* Backup Options */
/* ----------------------------------------------------------------------------------- */
$of_options[] = array("name" => trans("Backup Options"),
    "type" => "heading",
    "icon" => OPTIONS_IMAGES . "icon-slider.png"
);

$of_options[] = array("name" => trans("Backup and Restore Options"),
    "id" => "of_backup",
    "std" => "",
    "type" => "backup",
    "desc" => trans('You can use the two buttons below to backup your current options, and then restore it back at a later time. This is useful if you want to experiment on the options but would like to keep the old settings in case you need it back.'),
);

$of_options[] = array("name" => trans("Transfer Theme Options Data"),
    "id" => "of_transfer",
    "std" => "",
    "type" => "transfer",
    "desc" => trans('You can tranfer the saved options data between different installs by copying the text inside the text box. To import data from another install, replace the data in the text box with the one from another install and click "Import Options".'),
);
/*
  $of_options[] = array( "name" 		=> "Slider Options",
  "desc" 		=> "Unlimited slider with drag and drop sortings.",
  "id" 		=> "example_slider",
  "std" 		=> "",
  "type" 		=> "slider"
  );
 */

function checked($checked, $current, $echo = true) {
    $str = '';
    if ($checked == $current) {
        $str = 'checked';
    }
    if ($echo == true) {
        echo $str;
    }
    return $str;
}

function selected($selected, $current, $echo = true) {
    $str = '';
    if ($selected == $current) {
        $str = 'selected';
    }
    if ($echo == true) {
        echo $str;
    }
    return $str;
}

function hcms_google_fonts() {
    $fonts = 'ABeeZee,Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Advent Pro,Aguafina Script,Akronim,Aladin,Aldrich,Alegreya,Alegreya Sans,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra Display,Almendra SC,Amarante,Amaranth,Amatic SC,Amethysta,Anaheim,Andada,Andika,Angkor,Annie Use Your Telescope,Anonymous Pro,Antic,Antic Didone,Antic Slab,Anton,Arapey,Arbutus,Arbutus Slab,Architects Daughter,Archivo Black,Archivo Narrow,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Audiowide,Autour One,Average,Average Sans,Averia Gruesa Libre,Averia Libre,Averia Sans Libre,Averia Serif Libre,Bad Script,Balthazar,Bangers,Basic,Battambang,Baumans,Bayon,Belgrano,Belleza,BenchNine,Bentham,Berkshire Swash,Bevan,Bigelow Rules,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bokor,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Bubbler One,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambo,Candal,Cantarell,Cantata One,Cantora One,Capriola,Cardo,Carme,Carrois Gothic,Carrois Gothic SC,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chau Philomene One,Chela One,Chelsea Market,Chenla,Cherry Cream Soda,Cherry Swash,Chewy,Chicle,Chivo,Cinzel,Cinzel Decorative,Clicker Script,Coda,Coda Caption,Codystar,Combo,Comfortaa,Coming Soon,Concert One,Condiment,Content,Contrail One,Convergence,Cookie,Copse,Corben,Courgette,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Croissant One,Crushed,Cuprum,Cutive,Cutive Mono,Damion,Dancing Script,Dangrek,Dawning of a New Day,Days One,Delius,Delius Swash Caps,Delius Unicase,Della Respira,Denk One,Devonshire,Didact Gothic,Diplomata,Diplomata SC,Domine,Donegal One,Doppio One,Dorsa,Dosis,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,EB Garamond,Eagle Lake,Eater,Economica,Electrolize,Elsie,Elsie Swash Caps,Emblema One,Emilys Candy,Engagement,Englebert,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Faster One,Fasthand,Federant,Federo,Felipa,Fenix,Finger Paint,Fjalla One,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Freckle Face,Fredericka the Great,Fredoka One,Freehand,Fresca,Frijole,Fruktur,Fugaz One,GFS Didot,GFS Neohellenic,Gafata,Galdeano,Galindo,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,Gilda Display,Give You Glory,Glass Antiqua,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Gorditas,Goudy Bookletter 1911,Graduate,Grand Hotel,Gravitas One,Great Vibes,Griffy,Gruppo,Gudea,Habibi,Hammersmith One,Hanalei,Hanalei Fill,Handlee,Hanuman,Happy Monkey,Headland One,Henny Penny,Herr Von Muellerhoff,Holtwood One SC,Homemade Apple,Homenaje,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Iceberg,Iceland,Imprima,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italiana,Italianno,Jacques Francois,Jacques Francois Shadow,Jim Nightshade,Jockey One,Jolly Lodger,Josefin Sans,Josefin Slab,Joti One,Judson,Julee,Julius Sans One,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kameron,Karla,Kaushan Script,Keania One,Kelly Slab,Kenia,Khmer,Kite One,Knewave,Kotta One,Koulen,Kranky,Kreon,Kristi,Krona One,La Belle Aurore,Lancelot,Lato,League Script,Leckerli One,Ledger,Lekton,Lemon,Libre Baskerville,Life Savers,Lilita One,Limelight,Linden Hill,Lobster,Lobster Two,Londrina Outline,Londrina Shadow,Londrina Sketch,Londrina Solid,Lora,Love Ya Like A Sister,Loved by the King,Lovers Quarrel,Luckiest Guy,Lusitana,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Marcellus,Marcellus SC,Marck Script,Margarine,Marko One,Marmelad,Marvel,Mate,Mate SC,Maven Pro,McLaren,Meddon,MedievalSharp,Medula One,Megrim,Meie Script,Merienda,Merienda One,Merriweather,Metal,Metal Mania,Metamorphous,Metrophobic,Michroma,Milonga,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modern Antiqua,Molengo,Molle,Monda,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Montserrat Alternates,Montserrat Subrayada,Moul,Moulpali,Mountains of Christmas,Mouse Memoirs,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Mystery Quest,Neucha,Neuton,New Rocker,News Cycle,Niconne,Nixie One,Nobile,Nokora,Norican,Nosifer,Nothing You Could Do,Noticia Text,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,Numans,Nunito,Odor Mean Chey,Offside,Old Standard TT,Oldenburg,Oleo Script,Oleo Script Swash Caps,Open Sans,Open Sans Condensed,Oranienbaum,Orbitron,Oregano,Orienta,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,Oxygen,Oxygen Mono,PT Mono,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Pacifico,Paprika,Parisienne,Passero One,Passion One,Patrick Hand,Patua One,Paytone One,Peralta,Permanent Marker,Petit Formal Script,Petrona,Philosopher,Piedra,Pinyon Script,Pirata One,Plaster,Play,Playball,Playfair Display,Playfair Display SC,Podkova,Poiret One,Poller One,Poly,Pompiere,Pontano Sans,Port Lligat Sans,Port Lligat Slab,Prata,Preahvihear,Press Start 2P,Princess Sofia,Prociono,Prosto One,Puritan,Purple Purse,Quando,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Quintessential,Qwigley,Racing Sans One,Radley,Raleway,Raleway Dots,Rambla,Rammetto One,Ranchers,Rancho,Rationale,Redressed,Reenie Beanie,Revalia,Ribeye,Ribeye Marrow,Righteous,Risque,Roboto,Roboto Condensed,Rochester,Rock Salt,Rokkitt,Romanesco,Ropa Sans,Rosario,Rosarivo,Rouge Script,Ruda,Rufina,Ruge Boogie,Ruluko,Rum Raisin,Ruslan Display,Russo One,Ruthie,Rye,Sacramento,Sail,Salsa,Sanchez,Sancreek,Sansita One,Sarina,Satisfy,Scada,Schoolbell,Seaweed Script,Sevillana,Seymour One,Shadows Into Light,Shadows Into Light Two,Shanti,Share,Share Tech,Share Tech Mono,Shojumaru,Short Stack,Siemreap,Sigmar One,Signika,Signika Negative,Simonetta,Sirin Stencil,Six Caps,Skranji,Slackey,Smokum,Smythe,Sniglet,Snippet,Snowburst One,Sofadi One,Sofia,Sonsie One,Sorts Mill Goudy,Source Code Pro,Source Sans Pro,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Stalemate,Stalinist One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Strait,Sue Ellen Francisco,Sunshiney,Supermercado One,Suwannaphum,Swanky and Moo Moo,Syncopate,Tangerine,Taprom,Telex,Tenor Sans,Text Me One,The Girl Next Door,Tienne,Tinos,Titan One,Titillium Web,Trade Winds,Trocchi,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,Underdog,Unica One,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,VT323,Vampiro One,Varela,Varela Round,Vast Shadow,Vibur,Vidaloka,Viga,Voces,Volkhov,Vollkorn,Voltaire,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Warnes,Wellfleet,Wendy One,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada';

    $font_array = explode(',', $fonts);
    foreach ($font_array as $font) {
        $font = trim($font);
        $google_fonts_array[$font] = $font;
    }

    $normal_fonts = "Arial|"
            . "Times New Roman|"
            . "Comic Sans MS|"
            . "Impact|"
            . "Tahoma|"
            . "Trebuchet MS|"
            . "Verdana|"
            . "Courier New";
    $normal_fonts = explode('|', $normal_fonts);
    $normal_fonts_arr = array();
    foreach ($normal_fonts as $f) {
        $f_key = str_replace('\'', "", $f);
        $f_key = str_replace(', ', '|', $f_key);
        $f_key = str_replace(',', '|', $f_key);
        $normal_fonts_arr[$f_key] = $f;
    }
    //return $normal_fonts_arr; 
    return array_merge($normal_fonts_arr, $google_fonts_array);
}

if (!function_exists('hcms_windows_fonts')) {

    function hcms_windows_fonts() {
        $fonts = "Arial,Arial Black,Arial Bold,Arial Bold Italic,Arial Italic,Comic Sans MS,Courier New,Courier New Bold,Courier New Bold Italic,Courier New Italic,Estrangelo Edessa,Franklin Gothic Medium,Franklin Gothic Medium,Italic,Gautami,Georgia,Georgia Bold,Georgia Bold Italic,Georgia Italic Impact,Latha,Lucida Console,Lucida Sans Unicode,Microsoft Sans Serif,Modern MS Sans Serif,MS Serif,Mv Boli,Palatino Linotype,Palatino Linotype Bold,Palatino Linotype Bold Italic,Palatino Linotype Italic,Roman,Script,Small Fonts,Symbol,Symbol,Tahoma,Tahoma Bold,Times New Roman,Times New Roman Bold,Times New Roman Bold Italic,Times New Roman Italic,Trebuchet MS,Trebuchet MS Bold,Trebuchet MS Bold Italic,Trebuchet MS Italic,Tunga,Verdana,Verdana Bold,Verdana Bold Italic Verdana Italic,Webdings,WingDings,WST_Czech,WST_Engl,WST_Fren,WST_Germ,WST_Ital,WST_Span,WST_Swed";
        return explode(',', $fonts);
    }

}


/* ------------------------------------------------------------------------------ */
/* Social
  /* ------------------------------------------------------------------------------ */

function hcms_social_array() {
    return array(
        'facebook' => trans('Facebook'),
        'twitter' => trans('Twitter'),
        'google-plus' => trans('Google+'),
        'linkedin' => trans('LinkedIn'),
        'tumblr' => trans('Tumblr'),
        'pinterest' => trans('Pinterest'),
        'youtube' => trans('YouTube'),
        'skype' => trans('Skype'),
        'instagram' => trans('Instagram'),
        'delicious' => trans('Delicious'),
        'reddit' => trans('Reddit'),
        'stumbleupon' => trans('StumbleUpon'),
        'wordpress' => trans('Wordpress'),
        'joomla' => trans('Joomla'),
        'blogger' => trans('Blogger'),
        'vimeo' => trans('Vimeo'),
        'yahoo' => trans('Yahoo!'),
        'flickr' => trans('Flickr'),
        'picasa' => trans('Picasa'),
        'deviantart' => trans('DeviantArt'),
        'github' => trans('GitHub'),
        'stackoverflow' => trans('StackOverFlow'),
        'xing' => trans('Xing'),
        'flattr' => trans('Flattr'),
        'foursquare' => trans('Foursquare'),
        'paypal' => trans('Paypal'),
        'yelp' => trans('Yelp'),
        'soundcloud' => trans('SoundCloud'),
        'lastfm' => trans('Last.fm'),
        'lanyrd' => trans('Lanyrd'),
        'dribbble' => trans('Dribbble'),
        'forrst' => trans('Forrst'),
        'steam' => trans('Steam'),
        'behance' => trans('Behance'),
        'mixi' => trans('Mixi'),
        'weibo' => trans('Weibo'),
        'renren' => trans('Renren'),
        'evernote' => trans('Evernote'),
        'dropbox' => trans('Dropbox'),
        'bitbucket' => trans('Bitbucket'),
        'trello' => trans('Trello'),
        'vk' => trans('VKontakte'),
        'home' => trans('Homepage'),
        'envelope-alt' => trans('Email'),
        'rss' => trans('RSS'),
    );
}
