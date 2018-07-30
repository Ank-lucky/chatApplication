<!---Chat Room Page--->
<script rel="text/javascript" src="../JS/jquery-1.12.4.min.js"></script>
<script src="../../Controller/UserProfile.js"></script>
<!---code to retrieve user details--->
<cfset userId="#url.profile#" />
<cfif isDefined("url.profile")>
	<input type="hidden" id="userId" value=
	<cfoutput>
		"#userId#"
	</cfoutput>
<cfelse>
	<cflocation url="../../index.cfm"/>
</cfif>
<!---Template of the chat Room--->
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<title>
			Letz Chat
		</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
		<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
		<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
		<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
		<script src="../JS/animate.js"></script>
		<meta charset='UTF-8'>
		<meta name="robots" content="noindex">
		<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
		<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
		<link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" />
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>
		<script src="https://use.typekit.net/hoy3lrg.js"></script>
		<script>try{Typekit.load({ async: true });}catch(e){}</script>
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
		<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
		<link rel="stylesheet" type="text/css" href="../CSS/chatPageStyle.css">
	</head>
	<body>
		<div id="frame">
			<div id="sidepanel">
				<div id="profile" >
					<div class="wrap">
						<img id="profile-img" src="http://emilcarlsson.se/assets/mikeross.png" class="online" alt="" />
						<p id="userName">
						</p>
						<!-- Add the name of the user who login -->
						<i class="fa fa-chevron-down expand-button" aria-hidden="true">
						</i>
						<div id="status-options">
							<ul>
								<li id="status-online" class="active">
									<span class="status-circle">
									</span>
									<p>
										Online
									</p>
								</li>
								<li id="status-offline">
									<span class="status-circle">
									</span>
									<p>
										Offline
									</p>
								</li>
							</ul>
						</div>
						<div id="expanded">
							<label for="twitter">
								<i class="fa fa-facebook fa-fw" aria-hidden="true">
								</i>
							</label>
							<input name="twitter" type="text" id="fullName" />
							<label for="twitter">
								<i class="fa fa-instagram fa-fw" aria-hidden="true">
								</i>
							</label>
							<input name="twitter" type="text" id="emailId" />
							<label for="twitter">
								<i class="fa fa-instagram fa-fw" aria-hidden="true">
								</i>
							</label>
							<input name="twitter" type="text" id="gender" />
							<label for="twitter">
								<i class="fa fa-instagram fa-fw" aria-hidden="true">
								</i>
							</label>
							<input name="twitter" type="text" id="address" />
						</div>
						<button class="btn btn-info btn-lg" id="updateProfile" onclick="updateProfile()">
							<span class="glyphicon glyphicon-plus">
							</span>
							Update
						</button>
					</div>
				</div>
				<div id="search">
					<label for="">
						<i class="fa fa-search" aria-hidden="true">
						</i>
					</label>
					<input type="text" placeholder="Search contacts..." />
				</div>
				<div id="contacts">
					<ul>
						<!--- <cfloop> --->
						<li id="contactList">
							<div class="wrap">
								<!--- <span class="contact-status online"> -->
									<!-- 								</span> --->
								<!--- <img src="http://emilcarlsson.se/assets/louislitt.png" alt="" /> --->
								<!---<div class="meta">
									<p class="name" id="contactName"></p>
									<p class="preview">You just got LITT up, Mike.</p>
									</div>--->
							</div>
						</li>
						<!--- </cfloop> --->
						<!--- <li class="contact active"> --->
						<!--- 					<div class="wrap"> -->
							<!-- 						<span class="contact-status busy"></span> -->
							<!-- 						<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" /> -->
							<!-- 						<div class="meta"> -->
							<!-- 							<p class="name">Harvey Specter</p> -->
							<!-- 							<p class="preview">Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p> -->
							<!-- 						</div> -->
							<!-- 					</div> -->
							<!-- 				</li> --->
					</ul>
				</div>
				<div id="bottom-bar">
					<button id="addContact" onclick="searchToAddContact()" >
						<i class="fa fa-user-plus fa-fw" aria-hidden="true">
						</i>
						<span>
							Add contact
						</span>
					</button>
					<!-- The Modal -->
					<div id="myModal" class="modal">
						<!-- Modal content -->
						<div class="modal-content">
							<div class="modal-header">
								<span class="closed">
									&times;
								</span>
								<h2>
									Add Contact
								</h2>
							</div>
							<div class="modal-body">
								<!---Search bar and a list of contacts to be added, retrieve all those users--->
							</div>
						</div>
					</div>
					<button id="Logout">
						<i  aria-hidden="true">
						</i>
						<span>
							<a href="../../Controller/CF/login.cfm?logout=<cfoutput>#userId#</cfoutput>">
							Logout
						</span>
					</button>
				</div>
			</div>
			<div class="content">
				<div class="contact-profile">
					<!--- <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" /> -->
						<!-- 					<p> -->
						<!-- 						Harvey Specter -->
						<!-- 					</p> -->
						<!-- 					<div class="social-media"> -->
						<!-- 						<i class="fa fa-facebook" aria-hidden="true"> -->
						<!-- 						</i> -->
						<!-- 						<i class="fa fa-twitter" aria-hidden="true"> -->
						<!-- 						</i> -->
						<!-- 						<i class="fa fa-instagram" aria-hidden="true"> -->
						<!-- 						</i> -->
						<!-- 					</div> --->
				</div>
				<div class="messages">
					<ul>
						<!--- <li class="sent"> -->
							<!-- 							<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /> -->
							<!-- 							<p> -->
							<!-- 								How the hell am I supposed to get a jury to believe you when I am not even sure that I do?! -->
							<!-- 							</p> -->
							<!-- 						</li> -->
							<!-- 						<li class="replies"> -->
							<!-- 							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" /> -->
							<!-- 							<p> -->
							<!-- 								When you're backed against the wall, break the god damn thing down. -->
							<!-- 							</p> -->
							<!-- 						</li> -->
							<!-- 						<li class="replies"> -->
							<!-- 							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" /> -->
							<!-- 							<p> -->
							<!-- 								Excuses don't win championships. -->
							<!-- 							</p> -->
							<!-- 						</li> --->
					</ul>
				</div>
				<div class="message-input">
					<div class="wrap">
						<input type="text" placeholder="Write your message..." />
						<i class="fa fa-paperclip attachment" aria-hidden="true">
						</i>
						<button class="submit">
							<i class="fa fa-paper-plane" aria-hidden="true">
							</i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
