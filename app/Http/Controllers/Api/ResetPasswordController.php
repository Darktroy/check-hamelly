<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Helper\RequestHelper;
use App\Http\Start\Helpers;

use App\reset_password;
use Illuminate\Http\Request;
use Auth;
use DateTime;
use DB;
use JWTAuth;
use Validator;

class ResetPasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\reset_password  $reset_password
     * @return \Illuminate\Http\Response
     */
    public function show(reset_password $reset_password)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\reset_password  $reset_password
     * @return \Illuminate\Http\Response
     */
    public function edit(reset_password $reset_password)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\reset_password  $reset_password
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, reset_password $reset_password)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\reset_password  $reset_password
     * @return \Illuminate\Http\Response
     */
    public function destroy(reset_password $reset_password)
    {
        //
    }
    
    public function require_rest_link(Request $request) {
        
		$rules = array(
			'user_type' => 'required|in:Rider,rider,Driver,driver',
			'email' => 'required|exists:users,email'
		);

		$validator = Validator::make($request->all(), $rules);

		if ($validator->fails()) {
			$error = $validator->messages()->toArray();

			foreach ($error as $er) {
				$error_msg[] = array($er);
			}
			return ['status_code' => '0', 'status_message' => $error_msg['0']['0']['0']];

		}
                
                
    }
}
