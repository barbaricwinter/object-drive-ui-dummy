#!/bin/sh
#
#    This file is part of object-drive-ui-dummy.
#
#    object-drive-ui-dummy is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    object-drive-ui-dummy is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with object-drive-ui-dummy.  If not, see <http://www.gnu.org/licenses/>.

apk update &&
    apk upgrade &&
    apk add --no-cache nodejs &&
    npm install &&
    mkdir /public &&
    mkdir /public/apps &&
    mkdir /public/apps/1.0 &&
    mkdir /public/apps/1.0/apps &&
    mkdir /public/apps/1.0/apps/id &&
    cp /opt/docker/chm_drive /public/apps/1.0/apps/id/chm_drive &&
    mkdir /public/userservice &&
    mkdir /public/userservice/1.0 &&
    mkdir /public/userservice/1.0/user &&
    cp /opt/docker/me /public/userservice/1.0/user/me &&
    rm -rf /var/cache/apk/*
    true