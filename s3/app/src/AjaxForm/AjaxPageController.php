<?php
namespace SilverStripe\Lanka;
use Sheadawson\Linkable\Models;
use PageController;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\View\Requirements;

class AjaxPageController extends PageController {

    public function Form() {
        // include our javascript in the page to enable our AJAX behaviour
      //  Requirements::javascript('framework/thirdparty/jquery/jquery.js');
     //   Requirements::javascript('mysite/javascript/ajaxforms.js');
        Requirements::javascript('./javascript/ajaxform.js');

        //create the fields we want
        $fields = FieldList::create(
            TextField::create('Name'),
            EmailField::create('Email'),
            TextareaField::create('Message')
        );
        //create the button(s) we want
        $buttons = FieldList::create(
            FormAction::create('doForm', 'Send')
        );
        //add a validator to make sure the fields are submitted with values
        $validator = RequiredFields::create(array(
            'Name',
            'Email',
            'Message',
        ));
        //construct the Form
        $form = Form::create(
            $this,
            __FUNCTION__,
            $fields,
            $buttons,
            $validator
        );
        $form->addExtraClass('js-ajax-form');
        return $form;
    }
    public function doForm($data, $form, $request) {
        // discard the default $data because it is raw submitted data
        $data = $form->getData();

        // Do something with the data (eg: email it, save it to the DB, etc

        // send the user back to the "complete" action
        return $this->redirect($this->Link('complete'));
    }

    public function complete($request) {

        //if the request is an ajax request, then only render the include
        if ($request->isAjax()) {
           //return $this->renderWith('AjaxComplete');
           return 'ok';
        }
        //otherwise, render the full HTML response

        return $this->renderWith('AjaxComplete');
    }

    private static $allowed_actions = [
        'Form',
        'complete'
    ];
}
