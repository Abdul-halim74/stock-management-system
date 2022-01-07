@extends('layouts.landing_app')

@push('css')


@endpush


@section('content')
<div class="flex-1"
    style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;">
    <div class="container py-1 py-lg-1 my-lg-5 px-4 px-sm-0">



        <div class="row responsive_text">

            <div class="col-md-5 col-lg-5 col-sm-12">

                <div class="card p-4 rounded-plus bg-faded shop-login" style="height: auto;">
                    @if(Session::get('errors') || count( $errors ) > 0)
                    @foreach ($errors->all() as $error)
                    <span style="color: red; font-weight:bold; font-size:12px;"><strong>{{ $error }}</strong></span>
                    <hr>
                    @endforeach
                    @endif
                    <h4 style="font-size:20px; line-height: 24px; color:#3b76bb; text-align: center;">
                        @lang('landing.shopkeeper_login')</h4>
                    <form id="login_form" name="login-form" method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <label class="form-label" for="email"> @lang('landing.mobile')</label>
                            <input type="text" autocomplete="off" id="email" name="email"
                                class="form-control form-control-sm" placeholder="017*******1" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="password"> @lang('landing.password') </label>
                            <input type="password" autocomplete="off" id="password" name="password"
                                class="form-control form-control-sm" placeholder="@lang('landing.password')" required>
                        </div>

                        <div class="row" style="margin: 0 0 15px 0;">
                            <div class="col-lg-6  reset_btn">
                                <button type="reset"
                                    class="btn btn-info btn-block btn-sm ">@lang('landing.reset')&nbsp;<i
                                        class="fas fa-sync-alt"></i></button>
                            </div>

                            <div class="col-lg-6">
                                <button id="js-login-btn" type="submit"
                                    class="btn btn-danger btn-block btn-sm">@lang('landing.login')&nbsp;<i
                                        class="far fa-sign-in-alt"></i></button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>

    </div>
</div>

<div class="flex-1"
    style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;">
    <div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">


    </div>
</div>


</div>
</div>
</div>

<!-- Messenger Chat Plugin Code -->
<div id="fb-root"></div>
<!-- Your Chat Plugin code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>
<script>
var chatbox = document.getElementById('fb-customer-chat');
chatbox.setAttribute("page_id", "110550761466578");
chatbox.setAttribute("attribution", "biz_inbox");
</script>
<!-- Your SDK code -->
<script>
window.fbAsyncInit = function() {
    FB.init({
        xfbml: true,
        version: 'v12.0'
    });
};
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>


@endsection

@push('js')

<script>
$.validator.addMethod('phone', function(value) {
    return /\b(88)?01[3-9][\d]{8}\b/.test(value);
}, 'Please enter valid phone number');


$("#login_form").validate({
    rules: {
        email: {
            required: true,
            phone: true
        }
    },
    messages: {
        email: {
            required: 'please enter your mobile number',
        }
    },
});
</script>




@endpush