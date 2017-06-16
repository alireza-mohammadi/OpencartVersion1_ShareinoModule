<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
            <div class="buttons"></div>
        </div>
        <div class="content shareio-fa" dir="rtl">
            <div class="alert alert-dismissable" id="MessageBox" role="alert" hidden>
                <p id="MessageText"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-pencil"></i>تنظیمات ماژول شرینو</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-sm-4" style="float:right">
                            <ul>
                                <li>ابتدا توکن خود را از سایت <a href="https://www.ShareINO.ir" target="_blank" title="شرینو - شبکه اجتماعی خرید">شرینو</a> دریافت کنید.</li>
                                <li>در صورت بروز هر گونه خطا ابتدا از صحت توکن خود اطمینان حاصل کنید</li>
                                <li>کالاهای شما بعد از دریافت تصاویر در سایت شرینو قابل مشاهده میباشند</li>
                                <li>در صورت بروز هر گونه مشکل یا ابهامی می‌توانید با کارشناسان ما در ارتباط باشید</li>
                            </ul>
                        </div>
                        <div class="col-sm-4" style="direction: ltr">
                            <a href="https://www.shareino.ir" target="_blank" title="شرینو -شبکه اجتماعی خرید"><img class="logo" src="view/image/shareino-logo.png" alt="شرینو - شبکه اجتماعی خرید" /></a>
                        </div>
                    </div>
                </div> <!-- ./ShareINO  -->
                <div style="clear:both"></div>
                <hr/>
                <div class="panel-body">
                    <div class="form-group">
                        <form action="<?php echo $action; ?>" method="post" class="form-horizontal sync-products" data-token="<?php echo $token ?>" data-operation="0">
                            <label class="col-sm-2 control-label" for="input-name">ارسال کالا ها</label>
                            <div class="col-sm-9">
                                <p class="shareino-text">اگر اولین بار میباشد که ماژول را نصب کرده اید یا اینکه کالاهای سایت خود را تغییر داده اید آن را برای شرینو ارسال کنید</p>
                            </div>
                            <div class="col-sm-1">
                                <button id="state-btn-product" type="submit" class="buttons" title="ارسال کالا های سایت شما">ارسال کالاها</i></button>
                            </div>
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="text-center" id="progress" hidden>
                                    <p class="label label-default" id="progressText"></p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-striped active" id="sync-progress" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div> <!-- ./products  -->
                <hr/>
                <div class="panel-body">
                    <div class="form-group">
                        <form action="<?php echo $action; ?>" method="post" class="form-horizontal sync-category"  data-token="<?php echo $token ?>" data-operation="0">
                            <label class="col-sm-2 control-label" for="input-name">ارسال دسته بندی ها</label>
                            <div class="col-sm-9">
                                <p class="shareino-text">اگر اولین بار میباشد که ماژول را نصب کرده اید یا اینکه دسته بندی های سایت خود را تغییر داده اید آن را برای شرینو ارسال کنید</p>
                            </div>
                            <div class="col-sm-1">
                                <button  id="state-btn-category" type="submit" class="buttons" title="ارسال دسته بندی های سایت شما">ارسال دسته بندی ها</button>
                            </div>
                        </form>
                    </div>
                </div> <!-- ./category  -->
                <hr/>
                <div class="panel-body">
                    <div class="form-group">
                        <form action="<?php echo $action; ?>" method="post" class="form-horizontal shareino-form-token" id="shareino_api_token" data-token="<?php echo $token ?>">
                            <label class="col-sm-2 control-label" for="input-name">توکن دریافتی از شرینو</label>
                            <div class="col-sm-9">
                                <input type="text" id="shareino_api_token" name="shareino_api_token" value="<?php echo $shareino_api_token; ?>" placeholder="توکن فروشگاهی خود در سایت شرینو را در اینجا وارد کنید." class="form-control input_shareino_api_token"/>
                            </div>
                            <div class="col-sm-1">

                                <button type="submit" class="buttons" title="ذخیره توکن">ذخیره توکن</button>
                            </div>
                        </form>
                    </div>
                </div><!-- ./token  -->
                <div class="panel-footer"></div>
            </div>
        </div>
    </div>
    <style>
        @font-face {
            font-family: 'BYekan';
            src: url('view/shareino-fonts/fonts/BYekan.eot?#') format('eot'),
                url('view/shareino-fonts//BYekan.woff') format('woff'),
                url('view/shareino-fonts/BYekan.ttf') format('truetype');
        }
        .shareio-fa{
            font-family: 'BYekan';
            font-size: 14px;
        }
        .input_shareino_api_token{
            width: 500px;
        }
        .shareino-text{
            font-size: 14px;
            padding: 8px;
        }
        .logo{
            width:220px;
            float:left;
        }
        ul{
            padding:0;
            list-style-type: none;
        }
            .progress {
            height: 20px;
            margin-bottom: 20px;
            overflow: hidden;
            background-color: #f5f5f5;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
        }
        .progress-bar {
            float: left;
            width: 0;
            height: 100%;
            font-size: 12px;
            line-height: 20px;
            color: #fff;
            text-align: center;
            background-color: #337ab7;
            -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
            box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
            -webkit-transition: width .6s ease;
            -o-transition: width .6s ease;
            transition: width .6s ease;
        }
        .progress-striped .progress-bar,
        .progress-bar-striped {
            background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
            background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
            background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
            -webkit-background-size: 40px 40px;
            background-size: 40px 40px;
        }
        .progress.active .progress-bar,
        .progress-bar.active {
            -webkit-animation: progress-bar-stripes 2s linear infinite;
            -o-animation: progress-bar-stripes 2s linear infinite;
            animation: progress-bar-stripes 2s linear infinite;
        }
    </style>
