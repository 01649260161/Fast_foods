<?php

namespace App\Http\controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Front\CustomerModel;
use Illuminate\Support\Facades\Hash;
use App\Model\Front\OrderModel;
use App\Model\Front\OrderDetailModel;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit($id){
        $data = array();

        $item = CustomerModel::find($id);
        $data['customer']=$item;

        return view('frontend.customer.edit',$data);
    }

    public function update(Request $request,$id){
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required',
            'password' => 'required|max:100',
        ]);
        $input = $request->all();

        $item = CustomerModel::find($id);

        $item->name = $input['name'];
        $item->email = $input['email'];
        $item->password = Hash::make($input['password']);
        $item->save();

        return redirect('/');
    }

    public function history($id){
        $data = array();

        $item = DB::table('orders')->where('user_order', $id)->get();
        $data['orders']=$item;
        return view('frontend.customer.history',$data);
    }

    public function view($id){
        $data = array();

        $item = DB::table('orders_detail')->where('order_id', $id)->get();
        $data['orderDetails']=$item;
        return view('frontend.customer.view',$data);
    }
}
