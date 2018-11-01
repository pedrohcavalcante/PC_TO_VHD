-- Process
process (CLK)
begin
	if CLK'event and CLK='1' then
		Q <= D;
	endif;
end process;

with comp1 select 
	S3 <= '0' when '0',
		  '2' when others;
with S3 select
	S2 <= '0' when '0',
		  '2' when others;
with start select	
	S1 <= '0' when '0',
		  '1' when others;
with Q select	
	S4 <= S1  when '00',
		  S2  when '01',
		  '3' when '10', 
		  S3  when '11';
with reset select	
	S5 <= S4  when '0',
		  '0' when others;
with Q select
	S6 <= '0' & start & start & '0' when '00',
		  '01' when '01,
		  '14' when '10', 
		  '09' when '11';
-- Falta a declaração dos fios, dos sinais, das saídas e entradas, e fazer a parte do comparador
