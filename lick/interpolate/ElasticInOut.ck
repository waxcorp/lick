/*

    LiCK  Library for ChucK.
    Copyright (c) 2007-2017 held jointly by the individual authors.

    This file is part of LiCK.

    LiCK is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    LiCK is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with LiCK.  If not, see <http://www.gnu.org/licenses/>.

*/

public class ElasticInOut extends Interpolation
{
    Math.PI * 2.0 => static float PI_TIMES_2;

    fun float evaluate(float value)
    {
        0.3 * 1.5 => float p;
        p / 4.0 => float s;
        2.0 * value => float q;
        if (q < 1.0)
        {
            q - 1.0 => q;
            return -0.5 * (Math.pow(2.0, 10.0 * q) * Math.sin((q - s) * (PI_TIMES_2) / p));
        }
        q - 1.0 => q;
        return 0.5 * Math.pow(2.0, -10.0 * q) * Math.sin((q - s) * (PI_TIMES_2) / p) + 1.0;
    }
}
