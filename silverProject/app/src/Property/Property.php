<?php

namespace SilverStripe\Home;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\TabSet;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;

class Property extends DataObject
{

    private static $table_name = 'Property';
    private static $db = [
        'Title' => 'Varchar',
        'PricePerNight' => 'Currency',
        'Bedrooms' => 'Int',
        'Bathrooms' => 'Int',
        'FeaturedOnHomepage' => 'Boolean',
        'AvailableStart' => 'Date',
        'AvailableEnd' => 'Date',
        'Description' => 'Text'
    ];

    private static $has_one = [
        'Region' => Region::class,
        'PrimaryPhoto' => Image::class
    ];
    private static $has_many = [
        'SubPhoto' => SubPhotos::class
    ];
    private static $summary_fields = [
        'ShowPrimaryPhoto' => 'Image',
        'Title' => 'Title',
        'Region.Title' => 'Region',
        'PricePerNight.Nice' => 'Price',
        'FeaturedOnHomepage.Nice' => 'Featured?'
    ];
    private static $owns = [
        'SubPhoto',
        'PrimaryPhoto'
    ];
    private static $extensions = [
        Versioned::class
    ];

    private static $versioned_gridfield_extensions = true;


    public function getShowPrimaryPhoto()
    {
        if ($this->PrimaryPhoto()->exists()) {
            return $this->PrimaryPhoto()->ScaleWidth(40);
        }
        return ('(No Image)');
    }

    public function getCMSfields()
    {
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', array(
            TextField::create('Title'),
            CurrencyField::create('PricePerNight', 'Price (per night)'),
            DropdownField::create('Bedrooms')
                ->setSource(ArrayLib::valuekey(range(1, 10))),
            DropdownField::create('Bathrooms')
                ->setSource(ArrayLib::valuekey(range(1, 10))),
            DateField::create('AvailableStart', 'Date Available (start)'),
            DateField::create('AvailableEnd', 'Date Available (end)'),
            TextareaField::create('Description', 'Room Description'),
            DropdownField::create('RegionID', 'Region')
                ->setSource(Region::get()->map('ID', 'Title')),
            CheckboxField::create('FeaturedOnHomepage', 'Feature on Homepage')
        ));
        $fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
            'PrimaryPhoto',
            'Primary photo'
        ));

        $fields->addFieldToTab('Root.Photos', GridField::create(
            'SubPhoto',
            'Sub Photos',
            $this->SubPhoto(),
            GridFieldConfig_RecordEditor::create()
        ));


        $upload->getValidator()->setAllowedExtensions(array(
            'png', 'jpeg', 'jpg', 'gif'
        ));
        $upload->setFolderName('property-photos');

        return $fields;
    }
    public function searchableFields()
    {
        return [
            'Title' => [
                'filter' => 'PartialMatchFilter',
                'title' => 'Title',
                'field' => TextField::class
            ],
            'RegionID' => [
                'filter' => 'ExactMatchFilter',
                'title' => 'Region',
                'field' => DropdownField::create('RegionID')
                    ->setSource(
                        Region::get()->map('ID', 'Title')
                    )
                    ->setEmptyString('-- Any Region --')
            ],
            'FeaturedOnHomepage' => [
                'filter' => 'ExactMatchFilter',
                'title' => 'Only featured'
            ]
        ];
    }
}
