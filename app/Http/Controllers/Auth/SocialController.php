<?php

namespace App\Http\Controllers\Auth;

use App\Models\ProfilePicture;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Laravel\Socialite\Facades\Socialite;

class SocialController extends Controller
{
    public function redirectToProvider($provider)
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Obtain the user information from provider.  Check if the user already exists in our
     * database by looking up their provider_id in the database.
     * If the user exists, log them in. Otherwise, create a new user then log them in. After that
     * redirect them to the authenticated users homepage.
     *
     * @return Response
     */

    /**
     * If a user has registered before using social auth, return the user
     * else, create a new user object.
     * @param  $user Socialite user object
     * @param $provider Social auth provider
     * @return  User
     */
    public function handleProviderCallback($provider)
    {
        $userNode = Socialite::driver($provider)->stateless()->user();
        $email = $userNode->email;
        $fb_id = $userNode->id;

        $user = User::user_facebook_authenticate($email, $fb_id); // Check Facebook User Email Id is exists

        if ($user->count() > 0) {
            // If there update Facebook Id
            $user = User::user_facebook_authenticate($email, $fb_id)->first();

            $user->fb_id = $userNode->getId();

            $user->save(); // Update a Facebook id

            $user_id = $user->id; // Get Last Updated Id
        } else // If not create a new user without Password
        {
            $user = User::user_facebook_authenticate($email, $fb_id);

            if ($user->count() > 0) {
                /*$data['title'] = 'Disabled ';
                return view('users.disabled', $data);*/
                return redirect('user_disabled');
            }

            $user = new User;

            // New user data
            $name = explode(' ', $userNode->name);
            $user->first_name = $name[0];
            $user->last_name = $name[1];
            $user->email = $email;
            $user->fb_id = $userNode->getId();

            if ($email == '') {
                $user = array(
                    'first_name' => $name[0],
                    'last_name' => $name[1],
                    'email' => $email,
                    'fb_id' => $userNode->getId(),
                );
                Session::put('fb_user_data', $user);
                return redirect('signup_rider');
            }
            $user->status = 'Active'; //user activated
            $user->user_type = 'Rider';
            $user->save(); // Create a new user

            $user_id = $user->id; // Get Last Insert Id

            $user_pic = new ProfilePicture;

            $user_pic->user_id = $user_id;
            $user_pic->src = "https://graph.facebook.com/" . $userNode->getId() . "/picture?type=large";
            $user_pic->photo_source = 'Facebook';

            $user_pic->save(); // Save Facebook profile picture

            // $email_controller->welcome_email_confirmation($user);
        }
        $users = User::where('id', $user_id)->where('user_type', 'Rider')->first();

        if (@$users->status != 'Inactive') {
            if ($users) { // Login without using User Id instead of Email and Password
                  auth()->login($users); // Login without using User Id instead of Email and Password
                return redirect('/'); // Redirect to dashboard page
            } else {
                Session::flash('danger', trans('messages.user.login_failed')); // Call flash message function
                return redirect('signin_rider'); // Redirect to login page
            }
        } else // Call Disabled view file for Inactive user
        {
            /*$data['title'] = 'Disabled ';
            return view('users.disabled', $data);*/
            return redirect('user_disabled');
        }
    }
}
