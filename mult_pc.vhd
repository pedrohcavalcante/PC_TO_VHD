process (CLK)
begin
	if CLK'event and CLK='1' then
		Q <= D;
	endif;
end process;

with comp1 select
	S1 <= '0' when '0',
		  '6' when others;
with comp0 select
	S2 <= '5' when '0',
		  '2' when others;
with start select
	S3 <= '0' when '0',
		  '1' when others;
with Q select
	S4 <= S3  when '000', 
		  S2  when '001', 
		  '3' when '010', 
		  '4' when '011', 
		  '5' when '100', 
		  '7' when '110', 
		  S1  when others; 
with reset select
	S5 <= S4 when '0',
		  '0' when others;
with Q select
	S7 <= '0' & start & start & '0' & '0' & '0' when '00',
		  '00' when '000', 
		  '01' when '001', 
		  '22' when '010', 
		  '44' when '011', 
		  '09' when '100', 
		  '84' when '101', 
		  '11' when '110';
-- Falta terminar o comparador e fazer as saídas