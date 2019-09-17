<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserAddressRequest extends Request
{
    public function rules()
    {
        return [
            'province'      => 'required',
            'city'          => 'required',
            'district'      => 'required',
            'address'       => 'required',
            'zip'           => 'required',
            'contact_name'  => 'required',
            'contact_phone' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'province'      => '省',
            'city'          => '城市',
            'district'      => '地區',
            'address'       => '詳細地址',
            'zip'           => '郵遞區號',
            'contact_name'  => '姓名',
            'contact_phone' => '電話',
        ];
    }

    public function messages()
    {
        return [
            'zip.required' => '郵遞區號 不能留白',
            'contact_name.required' => '聯絡人名稱 不能留白',
            'contact_phone.required' => '聯絡人電話 不能留白',
        ];
    }
}
