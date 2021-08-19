<?php

namespace App\Http\Controllers;

use App\Http\Livewire\UserStoreRequest;
use App\Models\User;
use App\UserRole;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use RealRashid\SweetAlert\Facades\Alert;
use Spatie\Permission\Models\Role;

class AdminController extends Controller
{
    public function create()
    {
        $roles = Role::all();
        return view('admin.createuser', compact('roles'));
    }


    public function storeusers(UserStoreRequest $request)
    {
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ])->assignRole($request->role);

        toast('Akun Berhasil Dibuat!', 'success');
        return redirect()->route('admin.createuser');
    }
}
