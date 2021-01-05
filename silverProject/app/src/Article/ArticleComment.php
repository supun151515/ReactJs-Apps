<?php
namespace SilverStripe\Home;

use SilverStripe\ORM\DataObject;

class ArticleComment extends DataObject {
    private static $table_name = 'ArticleComments';
    private static $db = [
        'Name'=> 'Varchar',
        'Email'=> 'Varchar',
        'Comment' => 'Text'
    ];
    private static $has_one = [
        'ArticlePage' => ArticlePage::class
    ];
}
