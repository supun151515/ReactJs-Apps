<?php
namespace SilverStripe\Home;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class ArticleCategory extends DataObject {
    private static $table_name = 'ArticleCategory';
    private static $db = [
        'Title' => 'Varchar'
    ];

    private static $has_one = [
        'ArticleHolder' => ArticleHolder::class
    ];

    public function getCMSFields()
    {
        return FieldList::create(
            TextField::create('Title')
        );
    }
    private static $belongs_many_many = [
        'Articles' => ArticlePage::class
    ];
}
