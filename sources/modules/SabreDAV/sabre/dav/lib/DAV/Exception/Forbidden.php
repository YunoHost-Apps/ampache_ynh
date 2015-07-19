<?php

namespace Sabre\DAV\Exception;

/**
 * Forbidden
 *
 * This exception is thrown whenever a user tries to do an operation he's not allowed to
 *
 * @copyright Copyright (C) 2007-2015 fruux GmbH (https://fruux.com/).
 * @author Evert Pot (http://evertpot.com/)
 * @license http://sabre.io/license/ Modified BSD License
 */
class Forbidden extends \Sabre\DAV\Exception {

    /**
     * Returns the HTTP statuscode for this exception
     *
     * @return int
     */
    function getHTTPCode() {

        return 403;

    }

}
