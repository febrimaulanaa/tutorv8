<?php

namespace App\Http\Controllers;

use App\UserRole;
use App\Models\Masa;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use App\Http\Livewire\UserStoreRequest;
use RealRashid\SweetAlert\Facades\Alert;

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

    public function datauser()
    {
        $users = DB::SELECT('select * from users');
        // $getDPTutor = DB::select('select id_tutor, nip, namalengkap, kode_upbjj, telepon, email');
        return view('admin.datauser', compact('users'));
    }

    public function masa()
    {
        $masas = DB::SELECT('select * from masas');
        return view('admin.masa')->with(compact('masas'));
    }

    public function tambahmasa(Request $request)
    {
        // $masas = new Masa;
        // $masas->tahun_masa = $request->tambahmasa;
        // $masas->save();
        $masas = Masa::create([
            'tahun_masa' => $request->tambahmasa
        ]);
        toast('Data Berhasil Dibuat', 'success');
        return redirect()->route('admin.masaujian');
    }

    public function delete(Masa $masa)
    {
        $masa->delete();
        toast('Data Berhasil Dihapus', 'success');
        return redirect()->route('admin.masaujian');
    }
}
