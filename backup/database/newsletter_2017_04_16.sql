
CREATE TABLE `oc_newsletter` (
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;