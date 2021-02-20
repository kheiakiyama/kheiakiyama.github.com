require "html-proofer"

HTMLProofer.check_directory("./_site", opts = {
:check_html => true,
:check_img_http => true,
:report_invalid_tags => true,
:only_4xx => true,
:url_ignore => [/twitter.com/],
}).run
