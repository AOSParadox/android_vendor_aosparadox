#!/sbin/sh
#
# Copyright (C) 2016 AOSParadox Project
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

MODEL=`getprop ro.product.model`

if [[ $MODEL == bacon || # OnePlus One
      $MODEL == onyx || # OnePlus X
      $MODEL == YU5510 # YU Yureka +
   ]]; then
    mv /system/media/1080p_PNG_bootanimation.zip system/media/bootanimation.zip
else
    mv /system/media/720p_PNG_bootanimation.zip system/media/bootanimation.zip
fi
