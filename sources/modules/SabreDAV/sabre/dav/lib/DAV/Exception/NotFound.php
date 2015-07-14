<?php

namespace Sabre\DAV\Exception;

/**
 * NotFound
 *
 * This Exception is thrown when a Node couldn't be found. It returns HTTP error code 404
 *
 * @copyright Copyright (C) 2007-2015 fruux GmbH (https://fruux.com/).
 * @author Evert Pot (http://evertpot.com/)
 * @license http://sabre.io/license/ Modified BSD License
 */
class NotFound extends \Sabre\DAV\Exception {

    /**
     * Returns the HTTP statuscode for this exception
     *
     * @return int
     */
    function getHTTPCode() {

        return 404;

    }

}

