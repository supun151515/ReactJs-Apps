<?php
namespace SilverStripe\Lanka;

use SilverStripe\ORM\DataObject;

class MyFormDataObject extends DataObject {
    private static $table_name = 'MyFormDataObject';
    private static $db = [
        'Name'=> 'Varchar',
        'Email'=> 'Varchar',
        'Comment' => 'Text'
    ];
    private static $has_one = [
        'MyFormPage' => MyFormPage::class
    ];
}
