<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
global $mt_prefix;

$err_msg = '';
if (isset($_POST['pwdOld']) && $_POST['pwdOld'] != "") {
    if ((int)$_SESSION['admin']['id'] <= 0) {
        @header("Location: login.php");
        die;
    }
    
    if ($_POST['pwdNew'] != $_POST['pwdNew_cf']) {
        $err_msg = "<strong><font color='red'>" . trans('new_password_not_match') . "</font></strong>";
    } else {
        $pass = md5(md5(md5($_POST['pwdOld'])));
        $new_pass = md5(md5(md5($_POST['pwdNew'])));
        $admin = DB::for_table($mt_prefix.'admin')
                ->where_equal('name', addslashes($_SESSION['admin']['name']))
                ->where_equal('pass', $pass)
                ->find_one();
        if ($admin) {
            $admin->pass = $new_pass;
            $admin->save();
            // sucsess            
            $err_msg = "<strong><font color='green'>" . trans('password_has_been_changed') . "</font></strong>";
        } else {
            // wrong password
            $err_msg = "<strong><font color='red'>" . trans('old_password_incorrect') . "</font></strong>";
        }
    }
    
}
$f = Input::get('f', 'txt', '');

$html_changepass = '
    <form name="frm" id="frm" action="index.php?f=' . $f . '" method="post">
    <h2 class="broad-title">' . trans('user_place') . '</h2>
    <div class="add-bar"><span>' . trans('change_password') . '</span></div>
    <div class="table-list table-form">
    <table>
    <tr><td>&nbsp;</td>
        <td>' . $err_msg . '</td>
    </tr>
    <tr><td width="30%"><b>' . trans('old_password') . '</b></td>
            <td><input type="password" name="pwdOld" size="30" class="{required:true,messages:{required:\'' . trans('enter_old_password') . '\'}}" /><span class="error"></span></td>
    </tr>	
    <tr><td width="30%">' . trans('new_password') . '</td>
            <td><input type="password" name="pwdNew"  id="pwdNew" size="30" class="{required:true,messages:{required:\'' . trans('enter_new_password') . '\'}}" /><span class="error"></span></td>
    </tr>	
    <tr><td width="30%">' . trans('retype_new_password') . '</td>
            <td><input type="password" name="pwdNew_cf"  size="30"  class="{required:true,equalTo: \'#pwdNew\',messages:{required:\'' . trans('retype_new_password') . '\',equalTo:\'' . trans('passwords_do_not_match') . '\'}}" class="required" /><span class="error"></span></td>
    </tr>	
    <tr><td width="30%">&nbsp;</td>
            <td><input type="submit" name="btnSubmit" value="' . trans('submit') . '" /></td>
    </tr>
    <tr>
	<td>&nbsp;</td>
	<td>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
	</td>
    </tr>
    </table>
    </div>
    </form>';