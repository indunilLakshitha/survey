<?php

namespace App\Http\Controllers;

use App\CdRecords;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class CdRecordsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            
            $data = CdRecords::latest();

            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){

                           $btn = '<a href="javascript:void(0)" class="edit btn btn-primary btn-sm">View</a>';

                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }

        return view('dvd_records.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $id=CdRecords::count();
        $cd_no=$id+1;
       return view('dvd_records.create',compact('cd_no'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        CdRecords::create($request->all());
        return redirect()->back()->with('success', 'සාර්තකව ඇතුලත් කරගන්නා ලදී');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CdRecords  $cdRecords
     * @return \Illuminate\Http\Response
     */
    public function show(CdRecords $cdRecords)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CdRecords  $cdRecords
     * @return \Illuminate\Http\Response
     */
    public function edit(CdRecords $cdRecords)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CdRecords  $cdRecords
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CdRecords $cdRecords)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CdRecords  $cdRecords
     * @return \Illuminate\Http\Response
     */
    public function destroy(CdRecords $cdRecords)
    {
        //
    }

    public function csv(){
        $data = \App\CdRecords::all();

        $csvExporter = new \Laracsv\Export();

        return $csvExporter->build($data, ['id', 'cd_no', 'map_no','created_at'])->download();
    }
}