<script>
    $(function() {
        var messageBox = $("#MessageBox");
        var messageText = $("#MessageText");
        var token = $(".sync-category").attr('data-token');
        var operation = null;
        var stop = false;
        // ارسال دسته بندی ها
        $('.sync-category').on('submit', function(e) {
            e.preventDefault();
            messageBox.hide();
            operation = $('.sync-category').attr("data-operation");
            operation === "1" ? startSync('#state-btn-category', '#state-icon-category', '.sync-category') : stopSync('#state-btn-category', '#state-icon-category', '.sync-category');
            if (stop) {
                $.ajax({
                    type: 'POST',
                    dataType: 'JSON',
                    url: 'index.php?route=module/shareino/syncCategory&token=' + token,
                    data: {
                        ajax: true,
                        controller: 'shareino',
                        action: 'syncCategory',
                        ids: 1
                    },
                    success: function(data, textStatus, jqXHR) {
                        if (data.status === false) {
                            messageText.html("توکن وارد شده صحیح نمیباشد.");
                            messageBox.show(500);
                            messageBox.addClass('alert-danger');
                        } else if (data.status === true) {
                            messageText.html("دسته بندی ها شما با موفقیت به سایت شرینو ارسال شد.");
                            messageBox.show(500);
                            messageBox.addClass('alert-success');
                            startSync('#state-btn-category', '#state-icon-category', '.sync-category');
                        }
                    },
                    error: function(data) {
                        messageText.html(data.data);
                        messageBox.show(500);
                        messageBox.addClass("alert-danger");
                    }
                });
            }
        });
        // ارسال محصولات

        var productIDs = [<?php echo implode(',', $productIDs)?>];
        var lenght = productIDs.length;
        var progress = $("#progress");
        var submitProgress = $("#sync-progress");
        var progressText = $("#progressText");
        var chunk = 50;

        $('.sync-products').on('submit', function(e) {
            e.preventDefault();
            messageBox.hide();
            progress.show(500);
            operation = $('.sync-products').attr("data-operation");
            submitProgress.show();
            SyncProducts();

            lenght = productIDs.length;
        });

        function SyncProducts() {
            console.log(productIDs.length);
            if (productIDs.length <= 0) {
                messageText.html("تمام محصولات شما با موفقیت به سایت شرینو ارسال شد.");
                messageBox.show(500);
                messageBox.addClass('alert-success');
                startSync('#state-btn-product', '#state-icon-product', '.sync-products');
                return;
            }
            var IDs = productIDs.splice(0, chunk);
            operation === "1" ? startSync('#state-btn-product', '#state-icon-product', '.sync-products') : stopSync('#state-btn-product', '#state-icon-product', '.sync-products');
            if (stop) {
                $.ajax({
                    type: 'POST',
                    dataType: 'JSON',
                    url: 'index.php?route=module/shareino/SyncProducts&token=' + token,
                    data: {
                        ajax: true,
                        controller: 'shareino',
                        action: 'SyncProducts',
                        token: token,
                        ids: IDs
                    },
                    success: function(data) {
                        if (data.status === false) {
                            messageText.html("توکن وارد شده صحیح نمیباشد.");
                            messageBox.show(500);
                            messageBox.addClass('alert-danger');
                        } else {
                            setPercentage();
                            SyncProducts();
                        }
                    },
                    error: function(data) {
                        messageText.html(data.data);
                        messageBox.show(500);
                        messageBox.addClass("alert-danger");
                    }
                });
            }
        }

        function setPercentage() {
            var percentage = Math.round(((lenght - productIDs.length) * 100) / lenght);
            percentage = percentage > 100 ? 100 : percentage;
            var text = " تعداد " + (lenght - productIDs.length) + " از " + lenght + " کالا ارسال شد.";
            progressText.html(text);
            submitProgress
                .css("width", percentage + "%")
                .attr("aria-valuemin", percentage + "%")
                .html(percentage + "%");
        }

        function stopSync(btn, i, form) {
            $(btn).addClass('btn-danger');
            $(i).removeClass('fa-send');
            $(i).addClass('fa-stop');
            $(form).attr("data-operation", "1");
            stop = true;
        }

        function startSync(btn, i, form) {
            $(btn).removeClass('btn-danger');
            $(i).addClass('fa-send');
            $(form).attr("data-operation", "0");
            stop = false;
        }
    });
</script>
    <?php echo $footer; ?>