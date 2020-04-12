<?php require_once('admin/scripts/read.php');?>
<footer>
    <p>Copyright</p>
    <ul>
        <?php 
    
            $results = getAll('tbl_director');
    
            while($row = $results->fetch(PDO::FETCH_ASSOC)){
                echo '<li>'.$row['director_name'].'</li>';
    
            }
        ?>
    </ul>
</footer>