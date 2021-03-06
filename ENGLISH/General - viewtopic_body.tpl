<br />
<!----------------------------------------------->
<!-- NAVIGATION LINKS -------------->

<div class="navigation_links">

    <!-- Nav chain: Category > Forum > Subforum -->
    <span class="navigation_chain">
        {NAV_CAT_DESC}
    </span>

    <!-- Pagination -->
    <span class="right pagination page-topic">
        {PAGINATION}
    </span>

</div>

<!----------------------------------------------->
<!-- MANAGEMENT BAR -------------->

<div class="links_bar">
  
        <!-- Button: new -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" rel="nofollow"><img class="newtopic_button" src="{POST_IMG}" class="{POST_IMG_CLASS}" alt="{L_POST_NEW_TOPIC}" /></a>&nbsp;
        <!-- END switch_user_authpost -->

        <!-- Button: reply -->
        <!-- BEGIN switch_user_authreply -->
        <a class="buttons" href="{U_POST_REPLY_TOPIC}"><img class="reply_button" src="{REPLY_IMG}" class="i_reply" alt="{L_POST_REPLY_TOPIC}" /></a>
        <!-- END switch_user_authreply -->
  
    <!-- BEGIN switch_plus_menu -->
    <span class="right">
        <a href="{U_FAVOURITE_JS_PLUS_MENU}">Add topic to favourites</a>
    </span>
    <!-- END switch_plus_menu -->
  
</div>

<!----------------------------------------------->
<!-- POSTS -------------->


