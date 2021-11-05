<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SqlSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        try {
            $path = base_path() . '/database/seeders/data.sql';
            $sql = file_get_contents($path);
            DB::unprepared($sql);
        } catch (\Throwable $th) {
            logger($th->getMessage());
        }
    }
}
