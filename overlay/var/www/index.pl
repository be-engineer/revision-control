#!/usr/bin/perl

print <<EOF;
Content-Type: text/html; charset=utf-8


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="Content-Style-Type" content="text/css">
        <meta http-equiv="Content-Script-Type" content="text/javascript">

        <title>TurnKey Revision Control</title>
        
        <link rel="stylesheet" href="css/ui.tabs.css" type="text/css" media="print, projection, screen">
        <link rel="stylesheet" href="css/base.css" type="text/css">

        <script src="js/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="js/ui.core.js" type="text/javascript"></script>
        <script src="js/ui.tabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            \$(function() {
                \$('#container-1 > ul').tabs({ fx: { opacity: 'toggle'} });
            });
        </script>
    </head>

    <body>
        <h1>TurnKey Revision Control</h1>
        
        <div id="container-1">
            <ul>
                <li><a href="#cp"><span>Control Panel</span></a></li>
                <li><a href="#examples"><span>Examples</span></a></li>
            </ul>

            <div id="cp">
                <div class="fragment-content">
                    <div></div>
                    <div>
                        <a href="/git"><img
                        src="images/git.png"/>Git</a><br />
                        <font size="-4">
                        via <a href="https://git-scm.com/book/en/v2/Git-on-the-Server-GitWeb">GitWeb</a>
                        </font>
                    </div>
                    <div>
                        <a href="/svn"><img
                        src="images/subversion.png"/>Subversion</a><br />
                        <font size="-4">
                        via <a href="http://viewvc.org/">ViewVC</a>
                        </font>
                    </div>
                    <div>
                        <a href="https://$ENV{HTTP_HOST}:12320"><img
                        src="images/shell.png"/>Web Shell</a>
                    </div>
                    <div>
                        <a href="https://$ENV{HTTP_HOST}:12321"><img
                        src="images/webmin.png"/>Webmin</a>
                    </div>
                    <div></div>
                    <h2>Resources and references</h2>
                    <ul>
                        <li>
                          <b>Official project websites:</b>
                          <a href="https://git-scm.com">Git</a>,
                          <a href="https://subversion.apache.org/">Subversion</a>
                        </li>
                        <li>
                          <b>Local documentation:</b>
                          <a href="/docs/git">Git</a>,
                          <a href="/docs/svn">Subversion</a>
                        </li>
                        <li>
                          <b>Wikipedia on revision control:</b> <a href="http://en.wikipedia.org/wiki/Revision_control">Overview</a>, <a
href="http://en.wikipedia.org/wiki/Distributed_revision_control">Centralized
vs. Distributed</a>, <a href="http://en.wikipedia.org/wiki/Comparison_of_revision_control_software">Comparisons</a> 
                        </li>
                        <li><a href="https://www.turnkeylinux.org/revision-control">TurnKey Revision Control release notes</a></li>
                    </ul>

                </div>
            </div>

            <div id="examples">
                <div class="fragment-content">
                    <h1>Clone/checkout repository (helloworld)</h1>

                    <h2>Git via SSH</h2>
                    <pre>git clone ssh://vcs\@$ENV{'HTTP_HOST'}/~/git/helloworld</pre>

                    <h2>Subversion via SVN</h2>
                    <pre>svn co svn://$ENV{'HTTP_HOST'}/svn/helloworld</pre>
                </div>
            </div>

        </div>
    </body>
</html>
EOF
