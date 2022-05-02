library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity nsubburaj_crosswalk_vhdl is
port ( clk, BUTTON : in std_logic;
		 SGREEN, SYELLOW, SRED: out std_logic;
		 WRED, WGREEN: out std_logic);

end nsubburaj_crosswalk_vhdl;
		 
architecture crosswalkcontroller of nsubburaj_crosswalk_vhdl is
 type state_type is (Green, GreenWait, Yellow, YellowWait, Red, RedWait);
 signal state: state_type;
 signal count: integer range 0 to 10; -- Counter from 0 to 10 
 signal set  : integer := 0;

begin 
process(clk) 
begin
	if rising_edge (clk) then
		if BUTTON = '1' then set <= 1;  -- Push button is set/1
		
		case state is
				when Green =>             -- Green State   
						SGREEN  <= '1';   
						SYELLOW <= '0';
						SRED    <= '0';
						WRED    <= '1';
						WGREEN  <= '0';
						state   <= GreenWait;

				when GreenWait =>			  -- Green wait
						count   <= count + 1;
				if(count = 3) then 
						state   <= Yellow;
						count   <= 0;
				end if;
				
				when Yellow =>            -- Yellow State
						SGREEN  <= '0';   
						SYELLOW <= '1';
						SRED    <= '0';
						WRED    <= '1';
						WGREEN  <= '0';
						state   <= YellowWait;

				when YellowWait =>		  -- Yellow wait
						count   <= count + 1;
				if(count = 5) then
						state   <= Red;
						count   <= 0;
				end if;
				
				when Red =>                -- Red State
						SGREEN  <= '0';   
						SYELLOW <= '0';
						SRED    <= '1';
						WRED    <= '0';
						WGREEN  <= '1';
						state   <= RedWait;

				when RedWait =>			  -- Red wait
						count   <= count + 1;
				if(count = 10) then
						state   <= Green;
						count   <= 0;
		end if;
	end case;
else        								  -- When Pushbutton is not set/0
				case state is 
				when Green =>             -- Green State
						state   <= Green;   
						SGREEN  <= '1';
						SYELLOW <= '0';
				      SRED    <= '0';
						WRED    <= '1';
						WGREEN  <= '0';
						state   <= GreenWait;

				when GreenWait =>			  -- Green wait
						count   <= count + 1;
				if(count = 3) then
						state   <= Yellow;
						count   <= 0;
				end if;
				
				when Yellow =>            -- Yellow State
						SGREEN  <= '0';
						SYELLOW <= '1';
						SRED    <= '0';
						WRED    <= '1';
						WGREEN  <= '0';
						state   <= YellowWait;

				when YellowWait =>		  -- Yellow wait
						count   <= count + 1;
				if(count = 5) then
						state   <= Red;
						count   <= 0;
				end if;
				
				when Red =>               -- Red State
						SGREEN   <= '0';
						SYELLOW  <= '0';
						SRED     <= '1';
						WRED     <= '1';
						WGREEN   <= '0';
						state    <= RedWait;

				when RedWait =>		     -- Red wait
						count <= count + 1;
				if(count = 10) then
						state <= Green;
						count <= 0;
				end if;
						set <= 0;
			end case;
		end if;
	end if;
end process;
end crosswalkcontroller;