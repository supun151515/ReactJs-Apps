<?php
namespace SilverStripe\Lanka;

use PageController;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

class MyFormPageController extends PageController {

    public function CommentForm(){
        $form = Form::create(
            $this,
            __FUNCTION__,
            FieldList::create(
                TextField::create('Name', '')
                ->setAttribute('placeholder', 'Name')
                ->addExtraClass('form-control'),
                EmailField::create('Email','')
                ->setAttribute('placeholder', 'Email')
                ->addExtraClass('form-control'),
                TextareaField::create('Comment','')
                ->setAttribute('placeholder', 'Comments')
                ->addExtraClass('form-control'),
                TextField::create('ID', 'ID', $this->ID)
                ->setAttribute('readonly', true)
            ),
            FieldList::create(
                FormAction::create('handleComment', 'Post Comment')
                ->addExtraClass('btn btn-default-color btn-lg')
                ->setUseButtonTag(true)
            ),
            RequiredFields::create('Name', 'Email', 'Comment')
        );
        $form->addExtraClass('form-style');
        $data = $this->getRequest()->getSession()->get("FormData.{$form->getName()}.data");
        return $data ? $form->loadDataFrom($data) : $form;
    }


    public function handleComment($data, $form){
        $session = $this->getRequest()->getSession();
        $session->set("FormData.{$form->getName()}.data", $data);

        $existing = $this->MyFormDataObjects()->filter([
            'Comment' => $data['Comment']
        ]);
        if($existing->exists() && strlen($data['Comment']) > 20 ){
            $form->sessionMessage('This comment already exists. Spammer!', 'bad');
            return $this->redirectBack();
        }
        $comment = MyFormDataObject::create();
      //  $comment->Name = $data['Name'];
      //  $comment->Email = $data['Email'];
      //  $comment->Comment = $data['Comment'];
        $comment->MyFormPageID = $this->ID;
        $form->saveInto($comment);
        $comment->write();

        $session->clear("FormData.{$form->getName()}.data");
        $form->sessionMessage('Thank you for your comment', 'good');
        return $this->redirectBack();
    }
    private static $allowed_actions = [
        'Commentform'
    ];

}
