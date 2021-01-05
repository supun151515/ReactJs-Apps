<?php

namespace SilverStripe\Home;

use PageController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\View\Requirements;



class PropertySearchPageController extends PageController
{

    public function PropertySearchForm()
    {
        $nights = [];
        foreach (range(1, 14) as $i) {
            $nights[$i] = $i . ' night' . (($i > 1) ? 's' : '');
        }
        $prices = [];
        foreach (range(100, 1000, 50) as $i) {
            $prices[$i] = '$' . $i;
        }

        $form = Form::create(
            $this,
            'PropertySearchForm',
            FieldList::create(
                TextField::create('Keywords')
                    ->setAttribute('placeholder', 'City, State, Country, etc...')
                    ->addExtraClass('form-control'),
                DateField::create('ArrivalDate', 'Arrival On')
                    ->setAttribute('data-datepicker', true)
                    ->setAttribute('data-date-format', 'DD-MM-YYYY')
                    ->addExtraClass('form-control'),
                DropdownField::create('Nights', 'Stay for...')
                    ->setSource($nights)
                    ->addExtraClass('form-control'),
                DropdownField::create('Bedrooms')
                    ->setSource(ArrayLib::valuekey(range(1, 5)))
                    ->addExtraClass('form-control'),
                DropdownField::create('MinPrice', 'Min price')
                    ->setEmptyString('--Any--')
                    ->setSource($prices)
                    ->addExtraClass('form-control'),
                DropdownField::create('MaxPrice', 'Max price')
                    ->setEmptyString('--Any--')
                    ->setSource($prices)
                    ->addExtraClass('form-control')
            ),
            FieldList::create(
                FormAction::create('doPropertySearch', 'Search')
                    ->addExtraClass('btn-lg btn-fullcolor')
            )
        );

        $form->setFormMethod('GET')
            ->setFormAction($this->Link())
            ->disableSecurityToken()
            ->loadDataFrom($this->request->getVars());

        return $form;
    }

    public function index2(HTTPRequest $request)
    {
        $properties = Property::get()->limit(20);
        if ($request->getVar('ArrivalDate') == '') {
            return [
                'Results' => null
            ];
        }
        if ($search = $request->getVar('Keywords')) {
            $properties = $properties->filter([
                'Title:PartialMatch' => $search
            ]);
        }
        if ($arrival = $request->getVar('ArrivalDate')) {
            $arrivalStamp = strtotime($arrival);
            $nightAdder = '+' . $request->getVar('Nights') . ' day';
            $startDate = date('Y-m-d', $arrivalStamp);
            $endDate = date('Y-m-d', strtotime($nightAdder, $arrivalStamp));

            $properties = $properties->filter([
                'AvailableStart:LessThanOrEqual' => $startDate,
                'AvailableEnd:GreaterThanOrEqual' => $endDate
            ]);
        }

        /*

        if ($bedrooms = $request->getVar('Bedrooms')) {
            $properties = $properties->filter([
                'Bedrooms:GreaterThanOrEqual' => $bedrooms
            ]);
        }

        if ($minPrice = $request->getVar('MinPrice')) {
            $properties = $properties->filter([
                'PricePerNight:GreaterThanOrEqual' => $minPrice
            ]);
        }

        if ($maxPrice = $request->getVar('MaxPrice')) {
            $properties = $properties->filter([
                'PricePerNight:LessThanOrEqual' => $maxPrice
            ]);
        }

         */

        $filters = [
            ['Bedrooms', 'Bedrooms', 'GreaterThanOrEqual'],
            ['MinPrice', 'PricePerNight', 'GreaterThanOrEqual'],
            ['MaxPrice', 'PricePerNight', 'LessThanOrEqual'],
        ];

        foreach ($filters as $filterKeys) {
            list($getVar, $field, $filter) = $filterKeys;
            if ($value = $request->getVar($getVar)) {
                $properties = $properties->filter([
                    "{$field}:{$filter}" => $value
                ]);
            }
        }


        return [
            'Results' => $properties
        ];
    }

    public function index(HTTPRequest $request)
    {

        $properties = Property::get();

        if ($search = $request->getVar('Keywords')) {
            $properties = $properties->filter([
                'Title:PartialMatch' => $search
            ]);
        }
        if ($arrival = $request->getVar('ArrivalDate')) {
            $arrivalStamp = strtotime($arrival);
            $nightAdder = '+' . $request->getVar('Nights') . ' day';
            $startDate = date('Y-m-d', $arrivalStamp);
            $endDate = date('Y-m-d', strtotime($nightAdder, $arrivalStamp));

            $properties = $properties->filter([
                'AvailableStart:LessThanOrEqual' => $startDate,
                'AvailableEnd:GreaterThanOrEqual' => $endDate
            ]);
        }

        $filters = [
            ['Bedrooms', 'Bedrooms', 'GreaterThanOrEqual'],
            ['MinPrice', 'PricePerNight', 'GreaterThanOrEqual'],
            ['MaxPrice', 'PricePerNight', 'LessThanOrEqual'],
        ];

        foreach ($filters as $filterKeys) {
            list($getVar, $field, $filter) = $filterKeys;
            if ($value = $request->getVar($getVar)) {
                $properties = $properties->filter([
                    "{$field}:{$filter}" => $value
                ]);
            }
        }

        $paginatedProperties = PaginatedList::create(
            $properties,
            $request
        )->setPageLength(5)
            ->setPaginationGetVar('s');
        if ($request->isAjax()) {
            //  return 'Ajax response!';
        }
        return [
            'Results' => $paginatedProperties
        ];
    }
}
