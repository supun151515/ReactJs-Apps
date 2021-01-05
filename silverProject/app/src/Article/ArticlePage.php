<?php
namespace SilverStripe\Home;
use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;
use SilverStripe\Forms\CheckboxSetField;

class ArticlePage extends Page {
    private static $can_be_root = false;
    private static $table_name = 'ArticlePage';
    private static $db  = [
        'Date' => 'Date',
        'Teaser' => 'Text',
        'AuthorName' => 'Varchar'
    ];
    private static $has_one = [
        'Photo' => Image::class,
        'Brochure' => File::class
    ];
    private static $has_many = [
        'ArticleComments' => ArticleComment::class,
        'Categories' => ArticleCategory::class
    ];

    private static $owns = [
        'Photo',
        'Brochure'
    ];

    /*
    public function onAfterWrite()
    {
        parent::onAfterWrite();
        if ($this->Photo()->exists() && !$this->Photo()->isPublished()) {
            $this->Photo()->doPublish();
        }
        parent::onAfterWrite();
        if ($this->Brochure()->exists() && !$this->Brochure()->isPublished()) {
            $this->Brochure()->doPublish();
        }
    }
    */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of Article'), 'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser')
        ->setDescription('This is the summary that appears on the article list page'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('AuthorName', 'Author of Article'), 'Content');

        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
        $fields->addFieldToTab('Root.Attachments', $brochure = UploadField::create('Brochure', 'Travel Brochres only, (PDF documents only)'));

        $photo->setFolderName('travel-photos');
        $brochure->setFolderName('travel-docs')
        ->getValidator()->setAllowedExtensions(array('pdf'));

        $fields->addFieldToTab('Root.Categories', CheckboxSetField::create(
            'Categories',
            'Selected Categories',
            $this->Parent()->Categories()->map('ID', 'Title')
        ));

        return $fields;
    }


    public function CategoriesList() {
        if($this->Categories()->exists()){
            return implode(', ', $this->Categories()->column('Title'));
        }
        return null;

    }

}
