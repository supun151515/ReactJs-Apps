<?php

namespace SilverStripe\Home;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class SubPhotos extends DataObject
{
    private static $table_name = 'PropertySubPhotos';
    private static $db = [
        'Title' => 'Varchar',
        'Description' => 'Text'
    ];

    private static $has_one = [
        'SubPhoto' => Image::class,
        'Property' => Property::class
    ];
    private static $owns = [
        'SubPhoto'
    ];

    private static $summary_fields = [
        'ShowSubImage' => 'Sub Image',
        'Title' => 'Title',
        'Description' => 'Description'
    ];

    public function getShowSubImage()
    {
        if ($this->SubPhoto()->exists()) {
            return $this->SubPhoto()->ScaleWidth(40);
        }
        return '(No Image)';
    }
    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextareaField::create('Description'),
            $uploadsub = UploadField::create('SubPhoto')
        );

        $uploadsub->setFolderName('Property-sub-photos');
        $uploadsub->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpeg', 'jpg'));

        return $fields;
    }
}
