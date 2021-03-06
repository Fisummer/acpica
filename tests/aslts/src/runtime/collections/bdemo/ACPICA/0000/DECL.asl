    /*
     * Some or all of this work - Copyright (c) 2006 - 2017, Intel Corp.
     * All rights reserved.
     *
     * Redistribution and use in source and binary forms, with or without modification,
     * are permitted provided that the following conditions are met:
     *
     * Redistributions of source code must retain the above copyright notice,
     * this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright notice,
     * this list of conditions and the following disclaimer in the documentation
     * and/or other materials provided with the distribution.
     * Neither the name of Intel Corporation nor the names of its contributors
     * may be used to endorse or promote products derived from this software
     * without specific prior written permission.
     *
     * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
     * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
     * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
     * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
     * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
     * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
     * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
     * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
     * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
     * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     */
    /*
     * Bug 0000:
     *
     * SUMMARY: Logical operators return True equal to One but not Ones
     */
    Method (MD9A, 0, Serialized)
    {
        Name (ON00, 0xFFFFFFFFFFFFFFFF)
        /*
         * Additional checking to prevent errors unrelated to this test.
         *
         * Check that exceptions initiated by some bdemo tests on the
         * global level are all actually handled and reset at this point.
         */
        CH03 ("", 0x00, 0x0999, 0x2D, 0x00)
        Local0 = (0x01 && 0x01)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x31, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x00 == 0x00)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x36, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x01 > 0x00)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x3B, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x01 >= 0x01)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x40, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x00 < 0x01)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x45, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x01 <= 0x01)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x4A, 0x00, 0x00, Local0, ON00)
        }

        Local0 = !0x00
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x4F, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x01 != 0x00)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x54, 0x00, 0x00, Local0, ON00)
        }

        Local0 = (0x00 || 0x01)
        If ((Local0 != ON00))
        {
            ERR ("", ZFFF, 0x59, 0x00, 0x00, Local0, ON00)
        }
    }

