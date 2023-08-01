
Library ieee;
Use ieee.std_logic_1164.All;
Use ieee.numeric_std.All;
Use ieee.std_logic_unsigned.All;

	Entity MCP4921 Is
		generic(PHASE_GEN: INTEGER:=4);
		Port
		(   	oncycle: in std_logic_vector(3 downto 0);
				offcycle: in std_logic_vector(3 downto 0);
		
				clk_50MHz 	: In std_logic;
				reset 		: In std_logic;
	
				Dout 		: Out std_logic;
				CS	 		: Out std_logic;
				Sclk 		: Out std_logic;
				LDAC 		: Out std_logic
				--clk1_KHz	: Out std_logic
				--output	 	: Out std_logic_vector(9 downto 0)
		);				
	End MCP4921;

Architecture behave Of MCP4921 is
	--constant phase: std_logic_vector(4 downto 0);
	signal CLK_25MHz	: std_logic:='0';
	signal clk_1KHz	: std_logic:='0';
	signal count	: std_logic_vector (7 downto 0):= x"00";
	signal point_count, point_count1: std_logic_vector (7 downto 0):= x"00";
	signal op_bit	: std_logic_vector (15 downto 0):= x"0000";
	signal bit_count: std_logic_vector (7 downto 0):= x"0F";
	signal counter	: std_logic_vector (7 downto 0):= x"00";
	signal count_1KHz: std_logic_vector (15 downto 0):= x"0000";
	signal rx_buf	: std_logic_vector (9 downto 0):= b"0000000000";
	
	TYPE SINE IS ARRAY (23 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	--SIGNAL POINT: SINE :=(x"800",x"BFF",x"EEE",x"FFF",x"EEE",x"BFF",x"800",x"400",x"111",x"000",x"111",x"400");
	
	--SIGNAL POINT: SINE :=(X"045",x"111",X"257",x"400",X"5ED",x"800",x"A11",x"BFF",X"DA7",x"EEE",X"FB9",x"FFF",X"FB9",x"EEE",X"DA7",x"BFF",x"A11",x"800",X"5ED",X"400",X"257",x"111",X"045",x"000");
	SIGNAL POINT: SINE :=(x"800",X"5ED",X"400",X"257",x"111",X"045",x"000",X"045",x"111",X"257",x"400",X"5ED",x"800",x"A11",x"BFF",X"DA7",x"EEE",X"FB9",x"FFF",X"FB9",x"EEE",X"DA7",x"BFF",x"A11");
   --SIGNAL POINT1: SINE :=(X"5ED",x"5ED",X"5ED",x"5ED",X"5ED",x"5ED",x"5ED",x"5ED",X"5ED",x"5ED",X"5ED",x"5ED",X"5ED",x"5ED",X"5ED",x"5ED",x"5ED",x"5ED",X"5ED",X"5ED",X"5ED",x"5ED",X"5ED",x"5ED");
	SIGNAL POINT1: SINE :=(others=> X"800");
	
	signal oncount,offcount: std_logic_vector(3 downto 0):=(others=>'0');
	signal phase:std_logic_vector(4 downto 0);
	
Begin	
	
	Sclk <= CLK_25MHz;
	
Sclock: process(clk_50MHz)
	begin									 		                -- CREATING A 25MHZ CLOCK
		if (clk_50MHz'event and clk_50MHz = '1') then
			--if(count = x"2f") then
				CLK_25MHz <= not CLK_25MHz;
			--	count <= x"00";
			--else
				--count <= count+'1';	
			--end if;
		end if;	
	end process	;
	
	
	
	process(CLK_25MHz)
	
	begin
	   
		
		
		if(CLK_25MHz'event and CLK_25MHz = '0') then

		
			if(reset = '1')	then
				counter <= x"00";                       -- COUNTER BEING USED TO CHANGE STATES
				Dout 	<= '1';	
				CS	 	<= '1';
				LDAC	<= '1';
				op_bit(15 downto 12)<= x"3";
				bit_count <= x"0F";                  -- COUNTS 15 TO 0
				phase <= std_logic_vector(to_unsigned(PHASE_GEN,5));						--starting phase initialised here
			elsif(counter = x"00") then
				Dout 	<= '1';                                 -- COUNTER = 00 STATE BEING USED TO LOAD THE FRAME
				CS	 	<= '1';	
				LDAC	<= '1';	
				if(count_1KHz = x"0056") then		-- 00bd=5khz,  0056=10khz
					counter <= x"01";
					count_1KHz <=  x"0000";
					point_count <= point_count + '1';
					phase <= phase +'1';
					if(phase="10111") then
					phase<= "00000";
					end if;
					
					if(point_count>= x"00" and point_count<= x"16") then
						op_bit(11 downto 00)<=  POINT(to_integer (unsigned (phase)));
						
					elsif(point_count = x"17") then
						op_bit(11 downto 00)<=  POINT(to_integer (unsigned (phase)));
						point_count <= x"00";
			    		phase <= std_logic_vector(to_unsigned(PHASE_GEN,5));    --starting phase initialised again
						oncount<=oncount+1;
					end if;
					
				else
					count_1KHz <= count_1KHz + '1';		
				end if;
					
					
				
			elsif(counter = x"01" ) then                         -- counter=01 being used to send data from the frame to output one by one
				if(bit_count<= x"0F" and bit_count>= x"00") then
					Dout	<= op_bit(to_integer(unsigned (bit_count)));
					bit_count <= bit_count - '1';
					CS	 	<= '0';	
					LDAC	<= '1';
					
				elsif(bit_count = x"FF") then
					if(oncount= oncycle and offcycle > "0000") then
					counter<=x"05";
					oncount<="0000";
					else
					counter <= x"02";
					end if;
					bit_count <=x"0F";
					Dout 	<= '1';
					CS	 	<= '1';
					LDAC	<= '1';
				end if;
				
			elsif(counter = x"02" ) then		-- load DAC = 0 
				counter <= x"00";
				Dout 	<= '1';	
				CS	 	<= '1';
				LDAC	<= '0';
				
		
		--OFFCYCLE CODE-------------------------------------------------------------------------------------------------
		
		
	     elsif(counter = x"03" ) then
				Dout 	<= '1';                                 -- COUNTER = 03 STATE BEING USED TO LOAD THE FRAME
				CS	 	<= '1';	
				LDAC	<= '1';	
				if(count_1KHz = x"0056") then		-- 0056<-10k
					counter <= x"04";
					count_1KHz <=  x"0000";
					point_count1 <= point_count1 + '1';
					
					if(point_count1>= x"00" and point_count1<= x"16") then
						op_bit(11 downto 00)<=  POINT1(to_integer (unsigned (point_count1)));

					elsif(point_count1 = x"17") then
						op_bit(11 downto 00)<=  POINT1(23);
						offcount<=offcount+'1';
						point_count1 <= x"00";
					end if;
					
				else
					count_1KHz <= count_1KHz + '1';		
				end if;
					
					
				
			elsif(counter = x"04" ) then                         -- counter=04 being used to send data from the frame to output one by one
				if(bit_count<= x"0F" and bit_count>= x"00") then
					Dout	<= op_bit(to_integer(unsigned (bit_count)));
					bit_count <= bit_count - '1';
					CS	 	<= '0';	
					LDAC	<= '1';
					
				elsif(bit_count = x"FF") then
				
					if(offcount=offcycle and oncycle>"0000") then
					counter<=x"02";
					offcount<="0000";
					else
					counter <= x"05";
					end if;
					bit_count <=x"0F";
					Dout 	<= '1';
					CS	 	<= '1';
					LDAC	<= '1';
				end if;
				
			elsif(counter = x"05" ) then		-- load DAC = 0 
				counter <= x"03";
				Dout 	<= '1';	
				CS	 	<= '1';
				LDAC	<= '0';
			end if;	
			
		end if;
   		
	end process	;				 			 		 -- represent behavior
	

		
End Architecture behave;					
					