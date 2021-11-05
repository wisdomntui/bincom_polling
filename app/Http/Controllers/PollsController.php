<?php

namespace App\Http\Controllers;

use App\Models\Lga;
use App\Models\PollingUnit;
use Illuminate\Http\Request;

class PollsController extends Controller
{
    // Number of rows per page
    private $pages = 6;

    /**
     * Displays results for any individual polls unit
     *
     */
    public function individualPolls(Request $request, $unit = null)
    {
        try {
            if (!empty($unit)) {
                $pollingUnitResults = PollingUnit::where('id', $unit)->has('announcedpuresult')->with(['announcedpuresult'])->paginate($this->pages);
            } else {
                $pollingUnitResults = PollingUnit::has('announcedpuresult')->with(['announcedpuresult'])->paginate($this->pages);
            }
            return view('index', compact('pollingUnitResults'));
        } catch (\Throwable $th) {
            logger($th);
        }
    }

    /**
     * Displays the sum total result of all the polling units undera local government
     */
    public function totalResult(Request $request, $lga = "*")
    {
        try {
            // Fetch local governments
            $localGovernments = Lga::get();

            // Check if a local government is selected or not
            if ($lga == "*") {
                $results = PollingUnit::has('announcedpuresult')->with(['announcedpuresult'])->paginate($this->pages);
            } else {
                // Fetch results
                $results = PollingUnit::where('lga_id', $lga)->has('announcedpuresult')->with(['announcedpuresult'])->paginate($this->pages);
            }

            return view('total-result', compact('localGovernments', 'lga', 'results'));
        } catch (\Throwable $th) {
            logger($th);
        }
    }
}
