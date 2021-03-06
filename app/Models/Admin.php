<?php

/**
 * Admin Model
 *
 * @package     Gofer
 * @subpackage  Model
 * @category    Admin
 * @author      Trioangle Product Team
 * @version     1.7
 * @link        http://trioangle.com
 */

namespace App\Models;

use App\Role;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Zizaco\Entrust\Traits\EntrustUserTrait;
use DB;
use Laratrust\Traits\LaratrustUserTrait;

class Admin extends Authenticatable
{
    use Notifiable;
    use LaratrustUserTrait;

    protected $guard = 'admin';

    protected $table = 'admins';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    // Update Admin Role
    public static function update_role($user_id, $role_id)
    {
        return DB::table('role_user')->where('user_id', $user_id)->update(['role_id' => $role_id]);
    }

//    public function role()
//    {
//        return $this->belongsToMany(Role::class,'role_user','user_id','role_id');
//    }
//
//    public function canDo($string)
//    {
//        return $this->role()->permissionRole($string);
//    }
}
