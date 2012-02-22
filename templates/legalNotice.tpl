{include file="documentHeader"}
<head>
	<title>{lang}wcf.legalnotice.title{/lang} - {lang}{PAGE_TITLE}{/lang}</title>
	{include file='headInclude' sandbox=false}
</head>
<body{if $templateName|isset} id="tpl{$templateName|ucfirst}"{/if}>
{include file='header' sandbox=false}

<div id="main">
	<ul class="breadCrumbs">
		<li><a href="index.php?page=Index{@SID_ARG_2ND}"><img src="{icon}indexS.png{/icon}" alt="" /> <span>{lang}{PAGE_TITLE}{/lang}</span></a> &raquo;</li>
	</ul>

	<div class="mainHeadline">
		<img src="{icon}legalNoticeL.png{/icon}" alt="" />
		<div class="headlineContainer">
			<h2>{lang}wcf.legalnotice.title{/lang}</h2>
			<p>{lang}wcf.legalnotice.description{/lang}</p>
		</div>
	</div>
	
	{if $userMessages|isset}{@$userMessages}{/if}
	
	<div class="border content">
		<div class="container-1">
			<h3 class="subHeadline">{lang}wcf.legalnotice.general{/lang}</h3>
			
			{if LEGALNOTICE_NAME}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.name{/lang}</p>
					<p class="formField">{if LEGALNOTICE_USERID && $this->user->getPermission('user.profile.canView')}<a href="index.php?page=User&amp;userID={LEGALNOTICE_USERID}{@SID_ARG_2ND}">{lang}{LEGALNOTICE_NAME}{/lang}</a>{else}{lang}{LEGALNOTICE_NAME}{/lang}{/if}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_ADDRESS}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.address{/lang}</p>
					<p class="formField">{lang}{@LEGALNOTICE_ADDRESS|htmlspecialchars|nl2br}{/lang}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_EMAIL || LEGALNOTICE_EMAIL_USERID_USE && LEGALNOTICE_EMAIL_USERID && $this->user->getPermission('user.mail.canMail')}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.email{/lang}</p>
					<p class="formField">{if LEGALNOTICE_EMAIL_USERID_USE && LEGALNOTICE_EMAIL_USERID && $this->user->getPermission('user.mail.canMail')}<a href="index.php?form=Mail&amp;userID={LEGALNOTICE_EMAIL_USERID}{@SID_ARG_2ND}">{lang}wcf.legalnotice.email.userid{/lang}</a>{else}<a href="mailto:{@LEGALNOTICE_EMAIL}">{@LEGALNOTICE_EMAIL}</a>{/if}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_PHONE}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.phone{/lang}</p>
					<p class="formField">{lang}{@LEGALNOTICE_PHONE|htmlspecialchars|nl2br}{/lang}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_FAX}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.fax{/lang}</p>
					<p class="formField">{lang}{LEGALNOTICE_FAX}{/lang}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_REPRESENTATIVE}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.representative{/lang}</p>
					<p class="formField">{lang}{@LEGALNOTICE_REPRESENTATIVE|htmlspecialchars|nl2br}{/lang}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_REGISTER}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.register{/lang}</p>
					<p class="formField">{lang}{LEGALNOTICE_REGISTER}{/lang}</p>
				</div>
			{/if}
			
			{if LEGALNOTICE_VAT_ID}
				<div class="formElement">
					<p class="formFieldLabel">{lang}wcf.legalnotice.vatid{/lang}</p>
					<p class="formField">{lang}{LEGALNOTICE_VAT_ID}{/lang}</p>
				</div>
			{/if}
		
			{if LEGALNOTICE_TEXT}
				<h4 class="subHeadline">{lang}wcf.legalnotice.text{/lang}</h4>
				<p>{lang}{@$legalnoticetext}{/lang}</p>
			{/if}
			
			{if $additionalInformation|isset}{@$additionalInformation}{/if}
		</div>
	</div>
	{if LEGALNOTICE_BRANDINGFREE != 1}
		<div style="text-align: center;">{lang}wcf.global.page.legalnotice.copyright{/lang}</div>
	{/if}
</div>

{include file='footer' sandbox=false}
</body>
</html>