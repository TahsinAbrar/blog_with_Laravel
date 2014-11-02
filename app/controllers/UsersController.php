<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 11/1/2014
 * Time: 3:15 PM
 */

class UsersController extends BaseController {
    public function postLogin(){
         Auth::attempt(array(
             'email' => Input::get('email'),
             'password' => Input::get('password')
         ));
        return Redirect::route('admin_area');
    }
    public function getLogout(){
        Auth::logout();
        return Redirect::route('index');
    }
} 