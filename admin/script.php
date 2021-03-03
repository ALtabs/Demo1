<?php


if ($_POST['source']=="SMSModem") {
	# code...
	$mes=$_POST['message'];
	$phone = $_POST['to'];
	$attemp=0;
try{

	$message = $mes;
	$phoneNumber = $phone;

	if($message !=null && $phoneNumber !=null && $attemp==0){
		$url = "http://acer:9710/http/send-message?username=admin&password=teamwork2020&to=".$phoneNumber."&message-type=sms.automatic&message=".urlencode($message);

		$curl = curl_init($url);
		curl_setopt($curl,CURLOPT_RETURNTRANSFER, true);
		$curl_response = curl_exec($curl);

		if($curl_response === false){
			$info = curl_getinfo($curl);
			curl_close($curl);
			die('Error occurred'.var_export($info));
		}

		curl_close($curl);

		$attemp+=1;

	}
	
}catch(Exception $ex){
	echo "Exception: ".$ex;
}
}

?>