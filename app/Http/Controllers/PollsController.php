<?php

namespace App\Http\Controllers;

use App\Models\AnnouncedPuResult;
use App\Models\Lga;
use App\Models\Party;
use App\Models\PollingUnit;
use App\Models\Ward;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

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

    /**
     * Displays form for creating new polling unit and adding results for individual parties
     */
    public function createResult(Request $request)
    {
        $lgas = Lga::get();
        $wards = Ward::get();
        $parties = Party::get();

        return view('create-result', compact('lgas', 'wards', 'parties'));
    }

    /**
     * Validate polling unit data
     */
    public function validatePolUnit(Request $request)
    {
        $validatedData = $request->validate([
            'description' => 'required',
            'lat' => 'bail|required|between:0,99.99',
            'long' => 'bail|required|between:0,99.99',
            'polling_unit_name' => 'bail|required|unique:polling_units',
            'polling_unit_number' => 'bail|required|unique:polling_units',
            'lga' => 'required',
            'ward' => 'required',
        ]);

        return response()->json(["message" => "passed", "errors" => []]);
    }

    /**
     * Save result to database
     */
    public function saveResult(Request $request)
    {
        $validatedData = $request->validate([
            'party_score.*' => 'bail|required|numeric',
        ]);

        try {
            // Create new polling unit
            $unit = new PollingUnit();
            $unit->polling_unit_id = rand(1, 100);
            $unit->ward_id = $request->ward;
            $unit->lga_id = $request->lga;
            $unit->uniquewardid = rand(1, 100);
            $unit->polling_unit_number = $request->polling_unit_number;
            $unit->polling_unit_name = $request->polling_unit_name;
            $unit->polling_unit_description = $request->description;
            $unit->lat = $request->lat;
            $unit->long = $request->long;
            $unit->save();

            // Save result
            foreach ($request->party_score as $key => $score) {
                $pu = new AnnouncedPuResult();
                $pu->polling_unit_id = $unit->id;
                $pu->party_abbreviation = $request->party_abb[$key];
                $pu->party_score = $score;
                $pu->entered_by_user = "Wisdom";
                $pu->date_entered = Carbon::now()->toDateTimeString();
                $pu->user_ip_address = $request->ip();
                $pu->save();
            }

            return response()->json(["message" => "Successful"]);
        } catch (\Throwable $th) {
            logger($th);
        }
    }

    /**
     * Fetch wards by id
     */
    public function getWards(Request $request)
    {
        $wards = Ward::where('lga_id', $request->lga_id)->get();
        return response()->json($wards);
    }
}
