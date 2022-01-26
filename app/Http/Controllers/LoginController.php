<?php

namespace App\Http\Controllers;

use App\Models\Login;
use App\Models\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        //ambil inputan dari form login
        $email = $request->input('email');
        $password = $request->input('password');

        $member = Member::query()->firstWhere(['email' => $email]);
        //kalau tidak ditemuan / null / kosong
        if ($member == null) {
            return $this->responseHasil(400, false, "Email tidak ditemukan");
        }
        //kalau passwordnya salah / tidak sama 
        if (!Hash::check($password, $member->password)) {
            return $this->responseHasil(400, false, "Password Salah");
        }

        $login = Login::create([
            'member_id' => $member->id,
            'auth_key' => $this->RandomString()
        ]);

        if (!$login) {
            return $this->responseHasil(401, false, "Unauthorized");
        }

        $data = [
            'token' => $this->RandomString(),
            'user' => [
                'id' => $member->id,
                'email' => $member->email
            ]
        ];

        return $this->responseHasil(200, true, $data);
    }

    private function RandomString($length = 100)
    {
        $karakter = '1234567890abcdsklopyrwABDCFRTYUIO';
        $panjang_karakter = strlen($karakter);
        $str = "";
        for ($i = 1; $i < $length; $i++) {
            $str .= $karakter[rand(0, $panjang_karakter - 1)];
        }
        return $str;
    }
}
