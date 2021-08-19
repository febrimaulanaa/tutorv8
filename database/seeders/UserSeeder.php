<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Role::updateOrCreate(['name' => 'Admin']);
        $member = Role::updateOrCreate(['name' => 'Member']);

        User::create([
            'name' => 'Administrator',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('12345678'),
        ])->assignRole($admin);

        User::create([
            'name' => 'Member',
            'email' => 'member@gmail.com',
            'password' => bcrypt('12345678'),
        ])->assignRole($member);
    }
}
