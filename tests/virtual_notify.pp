define my_notify($message){
  notify { $name:
    message => $message,
  }
}


$notify = { 'hi' => { 'message' => 'Hello world!'},
            'goodbye' => { 'message' => 'Goodbye moon!'} }

$my_notify = { 'my_hi' => { 'message' => 'Hello world!'},
               'my_goodbye' => { 'message' => 'Goodbye moon!'} }

create_virtual_resources('notify', $notify)
create_virtual_resources('my_notify', $my_notify)

realize(Notify['hi'])
realize(My_notify['my_goodbye'])
