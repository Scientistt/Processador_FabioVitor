library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity RAMMemory_x16 is
  port (
    clock   : in  std_logic;
    write_memory      : in  std_logic;
    address : in  std_logic_vector(15 downto 0);
    input_data  : in  std_logic_vector(15 downto 0);
    output_data : out std_logic_vector(15 downto 0)
  );
end entity RAMMemory_x16;

architecture skeleton of RAMMemory_x16 is

   --type RAM is array (0 to (2**address'length)-1) of std_logic_vector(input_data'range);
	type RAM is array (0 to 2000) of std_logic_vector(input_data'range);
   signal ram_memory : RAM;
   signal read_address : std_logic_vector(address'range);

begin

	process(clock, write_memory, address, input_data) is
	begin
		if rising_edge(clock) then
			if (write_memory = '1') 
			then
				ram_memory(to_integer(unsigned(address))) <= input_data;
			end if;
			
			-- read_address <= address;
			
		end if;
	end process ;

	output_data <= ram_memory(to_integer(unsigned(address)));

end architecture skeleton;	