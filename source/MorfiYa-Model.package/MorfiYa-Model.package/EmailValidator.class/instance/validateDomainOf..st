private
validateDomainOf: anEmailAddress
 
	"Validate the domain of an email address. For example for: arya.stark@gmail.com, gmail.com is be a valid email domain" 
	|domainSubstring|
	domainSubstring := (anEmailAddress substrings: '@') last.
	^self validDomains anySatisfy:[:domain | domainSubstring includesSubstring: domain ]
