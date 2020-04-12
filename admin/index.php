<?php
    require_once('../admin/scripts/config.php');
    if (isset($_GET['media'])) {
        $type = $_GET['media'];
        if ($type == "video") {
            $tbl = "tbl_movies";
            $tbl3 = 'tbl_mov_year';
            $col = 'movies_id';
        }
        else if ($type == "television") {
            $tbl = "tbl_tv";
            $tbl3 = 'tbl_tv_year';
            $col = 'tv_id';
        } else {
            $tbl = "tbl_audio";
            $tbl3 = 'tbl_audio_year';
            $col = 'audio_id';
        }
    }
    if(isset($_GET['filter'])){
             //$tbl = 'tbl_movies';
             $tbl2 = 'tbl_year';
             $col2 = 'year_id';
             $col3 = 'year_name';
             $filter = $_GET['filter'];
        $results = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
        echo json_encode($results);
    } else {
        $results = getAll($tbl);
        echo json_encode($results);
    }
?>
