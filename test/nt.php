<form action="" method="post">
    <input type="text" name="so_bat_ky" />
    <input type="submit" name="tim" value="Tim"/>
</form>

<?php
if ($_POST && isset($_POST['so_bat_ky'])) {

    function ham_kiem_tra_so_nguyen_to($n) {
        for ($x = 2; $x < $n; $x++) {
            if ($n % $x == 0) {
                return false;
            }
        }
        return true;
    }

    $a = $_POST['so_bat_ky'];

    for ($i = 2; $i <= $a; $i++) {
        if (ham_kiem_tra_so_nguyen_to($i)) {
            echo $i . '<br/>';
        }
    }
}
