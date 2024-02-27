@extends('backend.layouts.app')
@section('style')
@endsection
@section('content')
<section class="section">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add New Blog</h5>
              <form class="row g-3" action="" method="post">
                {{ csrf_field() }}               

                <div class="col-12">
                  <label class="form-label">Title *</label>
                  <input type="text" class="form-control"  name="title" required>
                </div>

                <div class="col-12">
                    <label class="form-label">Category *</label>
                    <select class="form-control" name="category_id">
                        <option value="">Select Category</option>
                    </select>                    
                </div>
                
                <div class="col-12">
                    <label class="form-label">Image *</label>
                    <input type="file" class="form-control"  name="image_file" required>             
                </div>
                
                <div class="col-12">
                    <label class="form-label">Description *</label>
                    <textarea class="form-control"></textarea>            
                </div>   
                
                <div class="col-12">
                    <label class="form-label">Tags</label>
                    <input type="text" class="form-control"  name="tags">             
                </div>

                <hr>

                <div class="col-12">
                  <label class="form-label">Meta Description </label>
                  <textarea class="form control tinymce-editor" name="meta-description"></textarea>
                  <div style="color:red">{{ $errors->first('meta_description') }}</div>
                </div>
                
                <div class="col-12">
                  <label class="form-label">Meta Keywords</label>
                  <input type="text" class="form-control" value="{{ old('meta_keywords') }}" name="meta_keywords" >
                  <div style="color:red">{{ $errors->first('meta_keywords') }}</div>
                </div>            

                <hr>
                
                <div class="col-12">
                    <label for="inputPassword4" class="form-label">Publish *</label>
                    <select class="form-control" name="is_publish">
                      <option value="1">Yes</option>
                      <option value="0">No</option>
                    </select>
                  </div>

                <div class="col-12">
                  <label for="inputPassword4" class="form-label">Status *</label>
                  <select class="form-control" name="status">
                    <option value="1">Active</option>
                    <option value="0">Inactive</option>
                  </select>
                </div>
            
                <div class="col-12" style="margin-top: 30px;">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
@endsection
@section('script')
@endsection