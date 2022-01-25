<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;


use Illuminate\Http\Request;
use App\Models\User;
use Carbon\Carbon;
use Session;
use Image;

class UserController extends Controller
{
    
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('superadmin');

    }
    public function index(){
         $allUser=User::orderBy('id','DESC')->get();
         //all();
        return view('admin.user.all',compact('allUser'));
    }

    public function add(){
        return view('admin.user.add');
    }

    public function insert(Request $request){
        $this->validate($request,[

         'name'=>'required|min:3|max:30',
         'email'=>'required|email|unique:users',
         //'email'=>['required','string','email','max:255','unique:users'],
         'password'=>['required','string','min:8','confirmed'],
         'role'=>['required'],

        ],[

            'name.required'=>'Please enter your name',
            'email.required'=>'Please enter your email address',

        ]);
       // $insert=User::insert without id
        $insert=User::insertGetId([
            'name'=>$request['name'],
            'phone'=>$request['phone'],
            'email'=>$request['email'],
            'password'=>Hash::make($request['password']),
            'role_id'=>$request['role'],
            'photo'=>'',
            'created_at'=>Carbon::now()->toDateTimeString(),

        ]);

        if ($request->hasFile('pic')) {
           $image=$request->file('pic');
 $imageName='user_'.$insert.'_'.time().'_'.rand(100000,10000000).'.'.$image->getClientOriginalExtension();
           Image::make($image)->resize(200,200)->save('uploads/'.$imageName);
//make ar por use kora jabay resize(100,100)
           User::where('id',$insert)->update([
            'photo'=>$imageName,
            'updated_at'=>Carbon::now()->toDateTimeString(),
           ]);
        }

        if ($insert) {
            Session::flash('success','success session value');
            return redirect('admin/user');
        }else{
            Session::flash('error','error session value');
            return redirect('admin/user/add');

        }


    }

    
}
