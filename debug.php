<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

use DebugBar\StandardDebugBar;
use DebugBar\DataCollector\AssetProvider;
use DebugBar\DataCollector\DataCollector;
use DebugBar\DataCollector\Renderable;
use DebugBar\DebugBarException;



class CmsDatabaseCollector extends DataCollector implements Renderable, AssetProvider {

    protected $wpdb;

    public function __construct() {
    }

    public function collect() {
        global $cmsLogQuery;
        
        $queries = array();
        $totalExecTime = 0;
        
        if($cmsLogQuery && count($cmsLogQuery)){
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
            "database" => array(
                "icon" => "arrow-right",
                "widget" => "PhpDebugBar.Widgets.SQLQueriesWidget",
                "map" => "cms",
                "default" => "[]"
            ),
            "database:badge" => array(
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

$debugbar = new StandardDebugBar();
$debugbarRenderer = $debugbar->getJavascriptRenderer()
        ->setBaseUrl(base_url() . 'vendor/maximebf/debugbar/src/DebugBar/Resources')
        ->setEnableJqueryNoConflict(false);

$collector = new CmsDatabaseCollector();
$debugbar->addCollector($collector);

global $html_header, $html_footer, $admin_html_header, $admin_html_footer;
$html_header .= $debugbarRenderer->renderHead();
$admin_html_header .= $debugbarRenderer->renderHead();
$html_footer .= $debugbarRenderer->render();
$admin_html_footer .= $debugbarRenderer->render();