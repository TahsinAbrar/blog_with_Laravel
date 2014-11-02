<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 11/1/2014
 * Time: 3:23 PM
 */

class PostsController extends BaseController {
    public function getIndex(){
        $posts = Post::with('Author')->orderBy('id', 'DESC')->paginate(5);
        return View::make('posts.index')->with('posts',$posts);
    }
    public function getAdmin(){
        return View::make('posts.addpost');
    }
    public function postAdd(){
        Post::create(array(
            'title' => Input::get('title'),
            'content' => Input::get('content'),
            'author_id' => Input::get('author_id')
        ));

        return Redirect::route('index');
    }
} 