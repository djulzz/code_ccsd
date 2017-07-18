create table class_content_association
	(
		association_id decimal( 4, 0 ) primary key,
		class_id varchar( 50 ) not null,
		content_type varchar( 50 ) not null,
		content_grade decimal( 3, 2 ) not null
		);

	