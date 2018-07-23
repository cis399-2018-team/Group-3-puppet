node ip-10-0-5-169 {
    include sshd
    include apache2
}

node ip-10-0-5-58 {
    include sshd
    include apache2
}

node ip-10-0-5-189 {
    include sshd

    cron { "puppet update":
            command => "cd /etc/puppet && git pull -q origin master",
            user    => root,
            minute  => "*/5",
    }
}
