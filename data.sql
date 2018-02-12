/* Add your SQL below to extract analyze your state data from at least four layers */

/* *************************************************************** */
/*Create a layer for the kentucky area polygon*/
create table
  kentucky_area
as
/* 1: Extract your state polygon */
/* Select Kentucky state polygon with population and square miles*/

select
	/* select columns for output table */
	id,
	geom,
	name,
  st_astext(geom) as st_astext,
  (pop::numeric/sq_miles::numeric) as pop_per_sq_mile

from
	stateareas_ky_oh_in
where
	"name" = 'Kentucky';

alter table
     kentucky_area
  add primary key(id);

/* *************************************************************** */
