<?php
namespace SilverStripe\Home;
use Page;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class RegionsPage extends Page {
    private static $has_many = [
        'Regions' => Region::class
    ];
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Regions', GridField::create(
            'Regions',
            'Regions on this page',
            $this->Regions(),
            GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
    public static $owns = [
        'Regions'
    ];
}
