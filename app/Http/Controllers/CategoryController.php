<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\CategoryModel;
use Illuminate\Http\Request;
use Auth;
class CategoryController extends Controller
{
    public function category()
    {
        $data['getRecord'] = CategoryModel::getRecord();
        return view('backend.category.list', $data);

    }
}
