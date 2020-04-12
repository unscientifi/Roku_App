<?php 

    if (isset($_GET['allusers'])) {
        include('connect.php');

        $query = 'SELECT * FROM tbl_user';

        $getAllUsers = $pdo->prepare($query);
        $getAllUsers->execute();

        $users = array();

        while($user = $getAllUsers->fetch(PDO::FETCH_ASSOC)) {
            $currentuser =  array();
            $currentuser['id'] = $user['user_id'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['admin'] = $user['user_isadmin'];
            $currentuser['permissions'] = $user['user_permissions'];
            $currentuser['avatar'] = $user['user_avatar'];

            $users[] = $currentuser;
        }

        echo json_encode($users);
    }
?>