<?php
namespace SilverStripe\Lanka;
use Page;

class MyFormPage extends Page {

    private static $has_many = [
        'MyFormDataObjects' => MyFormDataObject::class
    ];
}
