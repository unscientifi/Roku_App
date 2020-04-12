<?php
    require_once('../admin/scripts/config.php');
    if (isset($_GET['media'])) {
        $type = $_GET['media'];
        if ($type == "video") {
            $tbl = "tbl_movies";
            $tbl3 = 'tbl_mov_year';
            $col = 'movies_id';
            $col4 = 'movies_rating';
        }
        else if ($type == "television") {
            $tbl = "tbl_tv";
            $tbl3 = 'tbl_tv_year';
            $col = 'tv_id';
            $col4 = 'tv_rating';
        } else {
            $tbl = "tbl_audio";
            $tbl3 = 'tbl_audio_year';
            $col = 'audio_id';
        }
    } else {
        //get kids
        $results = getKidsAll($tbl);
        echo json_encode($results);
    } 
?>
