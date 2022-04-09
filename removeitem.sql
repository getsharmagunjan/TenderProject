DELIMITER //
create procedure removeitem(id int)
begin
delete from biddings where itemid=id;
delete from items where itemid=id;
commit;
end
//
DELIMITER;
