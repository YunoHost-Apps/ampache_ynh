<?php

namespace Sabre\DAV;

/**
 * Abstract property class
 *
 * Extend this class to create custom complex properties
 *
 * @copyright Copyright (C) 2007-2015 fruux GmbH (https://fruux.com/).
 * @author Evert Pot (http://evertpot.com/)
 * @license http://sabre.io/license/ Modified BSD License
 */
abstract class Property implements PropertyInterface {

    /**
     * Unserializes the property.
     *
     * This static method should return a an instance of this object.
     *
     * @param \DOMElement $prop
     * @param array $propertyMap
     * @return DAV\IProperty
     */
    static function unserialize(\DOMElement $prop, array $propertyMap) {

        throw new Exception('Unserialize has not been implemented for this class');

    }

}

