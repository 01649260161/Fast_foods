<?php

namespace App\Http\Controllers\Frontend;

use App\Model\Front\ShopCategoryModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    //
    public function index(Request $request){

        $data = array();

        $input =$request->all();

        if (isset($input['Search']) && (strlen($input['Search']) > 2)){
            $data['search'] = $search = $input['Search'];
        }else{
            $data['search'] = $search = '';
        };
        $data['list'] = ShopCategoryModel::all();


        $data['result'] = DB::table('shop_product')->where('name','like','%'.$search.'%')->paginate(9);

        return view('frontend.search.search',$data);
    }
}
