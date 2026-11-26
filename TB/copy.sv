# code 1
...
class transaction;
        bit[3:0] data;
        bit[15:0] addr;
        bit[15:0] mem;
  function new(bit[3:0]d,bit[15:0]a,bit[15:0]m);
                   data=d;
                   addr=a;
                   mem=m;
  endfunction : new
endclass : transaction


module test;
transaction trans_h1;
transaction trans_h2;

initial
        begin
                trans_h1=new(1,2,3);
                        $display("trans_h1=%p",trans_h1);

                trans_h2=new(4,5,6);
                        $display("trans_h2=%p",trans_h2);
                trans_h2 = trans_h1;
                        $display("%p %p",trans_h1,trans_h2);

        end
endmodule : test
...


# code 2
...
class transcation;
        bit [3:0]data;
        bit [15:0]addr;
        bit[15:0]mem;

        function new();
                data=4'hA;
                addr=12;
                mem=13;
                $display("%p",data,addr,mem);
        endfunction :new
endclass :transcation

        module sub;
                transcation trans_h1;
                transcation trans_h2;

                initial
                        begin
                                trans_h1=new;
                                $display("trans_h1=%p",trans_h1);
                                trans_h2=new;
                                $display("trans_h2=%p",trans_h2);
                        end
endmodule
...


# code 3
...
class transcation;
  bit [3:0]data;
  bit [15:0]addr;
  bit[15:0]mem;
endclass :transcation

module sub;
    transcation trans_h1;
    transcation trans_h2;
  initial
    begin
        trans_h1=new;
        $display("%p",trans_h1);
        trans_h2=new trans_h1;
        $display("%p",trans_h2);
    end
endmodule
...