<!-- Post container -->
<div class="container">

    <!-- Post title -->
    <h1 class="page-title">{TOPIC_TITLE}</h1>
    
    <!-- Posters list -->
    {POSTERS_LIST}


    <!-- Poll (template: viewtopic_poll_ballot /// viewtopic_poll_result) -->
    {POLL_DISPLAY}


    <!-- Post view -->
    <!-- BEGIN postrow -->
    <!-- BEGIN displayed -->
    <div id="{postrow.displayed.U_POST_ID}"></div>
    <div class="post_row post--{postrow.displayed.U_POST_ID}" id="p{postrow.displayed.U_POST_ID}">

        <!-- Post info container -->
        <div class="post_details">

            <span class="post_date">
                <!-- Anchor link to post -->
                <a href="{postrow.displayed.POST_URL}">{postrow.displayed.POST_SUBJECT}</a>
			&nbsp;
                <!-- Post date -->
                {postrow.displayed.POST_DATE_NEW}
            </span>
              
                <!-- Post edit buttons -->
                <ul class="profile-icons ">
                    <li>{postrow.displayed.QUOTE_IMG}</li>
                    <li>{postrow.displayed.EDIT_IMG}</li>
                    <li>{postrow.displayed.DELETE_IMG}</li>
                    <li>{postrow.displayed.IP_IMG}</li>
                </ul>
          
                <!-- Like button container -->
                <!-- BEGIN switch_likes_active -->
                <div class="like_button">

                    <!-- "Like" button -->
                    <button class="rep-button {postrow.displayed.switch_likes_active.C_VOTE_LIKE}" data-href="{postrow.displayed.switch_likes_active.U_VOTE_LIKE}" data-href-rm="{postrow.displayed.switch_likes_active.U_VOTE_RM_LIKE}">

                        <!-- "Like" text -->
                        <span class="like_text">{postrow.displayed.switch_likes_active.L_LIKE}</span>
                        <!-- "Like" counter -->
                        {postrow.displayed.switch_likes_active.COUNT_VOTE_LIKE}

                    </button>
                </div>
                <!-- END switch_likes_active -->
                <!-- Like button end -->


        </div>
        <!-- Details end -->


        <!-- Profile column -->
        <div class="post_profile" id="profile{postrow.displayed.U_POST_ID}">

            <center>
                <!-- Username -->
                <span class="post_pseudo">{postrow.displayed.POSTER_NAME}</span><br />

                <!-- Rank -->
                <span class="post_rank">
                    {postrow.displayed.POSTER_RANK_NEW} <!-- Textuel -->
                    {postrow.displayed.RANK_IMAGE} <!-- Image -->
                </span><br />
            </center>

            <!-- Avatar -->
            <div class="post_avatar">
                {postrow.displayed.POSTER_AVATAR}
            </div>

            <br />

            <!-- Online -->
            <center>
                <div class="{postrow.displayed.ONLINE_IMG_NEW}"> <!-- SEE CSS .online -->
                	{postrow.displayed.ONLINE_IMG_NEW}<!-- Text -->
                </div>
            </center>

            <br />

            <div class="post_userinfo">
               
               <!-- Profile fields -->
              
                <!-- BEGIN profile_field -->
                    <div class="user_field">
                        <!-- Profile field label -->
                        <span class="field_label">{postrow.displayed.profile_field.LABEL}</span>
                      
                        <!-- Profile field contents -->
                        <span class="field_content">{postrow.displayed.profile_field.CONTENT}</span>
                      
			<!-- Profile field separator -->                   
                        <span class="field_separator">{postrow.displayed.profile_field.SEPARATOR}</span>
                    </div>
                <!-- END profile_field -->
                <!-- Profile fields end -->

                <!-- Character sheet profile field -->
                {postrow.displayed.POSTER_RPG}

            </div>

            <br />

            <!-- Contact link -->
            <div class="profil_contact">
                {postrow.displayed.PROFILE_IMG} &nbsp; <!-- Profile -->
                {postrow.displayed.PM_IMG} &nbsp; <!-- PM -->
                <!-- Other contact-->
                <!-- BEGIN contact_field -->
                {postrow.displayed.contact_field.CONTENT} <!-- Other contact fields -->
                <!-- END contact_field -->
            </div>

        </div>
        <!-- End profile column -->


        <!-- Post contents -->
        <div class="post_message postbody content">
            <div>{postrow.displayed.MESSAGE}</div>

            <!-- Signature -->
            <!-- BEGIN switch_signature -->
            <div class="signature_div" id="sig{postrow.displayed.U_POST_ID}">{postrow.displayed.SIGNATURE_NEW}</div>
            <!-- END switch_signature -->

        </div>
        <!-- Post contents end -->
    </div>

    <!-- END displayed -->
    <!-- END postrow -->
    <!-- End view post -->

</div>
<!-- End posts -->


<!----------------------------------------------->
<!-- MANAGEMENT BAR -------------->


<div class="links_bar">
  
        <!-- "Watch topic" link -->
        <!-- BEGIN switch_user_logged_in -->
        <!-- BEGIN watchtopic -->
        <span class="specials_links">{S_WATCH_TOPIC}</span>
        <!-- END watchtopic -->
        <!-- END switch_user_logged_in -->
        
        <!-- BEGIN switch_plus_menu -->
        <!-- "Watched topics" link -->
        &nbsp;<a class="specials_links" href="{U_WATCHSEARCH_JS_PLUS_MENU}">Watched topics</a>
        <!-- END switch_plus_menu -->

    <!-- Pagination -->
    <!-- BEGIN topicpagination -->
    <span class="pagination right">{PAGINATION}</span>
    <!-- END topicpagination -->

</div>


<!----------------------------------------------->
<!-- CATEGORY RULES (if enabled) -------------->

<!-- BEGIN switch_forum_rules -->
<div class="panel" id="forum_rules">

    <!-- "Rules" title -->
    <div class="h3">{L_FORUM_RULES}</div>

    <!-- Rules -->
    <div class="postbody">
        <!-- Rules image -->
        <!-- BEGIN switch_forum_rule_image -->
        <img class="left logo" src="{RULE_IMG_URL}" alt="" />
        <!-- END switch_forum_rule_image -->

        <!-- Contents -->
        {RULE_MSG}
    </div>

</div>
<!-- END switch_forum_rules -->


<!----------------------------------------------->
<!-- QUICK REPLY -------------->

<div class="container quickreply" id="quickreply_content">
    <!-- BEGIN switch_user_logged_in -->
    {QUICK_REPLY_FORM}
    <!-- END switch_user_logged_in -->
</div>


<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->


<div class="links_bar">
        <!-- Button: new -->
        <!-- BEGIN switch_user_authpost -->
        <a class="buttons" href="{U_POST_NEW_TOPIC}" rel="nofollow"><img class="newtopic_button" src="{POST_IMG}" class="{POST_IMG_CLASS}" alt="{L_POST_NEW_TOPIC}" /></a>&nbsp;
        <!-- END switch_user_authpost -->
      
        <!-- Button: new -->
        <!-- BEGIN switch_user_authreply -->
        <a class="buttons" href="{U_POST_REPLY_TOPIC}"><img class="reply_button" src="{REPLY_IMG}" class="i_reply" alt="{L_POST_REPLY_TOPIC}" /></a>
        <!-- END switch_user_authreply -->

    <!-- BEGIN switch_plus_menu -->
    <span class="right">
        <a href="{U_FAVOURITE_JS_PLUS_MENU}">Add topic to favourites</a>
    </span>
  <!-- END switch_plus_menu -->

</div>

<br/>

<!----------------------------------------------->
<!-- JUMP TO ANOTHER FORUM -------------->


<form action="{S_JUMPBOX_ACTION}" method="get" onsubmit="if(document.jumpbox.f.value == -1){return false;}" class="left">
    <fieldset class="jumpbox">
        <label>{L_JUMP_TO}:&nbsp;</label>
        {S_JUMPBOX_SELECT}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
</form>


<!----------------------------------------------->
<!-- MODERATION TOOLS -------------->

<!-- BEGIN viewtopic_bottom -->
<form method="get" action="{S_FORM_MOD_ACTION}" class="right">
    <fieldset class="quickmod">
        <input type="hidden" name="t" value="{TOPIC_ID}" />

        <!-- <input type="hidden" name="sid" value="{S_SID}" /> -->
        <input type="hidden" name="{SECURE_ID_NAME}" value="{SECURE_ID_VALUE}" />
        <label>{L_MOD_TOOLS}:&nbsp;</label>
        {S_SELECT_MOD}&nbsp;
        <input class="button2" type="submit" value="{L_GO}" />
    </fieldset>
  <span class="right">{S_TOPIC_ADMIN}</span>
</form>
<!-- END viewtopic_bottom -->



<div class="clear"></div>

<!-- Image resize scrip -->
<!-- BEGIN switch_image_resize -->
<script type="text/javascript">
    //<![CDATA[
    $(resize_images({
        'selector': '.postbody .content',
        'max_width': {
            switch_image_resize.IMG_RESIZE_WIDTH
        },
        'max_height': {
            switch_image_resize.IMG_RESIZE_HEIGHT
        }
    }));
    //]]>

</script>
<!-- END switch_image_resize -->


<!-- BEGIN switch_plus_menu -->
<script type="text/javascript">
    //<![CDATA[
    var multiquote_img_off = '{JS_MULTIQUOTE_IMG_OFF}',
        multiquote_img_on = '{JS_MULTIQUOTE_IMG_ON}';

</script>
<!-- END switch_plus_menu -->
<script type="text/javascript">
    var hiddenMsgLabel = {
        visible: '{JS_HIDE_HIDDEN_MESSAGE}',
        hidden: '{JS_SHOW_HIDDEN_MESSAGE}'
    };
    showHiddenMessage = function(id) {
        try {
            var regId = parseInt(id, 10);
            if (isNaN(regId)) {
                regId = 0;
            }

            if (regId > 0) {
                $('.post--' + id).toggle(0, function() {
                    if ($(this).is(":visible")) {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.visible);
                    } else {
                        $('#hidden-title--' + id).html(hiddenMsgLabel.hidden);
                    }
                });
            }
        } catch (e) {}

        return false;
    };

    //]]>

</script>

            