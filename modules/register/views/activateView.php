<div class="wrapper">
    <div class="container">
        <div class="row ">
          <?php if(!empty($message)){ ?>
                <div class="<?=$class?>">
                        <strong><?=$message?></strong>
                </div>
           <?php } ?>
             <a href="<?=_WEB_PATH?>"  class="btn btn-default">Back to homepage</a>
             <br><br>
        </div>
    </div>
</div>