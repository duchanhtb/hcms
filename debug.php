<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

use DebugBar\StandardDebugBar;
use DebugBar\DataCollector\AssetProvider;
use DebugBar\DataCollector\DataCollector;
use DebugBar\DataCollector\Renderable;
use DebugBar\DataCollector\ConfigCollector;
use DebugBar\DebugBarException;


/* 
 * @desc custom collector sql query
 */
class CmsDatabaseCollector extends DataCollector implements Renderable, AssetProvider {

    protected $wpdb;

    public function __construct() {
        
    }

    public function collect() {
        global $cmsLogQuery;

        $queries = array();
        $totalExecTime = 0;

        if ($cmsLogQuery && count($cmsLogQuery)) {
            foreach ($cmsLogQuery as $q) {
                $duration = $q['duration'];
                $queries[] = array(
                    'sql' => $q['sql'],
                    'duration' => $duration,
                    'duration_str' => $this->formatDuration($duration)
                );
                $totalExecTime += $duration;
            }
        }


        return array(
            'nb_statements' => count($queries),
            'accumulated_duration' => $totalExecTime,
            'accumulated_duration_str' => $this->formatDuration($totalExecTime),
            'statements' => $queries
        );
    }

    public function getName() {
        return 'cms';
    }

    public function getWidgets() {
        return array(
            "Sql Log" => array(
                "icon" => "arrow-right",
                "widget" => "PhpDebugBar.Widgets.SQLQueriesWidget",
                "map" => "cms",
                "default" => "[]"
            ),
            "Sql Log:badge" => array(
                "map" => "cms.nb_statements",
                "default" => 0
            )
        );
    }

    public function getAssets() {
        return array(
            'css' => 'widgets/sqlqueries/widget.css',
            'js' => 'widgets/sqlqueries/widget.js'
        );
    }

}

/* 
 * initialization  class debugbar
 */
$debugbar = new StandardDebugBar();
$debugbarRenderer = $debugbar->getJavascriptRenderer()
        ->setBaseUrl(base_url() . 'vendor/maximebf/debugbar/src/DebugBar/Resources')
        ->setEnableJqueryNoConflict(true); // if set false that will disable all jquery non-conflict

/* 
 * register collector log sql
 */
$collector = new CmsDatabaseCollector();
$debugbar->addCollector($collector);


/* 
 * register PHP environment collector
 */
$cms_env = 'PHP_VERSION,REDIRECT_STATUS,HTTP_HOST,HTTP_CONNECTION,HTTP_ACCEPT,HTTP_UPGRADE_INSECURE_REQUESTS,HTTP_USER_AGENT,HTTP_REFERER,HTTP_ACCEPT_ENCODING,HTTP_ACCEPT_LANGUAGE,HTTP_COOKIE,HTTP_ALEXATOOLBAR_ALX_NS_PH,PATH,SERVER_SIGNATURE,SERVER_SOFTWARE,SERVER_NAME,SERVER_ADDR,SERVER_PORT,REMOTE_ADDR,DOCUMENT_ROOT,SERVER_ADMIN,SCRIPT_FILENAME,REMOTE_PORT,REDIRECT_URL,GATEWAY_INTERFACE,SERVER_PROTOCOL,REQUEST_METHOD,QUERY_STRING,REQUEST_URI,SCRIPT_NAME,PHP_SELF,REQUEST_TIME_FLOAT,REQUEST_TIME';
$cms_env = explode(',', $cms_env);
foreach ($cms_env as $env) {
    $data[$env] = getenv($env);
}
$data['PHP_VERSION'] = phpversion();
$debugbar->addCollector(new ConfigCollector($data));


/* 
 * add custom style
 */
add_inline_style('debugbar0', '.phpdebugbar-body{ font-size: 14px !important;}');
add_inline_style('debugbar1', 'dl.phpdebugbar-widgets-kvlist dt{width: 300px !important;}');
add_inline_style('debugbar2', 'dl.phpdebugbar-widgets-kvlist dd{ margin-left: 310px !important; padding: 6px !important;}');


/* 
 * add debugbar render to header and footer
 */
global $html_header, $html_footer, $admin_html_header, $admin_html_footer;
$html_header .= $debugbarRenderer->renderHead();
$admin_html_header .= $debugbarRenderer->renderHead();
$html_footer .= $debugbarRenderer->render();
$admin_html_footer .= $debugbarRenderer->render();
