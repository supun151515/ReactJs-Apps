<?php

namespace SilverStripe\Home;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Control\Controller;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;

class Region extends DataObject
{
    private static $table_name = 'Region';
    private static $db = [
        'Title' => 'Varchar',
        'Description' => 'HTMLText'
    ];

    private static $has_one = [
        'Photo' => Image::class,
        'RegionsPage' => RegionsPage::class
    ];
    private static $owns = [
        'Photo'
    ];
    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            HTMLEditorField::create('Description'),
            $uploader = UploadField::create('Photo')
        );
        $uploader->setFolderName('region-photos');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg']);
        return $fields;
    }
    private static $extensions = [
        Versioned::class
    ];


    private static $summary_fields = [
        'GridT' => 'Photo',
        'Title' => 'Title of region',
        'Description' => 'Short description'
    ];

    public function getGridT()
    {
        if ($this->Photo()->exists()) {
            return $this->Photo()->ScaleWidth(40);
        }
        return "(no Image)";
    }

    private static $versioned_gridfield_extensions = true;


    public function Link()
    {
        return $this->RegionsPage()->Link('show/' . $this->ID);
    }
    public function LinkingMode()
    {
        return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
    }
}
